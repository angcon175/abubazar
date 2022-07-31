<?php

namespace App\Http\Controllers\Frontend;

use Auth;
use DateTime;
use Illuminate\Support\Str;
use Modules\Ad\Entities\Ad;
use Illuminate\Http\Request;
use Modules\Brand\Entities\Brand;
use App\Http\Traits\AdCreateTrait;
use Illuminate\Support\Facades\DB;
use Modules\Ad\Entities\AdGallery;
use Modules\Location\Entities\City;
use App\Http\Controllers\Controller;
use Modules\Category\Entities\Category;

class OtpController extends Controller
{
    use AdCreateTrait;

    /**
     * Ad Create step 1.
     * @return void
     */
    public function sendotp(Request $request)
    {
        date_default_timezone_set('Asia/Dhaka');
        $suffix = $request->suffix;
        $phone_number = $request->phone_number;
        $user_id = Auth::user()->id;
        $otp = rand (1000,9999);

        if($suffix == 'phone'){
            $flag = 'ok';
            $msg = 'Otp not send';
            $user = DB::table('customers')->where('id',$user_id)->first();
            $phone = $user->phone;
            $todate = date('Y-m-d');
            $totime = new DateTime("now");

            $code_daily_counter = $user->code_daily_counter;
            $code_send_date = $user->code_send_date;
            $code_exp_time = new DateTime($user->code_exp_time);

            if( ($todate == $code_send_date ) && ($totime > $code_exp_time) && ($phone == $phone_number) ){
                $flag = $msg = 'Otp is expired';
                $flag = 'wrong';
            }else{
                $code_daily_counter = $user->code_daily_counter+1;
            }

            if( ($todate == $code_send_date ) && ($code_daily_counter > 5) ){
                $flag = $msg = 'Please try another day or contact with admin';
                $flag = 'wrong';
            }else{
                $code_daily_counter = $user->code_daily_counter+1;
            }

            if(($todate != $code_send_date) && ($phone == $phone_number) ){
                $code_daily_counter = 1;
            }
            if($phone != $phone_number){
                $code_daily_counter = 1;
            }
            if($flag == 'ok'){
                DB::table('customers')->where('id',$user->id)->update([
                    'phone'             => $phone_number,
                    'code'              => $otp,
                    'code_exp_time'     =>  date("Y-m-d H:i:s",strtotime(date("Y-m-d H:i:s")." +10 minutes")),
                    'code_daily_counter'=> $code_daily_counter,
                    'code_send_date'    => date('Y-m-d'),
                    'is_verified_phone' => 0,
                ]);
                //need to send otp here ...
                $msg = "Otp send successfully";
            }
        }

        if($suffix == 'phone2'){
            $flag = 'ok';
            $msg = 'Otp not send';
            $user = DB::table('customers')->where('id',$user_id)->first();
            $phone = $user->phone2;
            $todate = date('Y-m-d');
            $totime = new DateTime("now");

            $code_daily_counter = $user->code_daily_counter2;
            $code_send_date = $user->code_send_date2;
            $code_exp_time = new DateTime($user->code_exp_time2);

            if( ($todate == $code_send_date ) && ($totime > $code_exp_time) && ($phone == $phone_number) ){
                $flag = $msg = 'Otp is expired';
                $flag = 'wrong';
            }else{
                $code_daily_counter = $user->code_daily_counter2+1;
            }

            if( ($todate == $code_send_date ) && ($code_daily_counter > 5) ){
                $flag = $msg = 'Please try another day or contact with admin';
                $flag = 'wrong';
            }else{
                $code_daily_counter = $user->code_daily_counter2+1;
            }

            if(($todate != $code_send_date) && ($phone == $phone_number) ){
                $code_daily_counter = 1;
            }
            if($phone != $phone_number){
                $code_daily_counter = 1;
            }
            if($flag == 'ok'){
                DB::table('customers')->where('id',$user->id)->update([
                    'phone2'             => $phone_number,
                    'code2'              => $otp,
                    'code_exp_time2'     =>  date("Y-m-d H:i:s",strtotime(date("Y-m-d H:i:s")." +10 minutes")),
                    'code_daily_counter2'=> $code_daily_counter,
                    'code_send_date2'    => date('Y-m-d'),
                    'is_verified_phone2' => 0,
                ]);
                //need to send otp here ...
                $msg = "Otp send successfully";
            }
        }


        $user = DB::table('customers')->where('id',$user->id)->first();
        $response['user'] = $user;
        $response['flag'] = $flag;
        $response['msg']  = $msg;
        $response['otp']  = $otp;

        return json_encode($response);

    }

    public function verifyotp(Request $request)
    {
        date_default_timezone_set('Asia/Dhaka');
        $suffix = $request->suffix;
        $otp_number = $request->otp_number;
        $user = Auth::user();

        if($suffix == 'phone'){
            $phone_number = $user->phone;
            $flag   = 'ok';
            $msg    = 'Otp verification success';
            $otp    = $user->code;
            $totime = new DateTime("now");
            $code_exp_time = new DateTime($user->code_exp_time);

            if( $totime > $code_exp_time){
                $flag = $msg = 'Otp is expired';
                $flag = 'wrong';
            }
            if( $otp_number != $otp){
                $flag = $msg = 'Otp is wrong';
                $flag = 'wrong';
            }
            if($flag == 'ok'){
                DB::table('customers')->where('id',$user->id)->update([
                    'is_verified_phone' => 1,
                ]);
            }
        }


        if($suffix == 'phone2'){
            $phone_number = $user->phone2;
            $flag   = 'ok';
            $msg    = 'Otp verification success';
            $otp    = $user->code2;
            $totime = new DateTime("now");
            $code_exp_time = new DateTime($user->code_exp_time2);

            if( $totime > $code_exp_time){
                $flag = $msg = 'Otp is expired';
                $flag = 'wrong';
            }
            if( $otp_number != $otp){
                $flag = $msg = 'Otp is wrong';
                $flag = 'wrong';
            }
            if($flag == 'ok'){
                DB::table('customers')->where('id',$user->id)->update([
                    'is_verified_phone2' => 1,
                ]);
            }
        }

        $user = DB::table('customers')->where('id',$user->id)->first();
        $response['user'] = $user;
        $response['flag'] = $flag;
        $response['msg']  = $msg;
        $response['phone_number']  = $phone_number;

        return json_encode($response);

    }


}
