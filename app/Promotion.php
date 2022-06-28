<?php

namespace App;

use Illuminate\Database\Eloquent\Model; 
use Auth;

class Promotion extends Model
{
    protected $table 		= 'sls_promotions';
    protected $primaryKey   = 'pk_no'; 
    protected $fillable 	= ['name', 'title'];

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

    
    public function allPromotions() {
        return $this->hasMany('App\PromotionDetails', 'f_promotion_pk_no')->orderBy('pk_no','asc');
    }
}
