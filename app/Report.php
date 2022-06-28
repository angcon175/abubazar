<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use DB;
use Toastr;

class Report extends Model
{
    use RepoResponse;

    protected $table 		    = 'prd_reports';
    protected $primaryKey       = 'pk_no';

   public function postAdReport($request)
    {
     
        DB::beginTransaction();
        
        try {
            $report                       = new Report();
            $report->reason               = $request->reject_reason; 
            $report->email                = $request->email; 
            $report->message              = $request->message; 
            $report->prod_pk_no           = $request->prod_pk_no; 
            $report->save();
        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
          
            return $this->formatResponse(false, 'Report not sent successfully !', 'home');
        }
        DB::commit();
        return $this->formatResponse(true, 'Report sent successfully !', 'home');
    }


    

    
    


}
