<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Auth;
use App\Product;
class Package extends Model
{

    protected $table        = 'ss_packages';
    protected $primaryKey   = 'pk_no';


    public static function boot()
       {
          parent::boot();
          static::creating(function($model)
          {
              $user = Auth::user();
              $model->created_by = $user->id;
          });

          static::updating(function($model)
          {
              $user = Auth::user();
              $model->updated_by = $user->id;
          });
      }


    public function getPackages()
    {
      return Package::where('is_active',1)->where('pk_no','!=',1)->orderBy('order_id','asc')->get();
    } 

    public function getRemainingPost()
    {
      $currentM       = date('m');
      $currentY       = date('Y');
      $my_id          = Auth::user()->id;
      $my_package_id  = Auth::user()->package_id;
      $monthly_post_limit = $remaining_post = 0;

      $current_month_post = Product::whereRaw('YEAR(created_at) = ?',[$currentY])->whereRaw('MONTH(created_at) = ?',[$currentM])->where('customer_pk_no', $my_id)->count();

      $monthly_post = $this->select('ad_limit_in_montrh')->where('pk_no',$my_package_id)->first();
      
      if(!empty($monthly_post)){
        $monthly_post_limit = $monthly_post->ad_limit_in_montrh;
      }

      return $remaining_post = $monthly_post_limit - $current_month_post ; 
     

    } 






}
