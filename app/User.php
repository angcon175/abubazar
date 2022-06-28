<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Traits\RepoResponse;
use Illuminate\Support\Facades\Hash;
use App\Product;
use App\FavouriteProduct;
use App\Shop;
use DB;
use Auth;


class User extends Authenticatable
{
    use Notifiable;
    use RepoResponse;

    // protected $table = 'ss_customers';
    protected $table = 'auths';

    
    protected $fillable = [
        'name', 'email', 'password','provider_id', 'google_id'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function postMyProfileUpdate($request)
    {
       DB::beginTransaction(); 
       try {
            $user                  = User::find(Auth::user()->id);
            $user->seller_type     = $request->seller_type;
            $user->name            = $request->name;
            $user->email           = $request->email;
            $user->mobile1         = $request->mobile;
            $user->city            = $request->city;
            $user->update();

        } catch (\Exception $e) {
            dd($e);
            DB::rollback();
            // $e->getMessage();
            return $this->formatResponse(false, 'Profile not updated successfully !', 'my-dashboard');
        }
        DB::commit();

        return $this->formatResponse(true, 'Profile updated successfully !', 'my-dashboard');
    }


    public function postMyPasswordUpdate($request)
    {
        DB::beginTransaction();

        try {

            $user = User::find(Auth::user()->id);

            if(Hash::check($request->old_password, $user->password)){
                $user->password        = Hash::make($request->password);
                $user->update();
            }else{
                return $this->formatResponse(false, 'Old password is not correct !', 'my-dashboard');
            }
            

        } catch (\Exception $e) {

            DB::rollback();
            return $this->formatResponse(false, 'Password not update successfully !', 'my-dashboard');
        }
        DB::commit();

        return $this->formatResponse(true, 'Password updated successfully !', 'my-dashboard');
    }


    public function shop(){
        return $this->hasOne(Shop::class, 'customer_pk_no', 'id');
    }


    public function postFavoriteAd($request)
    {
        DB::beginTransaction();

        try {
            $uid = Auth::user()->id;
            $check_fav  = FavouriteProduct::where([ 'f_customer_pk_no' => $uid, 'f_prd_pk_no' => $request->adid])->first();
            if (empty($check_fav) ) {
               $fav  = new FavouriteProduct();
               $fav->f_customer_pk_no  = Auth::user()->id;
               $fav->f_prd_pk_no       = $request->adid; 
               $fav->save();
            }else{
                return $this->formatResponse(false, 'The post already added to favourite list !', 'my-dashboard');
            }
          


        } catch (\Exception $e) {

            DB::rollback();
            return $this->formatResponse(false, 'The post not added to favourite list !', 'my-dashboard');
        }
        DB::commit();

        return $this->formatResponse(true, 'The post successfully added to favourite list !', 'my-dashboard');
    }


    

    public function package() {
        return $this->belongsTo('App\Package', 'package_id');
    }

    // public function shop() {
    //     return $this->hasOne('App\Shop', 'customer_pk_no', 'id');
    // }




    



    
}
