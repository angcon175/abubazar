<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use DB;
use Toastr;

class Subscribe extends Model
{
    use RepoResponse;

    protected $table 		    = 'ss_subscribe';
    protected $primaryKey       = 'pk_no';

   public function postSubscribe($request)
    {
     
        DB::beginTransaction();
        
        try {
            $sub                       = new Subscribe();
            $sub->email                = $request->email; 
            $sub->save();
        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
            dd($e);
            return $this->formatResponse(false, 'Something went wrong !', 'home');
        }
        DB::commit();
        return $this->formatResponse(true, 'Subscribed Successfully !', 'home');
    }


    

    
    


}
