<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use App\User;
use App\Product;
use DB;
use Auth;

class Chat extends Model
{
    use RepoResponse;
    protected $table        = 'ss_chat';
    protected $primaryKey   = 'pk_no';
    protected $fillable     = ['prd_pk_no', 'from_pk_no', 'message'];

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


    public function getChatList()
    {

     
 

        try {

            
            $first_text = array();
            $my_id     = Auth::user()->id;

           // $prd_array = array();

            // $query1  = Chat::select('ss_chat.id','ss_chat.prd_pk_no','ss_chat.from_pk_no', 'ss_chat.owner_pk_no','ss_chat.message','ss_chat.created_at','ss_chat.created_by','ss_chat.owner_pk_no','prd_master.thumb','prd_master.ad_title','prd_master.price','prd_master.area_id','prd_master.f_scat_pk_no','prd_master.url_slug','ss_chat.to_pk_no','ss_chat.id as row_pk')
            // ->leftJoin('prd_master','prd_master.pk_no', '=', 'ss_chat.prd_pk_no')
            // ->where('ss_chat.to_pk_no', $my_id)
            // ->groupBy('ss_chat.from_pk_no')
            // ->groupBy('ss_chat.prd_pk_no')
            // ->get();

            // if (!empty($query1)) {
            //     array_push($prd_array, $query1->prd_pk_no);
            //  } 

            // $query2  = Chat::select('ss_chat.id','ss_chat.prd_pk_no','ss_chat.from_pk_no', 'ss_chat.owner_pk_no','ss_chat.message','ss_chat.created_at','ss_chat.created_by','ss_chat.owner_pk_no','prd_master.thumb','prd_master.ad_title','prd_master.price','prd_master.area_id','prd_master.f_scat_pk_no','prd_master.url_slug','ss_chat.to_pk_no','ss_chat.id as row_pk')
            // ->leftJoin('prd_master','prd_master.pk_no', '=', 'ss_chat.prd_pk_no')
            // ->where('ss_chat.from_pk_no', $my_id)
            // ->groupBy('ss_chat.to_pk_no')
            // ->groupBy('ss_chat.prd_pk_no')
            // ->get();
            
            // $result = $query1->union($query2);

            // dd($result);
            

            // if (!empty($query2)) {
            //     array_push($prd_array, $query2->prd_pk_no);
            //  } 


            // $query2  = Chat::select('ss_chat.id','ss_chat.prd_pk_no','ss_chat.from_pk_no', 'ss_chat.owner_pk_no','ss_chat.message','ss_chat.created_at','ss_chat.created_by','ss_chat.owner_pk_no','prd_master.thumb','prd_master.ad_title','prd_master.price','prd_master.area_id','prd_master.f_scat_pk_no','prd_master.url_slug')
            //  ->leftJoin('prd_master','prd_master.pk_no', '=', 'ss_chat.prd_pk_no')
            // ->where('ss_chat.from_pk_no', $my_id)
            // ->limit(1); 

            // $uquery = $query1->union($query2);
            // $result = $uquery->groupBy('prd_pk_no')->toSql();
           // if(!empty($prd_array)){
               // $prd_array = array_unique($prd_array);
            
               // $prd_array =  array_map( 'trim', explode( ",",$prd_array ) );

            //}
            // $prd_array = array(13);

            // $result  = Chat::select('ss_chat.id','ss_chat.prd_pk_no','ss_chat.from_pk_no', 'ss_chat.owner_pk_no','ss_chat.message','ss_chat.created_at','ss_chat.created_by','ss_chat.owner_pk_no','prd_master.thumb','prd_master.ad_title','prd_master.price','prd_master.area_id','prd_master.f_scat_pk_no','prd_master.url_slug')
            //  ->leftJoin('prd_master','prd_master.pk_no', '=', 'ss_chat.prd_pk_no')
            // ->whereIn('ss_chat.prd_pk_no', $prd_array)
            // ->groupBy('ss_chat.prd_pk_no')
            // ->groupBy('ss_chat.from_pk_no')
            // ->get(); 
// SELECT * ,  MAX(id) FROM `ss_chat` WHERE to_pk_no = 11 or from_pk_no = 11 GROUP by `prd_pk_no` 

// SELECT t1.* FROM ss_chat t1
//   JOIN (SELECT prd_pk_no, MAX(id) id FROM ss_chat GROUP BY prd_pk_no) t2
//     ON t1.id = t2.id AND t1.prd_pk_no = t2.prd_pk_no;

// $result = Chat::select('ss_chat.id','ss_chat.prd_pk_no','ss_chat.from_pk_no', 'ss_chat.to_pk_no','ss_chat.message','ss_chat.created_at','ss_chat.created_by','ss_chat.owner_pk_no','prd_master.thumb','prd_master.ad_title','prd_master.price','prd_master.area_id','prd_master.f_scat_pk_no','prd_master.url_slug')
// ->leftJoin('prd_master','prd_master.pk_no', '=', 'ss_chat.prd_pk_no')
// ->where('ss_chat.to_pk_no',$my_id)
// ->orWhere('ss_chat.from_pk_no',$my_id)
// ->groupBy('ss_chat.prd_pk_no')
// ->orderBy('ss_chat.created_at','DESC')
// ->orderBy('ss_chat.id', 'DESC')
// ->get();

            $result = DB::SELECT("SELECT ss_chat.id, ss_chat.prd_pk_no, ss_chat.from_pk_no, ss_chat.owner_pk_no, ss_chat.message, ss_chat.created_at, ss_chat.created_by, ss_chat.owner_pk_no, ss_chat.to_name,ss_chat.from_name, prd_master.thumb, prd_master.ad_title, prd_master.price, prd_master.area_id, prd_master.f_scat_pk_no, prd_master.url_slug, ss_chat.to_pk_no, ss_chat.id as row_pk FROM ss_chat JOIN prd_master ON prd_master.pk_no =  ss_chat.prd_pk_no where id IN ( SELECT max(id) FROM ss_chat WHERE to_pk_no = $my_id or from_pk_no = $my_id group by prd_pk_no ) ORDER by ss_chat.id DESC ");


      

            if(!empty($result)){
                foreach ($result as $key => $value) {
                    $post_id = $value->prd_pk_no;
                    if($key == 0 ){

                        $to_pk_no   = $value->from_pk_no == $my_id ? $value->to_pk_no : $value->from_pk_no;
                        $from_pk_no = $value->to_pk_no == $my_id ? $value->from_pk_no : $value->to_pk_no;

                        Chat::where(['from_pk_no' => $to_pk_no,'prd_pk_no' => $value->prd_pk_no, 'to_pk_no' => $my_id ])->update(['is_seen' => 1]);
                       
                        
                        $first_text = Chat::where(function($q) use ($my_id,$post_id,$to_pk_no) {
                            $q->where('from_pk_no', $my_id)
                            ->where('to_pk_no', $to_pk_no)
                            ->where('prd_pk_no', $post_id);
                        })
                    
                        ->orWhere(function($q) use ($my_id,$post_id,$from_pk_no) {
                            $q->where('to_pk_no', $my_id)
                            ->where('from_pk_no', $from_pk_no)
                            ->where('prd_pk_no', $post_id);
                        })
                        ->orderBy('ss_chat.created_at','ASC')
                        ->get();

                        // dd($first_text);
                    }

                    if ($value->thumb) {
                        if(file_exists( public_path().'/uploads/product/'.$value->prd_pk_no.'/thumb/'.$value->thumb )){
                            $value->img_path_thumb = asset('/uploads/product/'.$value->prd_pk_no.'/thumb/'.$value->thumb);
                        }else{
                           $value->img_path_thumb = asset('/assets/img/default_thumb.png'); 
                        }
                        
                    }else{
                        $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }
                }
            }

            $data['first_text'] = $first_text;
            $data['data']       = $result;


        } catch (\Exception $e) {
          
            return $this->formatResponse(false, 'Data not found', 'chat');
        }

        
        return $this->formatResponse(true, 'Data found successfully !', 'chat',$data);
    }


    public function postChat($request) 
    {
        DB::beginTransaction();

        try {

        $uid    = Auth::user()->id; 
        $text   = new Chat();

        $text->prd_pk_no        = $request->postid ;
        $text->to_pk_no         = $request->to_user ;
        $text->from_pk_no       = $uid ;
        $text->message          = $request->message ;
        $text->save(); 

        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
            return $this->formatResponse(false, $e, 'chat');
        }

        DB::commit(); 
        return $this->formatResponse(true, 'Your message send successfully !', 'chat');
        
    }


    public function getChat($post_id,$to) 
    {
    
        try {
            $data = array();

            // $product    = Product::select('pk_no','customer_pk_no')->where('pk_no',$pid)->first();
            // $post_by    = $product->customer_pk_no;  
            $my_id      = Auth::user()->id; 
            $product    = Chat::select('prd_pk_no','owner_pk_no','from_pk_no','to_pk_no')
            ->where('prd_pk_no',$post_id)
            ->where('to_pk_no',$to)
            ->first();

            // $to_pk_no   = $product->from_pk_no == $my_id ? $product->to_pk_no : $product->from_pk_no;
            // $from_pk_no = $product->to_pk_no == $my_id ? $product->from_pk_no : $product->to_pk_no;
            
            // $all_text   = Chat::where(function($q) use ($my_id,$post_id) {
            //                 $q->where('to_pk_no', $my_id)
            //                 ->where('prd_pk_no', $post_id);
            //             })
            //             ->orWhere(function($q) use ($my_id,$post_id) {
            //                 $q->where('from_pk_no', $my_id)
            //                 ->where('prd_pk_no', $post_id);
            //             })
            //             ->orderBy('created_at','asc')
            //             ->get();

            $all_text = Chat::where(function($q) use ($my_id,$post_id,$to) {
                $q->where('from_pk_no', $my_id)
                ->where('to_pk_no', $to)
                ->where('prd_pk_no', $post_id);
            })
            
            ->orWhere(function($q) use ($my_id,$post_id,$to) {
                $q->where('from_pk_no', $to)

            ->where('to_pk_no', $my_id)
            ->where('prd_pk_no', $post_id);
            })
            ->orderBy('ss_chat.created_at','ASC')
            ->get();
            

            $data['data']    = $all_text;
            $data['post_by'] = $product->owner_pk_no;

           // Chat::where(['from_pk_no' => $to,'prd_pk_no' => $post_id, 'to_pk_no' => $my_id ])->update(['is_seen' => 1]);

                            // dd($all_text);

            //                    $meg_by     = Auth::user()->id;
            // $all_text   = Chat::where('prd_pk_no', $pid)
            //                 ->where(function($q) use ($meg_by,$post_by) {
            //                     $q->where('from_pk_no', $meg_by)
            //                     ->orWhere('owner_pk_no', $post_by);
            //                 })
            //                 // ->where('from_pk_no' => $meg_by)
            //                 // ->orWhere('owner_pk_no',$post_by)
            //                 ->orderBy('created_at','asc')
            //                 ->get();


        } catch (\Exception $e) {
          // dd($e);
            return $this->formatResponse(false, 'Data not found', 'chat');
        }

     
        return $this->formatResponse(true, 'Data found successfully !', 'chat',$data);

    }


    public function owner() 
    {
        return $this->belongsTo('App\User', 'owner_pk_no');
    }

    public function product() 
    {
        return $this->belongsTo('App\Product', 'prd_pk_no');
    }






    public function customer() 
    {
        return $this->belongsTo('App\User', 'from_pk_no');
    }
   


}
