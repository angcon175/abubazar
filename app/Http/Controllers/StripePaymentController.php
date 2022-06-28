<?php
   
namespace App\Http\Controllers;

use App\Models\Auth as ModelsAuth;
use App\Models\User;
use Illuminate\Http\Request;
use Session;
use Stripe;
use Toastr;
use Auth;
use App\Payments;
use DB;
use Carbon\Carbon;
use App\Package;
   
class StripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
        return view('package.payment.stripe');
    }
  
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
                "amount" => Session::get('price'),
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Package Payment." 
        ]);

        $user = ModelsAuth::find(Auth::user()->id);
        $user->package_id = $request->package_id;
        $user->update();
        $package = Package::where('pk_no',Session::get('pakid'))->first();
        $packageExpired = Carbon::now()->addMonths($package->package_duration);
        DB::beginTransaction();
            try {
                /*Insert payment data to my database table*/
                $payment                = new Payments(); 
                $payment->f_customer_pk_no    = Auth::user()->id ;
                $payment->status            = 'VALID' ;
                $payment->tran_date         = date('Y-m-d H:i:s');
                $payment->amount            = Session::get('price') ?? null ;
                $payment->card_type         = "stripe" ?? null ;
                $payment->payment_at        = date('Y-m-d H:i:s') ?? null ;
                $payment->f_prod_pk_no    = null;
                $payment->f_promotion_details_no    = null;
                $payment->payment_type  = 'package';
                $payment->validated_on      = date('Y-m-d H:i:s') ?? null ;
                $payment->f_package_pk_no = Session::get('pakid');
                $payment->expired_on        = $packageExpired ?? null ;
                $payment->add_limit        = $package->ad_limit_in_montrh ?? null ;
                $payment->save();
            
            } catch (\Exception $e) {
                DB::rollback();
                Toastr::error('Failed to payment with Paypal', 'Error', ["positionClass" => "toast-top-right"]);
                return redirect()->route('my-dashboard');
            
            }

            DB::commit();
  
        Toastr::success('Package changed successfully.', 'Success', ["positionClass" => "toast-top-right"]);
        return redirect('/my-dashboard');
    }
}