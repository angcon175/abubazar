<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use App\User;
use App\Brand;
use App\Product;
use App\ProductImg;
use App\ProductModel;
use App\City;
use App\Area;
use App\Category;
use DB;
use Auth;
use Image;

class Getproduct extends Model
{
    use RepoResponse;

    protected $table 		    = 'prd_master';
    protected $primaryKey       = 'pk_no';
    protected $fillable         = ['ad_title'];


    

    public function getAdsList()
    {
        
    }

    
    


}
