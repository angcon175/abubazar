<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use DB;
use Toastr;

class Contact extends Model
{
    use RepoResponse;

    protected $table 		    = 'ss_contact';
    protected $primaryKey       = 'pk_no';

   public function postContact($request)
    {
     
        DB::beginTransaction();
        
        try {
            $con                       = new Contact();
            $con->name                 = $request->name; 
            $con->email                = $request->email; 
            $con->subject              = $request->subject; 
            $con->message              = $request->message; 
            $con->save();
        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
            dd($e);
            return $this->formatResponse(false, 'Message not sent !', 'contact-us');
        }
        DB::commit();
        return $this->formatResponse(true, 'Message sent successfully !', 'contact-us');
    }


    

    
    


}
