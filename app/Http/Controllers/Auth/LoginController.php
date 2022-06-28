<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Socialite;
use App\User;
use Auth;
use Notification;
use App\Notifications\WellComeNotification;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
    protected $redirectTo = RouteServiceProvider::HOME;

   
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm() 
    {

        return view ('auth.login');
    }


    public function redirectTo()
    {
        if (request()->has('referer')) 
        {
            $this->redirectTo = request()->get('referer');
        }

        return $this->redirectTo ?? '/';
    }


    public function redirectToProvider()
    {
        return Socialite::driver('facebook')->redirect();
    }


    public function handleProviderCallback()
    {
        if(request()->get('error') ) {

            return redirect()->to('/');
        }

        $getInfo = Socialite::driver('facebook')->user();

        $user = $this->createUser($getInfo);
        auth()->login($user);
        //send email
           $user = Auth::user();
           $password = 'N/A';
           
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
           /*end send mail*/
        return redirect()->to('/');
        
    }


    public function createUser($getInfo)
       {
           $user = User::where('email', $getInfo->email)->first();
           if (!$user) {
               $user = User::create([
                   'name' => $getInfo->name,
                   'email' => $getInfo->email,
                   //'provider' => $provider,
                   //'provider_id' => $getInfo->id
               ]);
           }
           return $user;
       }

    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }


    public function handleGoogleCallback()
    {        
        try {
            $getInfo = Socialite::driver('google')->user();
            $user = $this->createUser($getInfo);
            Auth::login($user);
            return redirect('/');

            //$finduser = User::where('google_id', $user->id)->first();

            /*if($finduser){
                Auth::login($finduser);
                return redirect('/');
            }else{

                $newUser = User::create([

                    'name' => $user->name, 
                    'email' => $user->email, 
                    'google_id'=> $user->id,
                    'password' => encrypt('12345678')

                ]);

                Auth::login($newUser);

                return redirect('/');

            }*/

    

        } catch (Exception $e) {

             return redirect('/');

        }
        
    }



   



}
