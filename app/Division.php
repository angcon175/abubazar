<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Auth;
class Division extends Model
{

    protected $table        = 'ss_divisions';
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


  public function country() {
      return $this->belongsTo('App\Country', 'country_pk_no');
  }

  public function getAlldivisions()
  {
    $result = Division::orderBy('order_id','asc')->get(); 
    if(!$result->isEmpty()){
        foreach ($result as $key => $value) {
            if ($value->image) {
                $value->image_path = asset('/uploads/division/'.$value->image);
            }else{
                $value->image_path = asset('assets/images/location/1.png');
            }
        }
    }
    return $result;

  }

  public function getDivision()
  {
    return Division::where('is_active',1)->orderBy('order_id','asc')->get();
  }

  public function getDivisionCombo($type = null){
    $response = [];
    $data = Division::where('is_active',1)->orderBy('order_id','asc')->get();
    
    if ($type == 'list') {
      $response = $data;
    }else{
      if ($data && count($data) > 0 ) {
        foreach ($data as $key => $value) {
          $response[$value->pk_no] = $value->name;
        }
      }
    }
   
    return $response;
  }




}
