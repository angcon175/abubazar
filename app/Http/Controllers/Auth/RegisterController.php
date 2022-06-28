<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Session;
use Notification;
use Auth;
use Toastr;
use App\Notifications\WellComeNotification;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;
    
    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;


  protected function redirectTo()
    {

        if (Auth::user()) {

           $user = Auth::user();
           $password = Session::get('secret');
           
           $details = [
               'subject' => 'Welcome to Adsclassi',
               'greeting' => 'Hi '.$user->name.',',
               'body' => 'Welcome to Dalabazar.com',
               'email' => 'Your email is : '.$user->email,
               'password' => 'Your Password is : '.$password,
               'thanks' => 'Thank you for using Adsclassi.com',
               'actionText' => 'Visit Our Site',
               'actionURL' => url('/'),
               'user_id' => $user->id
           ];
           
           Notification::send($user, new WellComeNotification($details));
        }


        Toastr::success('Thanks for your Signup, Now you can like, comments on any product', 'Success', ["positionClass" => "toast-top-right"]);

        if(request()->input('referer') == null){
            return url()->previous();
        }else{
            $draft_comm  = request()->get('draft_comm');
            Session::put('draft_comm', $draft_comm);
            return request()->get('referer');
        }
        
    }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:ss_customers'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            //'mobile' => ['required', 'string', 'max:11'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        Session::put('secret', $data['password']);
         // $user = User::where('email', $data['email'])->first();
         //   if (!$user) {
         //       $user = User::create([
         //           'name' => $data['name'],
         //           'email' => $data['email'],
         //           //'mobile' => $data['mobile'],
         //           'password' => Hash::make($data['password']),
         //       ]);
         //   }
         //   return $user;

        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            //'mobile' => $data['mobile'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
