<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;

class ProductImg extends Model
{
    protected $table 		= 'prd_img_library';
    protected $primaryKey   = 'pk_no';



    protected $fillable = [ 'img_name', 'serial_no'];




  
    
}
