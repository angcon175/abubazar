<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;

class JobPreference extends Model
{
    protected $table        = 'prod_job_preference';
    protected $primaryKey   = 'pk_no';

   
    protected $fillable = ['prod_pk_no'];


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
