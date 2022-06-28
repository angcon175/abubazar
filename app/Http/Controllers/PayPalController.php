<?php
  
namespace App\Http\Controllers;

use App\Models\Auth as ModelsAuth;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\ExpressCheckout;
use Toastr;
use Auth;
use Session;
use App\Payments;
use DB;
use Carbon\Carbon;
use App\Package;
   
class PayPalController extends Controller
{
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function paypal_view(){
        return view('products.welcome');
    }
   
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function cancel()
    {
        dd('Your payment is canceled. You can create cancel page here.');
    }
  
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function success(Request $request)
    {
        $provider = new ExpressCheckout; 
        $response = $provider->getExpressCheckoutDetails($request->token);
        $user = ModelsAuth::find(Auth::user()->id);
        $user->package_id = Session::get('pakid');
        $user->update();
        $package = Package::where('pk_no',Session::get('pakid'))->first();
        $packageExpired = Carbon::now()->addMonths($package->package_duration);
        DB::beginTransaction();
            try {
                /*Insert payment data to my database table*/
                $payment                = new Payments(); 
                $payment->f_customer_pk_no    = Auth::user()->id ;
                $payment->status            = 'VALID' ;
                $payment->tran_id           = $request->PayerID ?? null;
                $payment->val_id            = $request->token ?? null ;
                $payment->tran_date         = date('Y-m-d H:i:s');
                $payment->amount            = Session::get('price') ?? null ;
                $payment->card_type         = "PayPal" ?? null ;
                $payment->payment_at        = date('Y-m-d H:i:s') ?? null ;
                $payment->f_prod_pk_no      = null;
                $payment->f_promotion_details_no    = null;
                $payment->validated_on      = date('Y-m-d H:i:s') ?? null ;
                $payment->payment_type      = 'package';
                $payment->f_package_pk_no   = Session::get('pakid');
                $payment->expired_on        = $packageExpired ?? null ;
                $payment->add_limit        = $package->ad_limit_in_montrh ?? null ;
                $payment->save();
            
            } catch (\Exception $e) {
                DB::rollback();
                Toastr::error('Failed to payment with Paypal', 'Error', ["positionClass" => "toast-top-right"]);
                return redirect()->route('my-dashboard');
            
            }

            DB::commit();

        if (in_array(strtoupper($response['ACK']), ['SUCCESS', 'SUCCESSWITHWARNING'])) {
            // return redirect('')
            // dd('Your payment was successfully. You can create success page here.');
            Toastr::success('Package changed successfully.', 'Success', ["positionClass" => "toast-top-right"]);
            return redirect('/my-dashboard');
        }
  
        
    }
}