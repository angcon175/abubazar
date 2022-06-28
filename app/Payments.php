<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Auth;
use App\Product;
class Payments extends Model
{

    protected $table            = 'sls_payments';
    protected $primaryKey       = 'pk_no'; 
    protected $fillable         = ['customer_pk_no', 'amount'];


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


    






}
