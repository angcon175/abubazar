<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    protected $table        = 'ss_areas';
    protected $primaryKey   = 'pk_no';

   
    protected $fillable = ['city_division', 'name'];


    public function city() {
        return $this->belongsTo('App\City', 'city_pk_no');
    }

    public function division() {
        return $this->belongsTo('App\Division', 'division_pk_no');
    }

    public function getArea()
    {
    	return Area::where('is_active',1)->orderBy('order_id','asc')->get();
    }
   


}
