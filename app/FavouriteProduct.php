<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Auth;

class FavouriteProduct extends Model
{

    protected $table        = 'prd_favourites';
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


 





}
