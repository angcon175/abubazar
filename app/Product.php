<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\RepoResponse;
use App\User;
use App\Brand;
use App\ProductImg;
use App\ProductModel;
use App\City;
use App\Area;
use App\Category;
use App\Models\Auth as ModelsAuth;
use DB;
use Auth;
use Image;

class Product extends Model
{
    use RepoResponse;

    protected $table 		    = 'prd_master';
    protected $primaryKey       = 'pk_no';
    protected $fillable         = ['ad_title'];




    public function checkMobileNumber($request)
    {
        $resp = true ;

        $mobile1 = $request->mobile1;
        $mobile2 = $request->mobile2;

        $check_mobile1 = ModelsAuth::where(['id' => Auth::user()->id, 'mobile1' => $mobile1, 'mobile1_is_verified' => 1 ])->first();
        if(empty($check_mobile1)){ $resp = false; }

        if(!empty($mobile2)){
            $check_mobile2 = ModelsAuth::where(['id' => Auth::user()->id, 'mobile2' => $mobile2, 'mobile2_is_verified' => 1 ])->first();

            if(empty($check_mobile2)){ $resp = false; }
        }

        return $resp;

    }

    public function checkImageExtension()
    {
        if($request->file('productimg')){

            $extn = array('jpeg','jpg','png','gif','webp','bmp','jfif');
            $oriExtn = strtolower($request->file('productimg')->getClientOriginalExtension());

            if(!in_array($oriExtn, array_map('strtolower', $extn))){

             Toastr::error('Your file extension is not suported', 'Error', ["positionClass" => "toast-top-right"]);
             return redirect()->back()->withErrors($validator)->withInput();
            }

        }
    }



    public function postAdGeneral($request)
    {

        DB::beginTransaction();

        try {
            $prod               = new Product();
            $brand              = Brand::find($request->brand);

            $area               = Area::find($request->area);
            $cat                = Category::find($request->scat_pk_no);

            if($request->prod_model){
                $prod_model     = ProductModel::find($request->prod_model);
            }

            if ($request->fuel_type){
                $fuel_type = implode(', ', $request->fuel_type);
            }

            if ($request->prod_feature){
                $prod_feature = implode(', ', $request->prod_feature);
            }

            $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no ;

            $prod->ad_type              = $request->sell_type;
            $prod->prod_type            = $request->product_type;
            $prod->main_category        = 'general';
            $prod->f_cat_pk_no          = $cat->parent_id;
            $prod->f_scat_pk_no         = $request->scat_pk_no;
            $prod->ad_title             = $request->title ;
            $prod->area_id              = $area->pk_no ;
            $prod->city_division_pk_no  = $city_division_pk_no ;
            $prod->customer_pk_no       = Auth::user()->id ;
            $prod->city_division        = $area->city_division ;
            $prod->url_slug             = $this->urlSlug($request->title) ;

            if(($request->brand) && ($brand != null)){
                $prod->f_brand              = $request->brand ;
                $prod->brand_name           = $brand->name ;
            }else{
                $prod->brand_name            = $request->brand ;
            }

            $prod->authenticity         = $request->authenticity ;

            if(($request->prod_model) && ($prod_model != null) ){
                $prod->f_model              = $request->prod_model ;
                $prod->model_name           = $prod_model->name ;
            }elseif ($request->custom_model) {
                $prod->model_name           = $request->custom_model ;
            }else{
                 $prod->model_name           = $request->prod_model ;
            }

            $prod->prod_feature         = $prod_feature ?? null ;
            $prod->price                = $request->price ;
            // $prod->price_unit        = $request-> ;
            $prod->is_negotiable        = $request->price_negotiable ;
            $prod->description          = $request->description ;
            $prod->edition              = $request->edition ;
            // $prod->authenticity      = $request-> ;
            $prod->using_condition      = $request->using_condition ;
            $prod->mobile1              = $request->mobile1 ;
            $prod->mobile2              = $request->mobile2 ;
            $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
            $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
            $prod->model_year           = $request->model_year ;
            $prod->registration_year    = $request->registration_year ;
            $prod->transmission         = $request->transmission ;
            $prod->address              = $request->address ;
            $prod->body_type            = $request->body_type ;
            $prod->fuel_type            = $fuel_type ?? null ;
            $prod->engine_capacity      = $request->engine_capacity ;
            $prod->kilometers_run       = $request->kilometers_run ;
            // $prod->bed_no            = $request-> ;
            // $prod->bath              = $request-> ;
            // $prod->land_size         = $request-> ;
            // $prod->land_unit         = $request-> ;
            // $prod->house_size        = $request-> ;
            // $prod->house_unit        = $request-> ;
            // $prod->property_address  = $request-> ;
            // $prod->flat_size         = $request-> ;
            // $prod->gender            = $request-> ;
            $prod->user_name            = $request->name ;
            $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
            $prod->save();
            $user = ModelsAuth::find(Auth::user()->id);
            $user->seller_type = $request->seller_type;
            $user->address = $request->address;
            $user->total_post = $user->total_post+1;
            $user->update();
            
            $request->prod_pk_no                 = $prod->pk_no;

            //product photo
            if ($request->file('image')) {
                $this->insertPhoto($request);
            }

        } catch (\Exception $e) {
            DB::rollback();
            // dd($e);

            return $this->formatResponse(false, 'Your post not added successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post added successfully !', 'my-ads');
    }


    public function updatePostGeneral($request, $id)
    {
        DB::beginTransaction();
        try {
            $prod               = Product::find($id);
            $brand              = Brand::find($request->brand);
            $area               = Area::find($request->area);
            $cat                = Category::find($request->scat_pk_no);

            if($request->prod_model){
                $prod_model     = ProductModel::find($request->prod_model);
            }

            if ($request->fuel_type){
                $fuel_type = implode(', ', $request->fuel_type);
            }

            if ($request->prod_feature){
                $prod_feature = implode(', ', $request->prod_feature);
            }

            $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no ;

            $prod->ad_type              = $request->sell_type;
            $prod->prod_type            = $request->product_type;
            $prod->main_category        = 'general';
            $prod->f_cat_pk_no          = $cat->parent_id;
            $prod->f_scat_pk_no         = $request->scat_pk_no;
            $prod->ad_title             = $request->title ;
            $prod->area_id              = $area->pk_no ;
            $prod->city_division_pk_no  = $city_division_pk_no ;
            $prod->customer_pk_no           = Auth::user()->id ;
            $prod->city_division        = $area->city_division ;
            $prod->url_slug             = $this->urlSlug($request->title) ;

            if(($request->brand) && ($brand != null)){
                $prod->f_brand              = $request->brand ;
                $prod->brand_name           = $brand->name ;
            }else{
                $prod->brand_name            = $request->brand ;
            }

            $prod->authenticity         = $request->authenticity ;

             if(($request->prod_model) && ($prod_model != null) ){
                $prod->f_model              = $request->prod_model ;
                $prod->model_name           = $prod_model->name ;
            }elseif ($request->custom_model) {
                $prod->model_name           = $request->custom_model ;
            }

            $prod->prod_feature         = $prod_feature ?? null ;
            $prod->price                = $request->price ;
            $prod->is_negotiable        = $request->price_negotiable ;
            $prod->description          = $request->description ;
            $prod->edition              = $request->edition ;
            $prod->using_condition      = $request->using_condition ;
            $prod->mobile1              = $request->mobile1 ;
            $prod->mobile2              = $request->mobile2 ;
            $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
            $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
            $prod->model_year           = $request->model_year ;
            $prod->registration_year    = $request->registration_year ;
            $prod->transmission         = $request->transmission ;
            $prod->address              = $request->address ;
            $prod->body_type            = $request->body_type ;
            $prod->fuel_type            = $fuel_type ?? null ;
            $prod->engine_capacity      = $request->engine_capacity ;
            $prod->kilometers_run       = $request->kilometers_run ;
            $prod->user_name            = $request->name ;
            $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
            $prod->is_active            = 0;
            $prod->update();
            $request->prod_pk_no                 = $prod->pk_no;
            User::where('id', Auth::user()->id)->update(['seller_type' => $request->seller_type, 'address' => $request->address]);
            //product photo
            if ($request->file('image')) {
                $this->insertPhoto($request);
            }

        } catch (\Exception $e) {
            DB::rollback();
            return $this->formatResponse(false, 'Your post not updated successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post updated successfully !', 'my-ads');
    }


    public function updatePostProperty($request, $id)
    {
       DB::beginTransaction();
       try {
            $prod               = Product::find($id);
            $area               = Area::find($request->area);
            $cat                = Category::find($request->scat_pk_no);

            if ($request->prod_feature){
                $prod_feature = implode(', ', $request->prod_feature);
            }
            $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no ;

            $prod->ad_type              = $request->sell_type;
            $prod->prod_type            = $request->product_type;
            $prod->main_category        = 'property';
            $prod->f_cat_pk_no          = $cat->parent_id;
            $prod->f_scat_pk_no         = $request->scat_pk_no;
            $prod->ad_title             = $request->title ;
            $prod->area_id              = $area->pk_no ;
            $prod->city_division_pk_no  = $city_division_pk_no ;
            $prod->customer_pk_no           = Auth::user()->id ;
            $prod->city_division        = $area->city_division ;
            $prod->url_slug             = $this->urlSlug($request->title) ;
            $prod->price                = $request->price ;
            $prod->is_negotiable        = $request->price_negotiable ;
            $prod->authenticity         = $request->authenticity ;
            $prod->bed_no               = $request->bed ;
            $prod->bath_no              = $request->bath ;
            $prod->prod_feature         = $prod_feature ?? null ;
            $prod->house_size           = $request->size ;
            $prod->house_unit           = $request->property_unit ;
            $prod->description          = $request->description ;
            $prod->using_condition      = $request->using_condition ;
            $prod->mobile1              = $request->mobile1 ;
            $prod->mobile2              = $request->mobile2 ;
            $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
            $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
            $prod->address              = $request->address ;
            $prod->user_name            = $request->name ;
            $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
            $prod->is_active            = 0;
            $prod->update();
            $request->prod_pk_no        = $id;
            User::where('id', Auth::user()->id)->update(['seller_type' => $request->seller_type, 'address' => $request->address]);
       //product thumb upload
       if ($request->file('image')) {
           $this->insertPhoto($request);
       }

       } catch (\Exception $e) {
           DB::rollback();
           return $this->formatResponse(false, 'Your post not updated successfully !', 'my-ads');
       }
       DB::commit();
       return $this->formatResponse(true, 'Your post updated successfully !', 'my-ads');
    }



    public function updatePostJob($request, $id)
    {
        DB::beginTransaction();

        try {

        $prod                       = Product::find($id);
        $area                       = Area::find($request->area);
        $cat                        = Category::find($request->scat_pk_no);
        $city_division_pk_no        = $area->city_pk_no ?? $area->division_pk_no ;

        $prod->ad_type              = 'jobs';
        $prod->prod_type            = $request->product_type;
        $prod->main_category        = 'jobs';
        $prod->f_cat_pk_no          = $cat->parent_id;
        $prod->f_scat_pk_no         = $request->scat_pk_no;
        $prod->ad_title             = $request->title ;
        $prod->area_id              = $area->pk_no ;
        $prod->city_division_pk_no  = $city_division_pk_no ;
        $prod->customer_pk_no           = Auth::user()->id ;
        $prod->city_division        = $area->city_division ;
        $prod->url_slug             = $this->urlSlug($request->title) ;
        $prod->price                = $request->price ;
        $prod->price_to             = $request->price_to ;
        $prod->is_negotiable        = $request->price_negotiable ;
        $prod->description          = $request->description ;
        $prod->mobile1              = $request->mobile1 ;
        $prod->mobile2              = $request->mobile2 ;
        $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
        $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
        $prod->address              = $request->address ;
        $prod->user_name            = $request->name ;
        $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
        $prod->is_active            = 0;

        if ($request->file('company_logo')) {
            $image             = $request->file('company_logo');
            $log_name          = rand(1,99999).'.'.$image->getClientOriginalExtension();
            $destinationPath   = public_path('/uploads/product/'.$id.'/logo');

            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0755, true);
            }
            $image->move($destinationPath, $log_name);

            $prod->logo = $log_name;
        }

        $prod->update();

        $job_pref = JobPreference::where('prod_pk_no',$id)->first();
        $job                        = JobPreference::find($job_pref->pk_no);
        $job->mini_qualification    = $request->mini_qualification;
        $job->req_expriance         = $request->req_expriance;
        $job->edu_specialization    = $request->edu_specialization;
        $job->skill                 = $request->skill;
        $job->receive_applications_via = $request->receive_applications_via;
        $job->max_age               = $request->max_age;
        $job->deadline              = date('Y-m-d',strtotime($request->deadline));
        $job->application_requirements = $request->pk_no;
        $job->business_function     = $request->business_function;
        $job->role_designation      = $request->role ;
        $job->total_vacancies       = $request->total_vacancies ;
        $job->pref_gender           = $request->pref_gender ;
        $job->update();
        // dd($job);


        $request->prod_pk_no        = $id;
        User::where('id', Auth::user()->id)->update(['seller_type' => $request->seller_type, 'address' => $request->address]);
        //product thumb upload
        if ($request->file('image')) {
            $this->insertPhoto($request);
        }

        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
            //dd($e);
            return $this->formatResponse(false, 'Your post not update successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post update successfully !', 'my-ads');
    }



    public function postAdJob($request)
    {

        DB::beginTransaction();

        try {

        $prod               = new Product();
        $area               = Area::find($request->area);
        $cat                = Category::find($request->scat_pk_no);
        $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no ;

        $prod->ad_type              = 'jobs';
        $prod->prod_type            = $request->product_type;
        $prod->main_category        = 'jobs';
        $prod->f_cat_pk_no          = $cat->parent_id;
        $prod->f_scat_pk_no    = $request->scat_pk_no;
        $prod->ad_title             = $request->title ;
        $prod->area_id              = $area->pk_no ;
        $prod->city_division_pk_no  = $city_division_pk_no ;
        $prod->customer_pk_no           = Auth::user()->id ;
        $prod->city_division        = $area->city_division ;
        $prod->url_slug             = $this->urlSlug($request->title) ;
        $prod->price                = $request->price ;
        $prod->price_to             = $request->price_to ;
        $prod->is_negotiable        = $request->price_negotiable ;
        $prod->description          = $request->description ;
        $prod->company_name         = $request->company_name ;
        $prod->mobile1              = $request->mobile1 ;
        $prod->mobile2              = $request->mobile2 ;
        $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
        $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
        $prod->address              = $request->address ;
        $prod->user_name            = $request->name ;
        $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
        if ($request->file('company_logo')) {
            $image             = $request->file('company_logo');
            $log_name          = rand(1,99999).'.'.$image->getClientOriginalExtension();
            $prod->logo = $log_name;
        }

        $prod->save();


        if ($request->file('company_logo')) {
            $destinationPath   = public_path('/uploads/product/'.$prod->prod_pk_no.'/logo');

            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0755, true);
            }
            $image->move($destinationPath, $log_name);
        }


        $request->prod_pk_no        = $prod->pk_no;

        $job                        = new JobPreference();
        $job->prod_pk_no            = $prod->pk_no;
        $job->mini_qualification    = $request->mini_qualification;
        $job->req_expriance         = $request->req_expriance;
        $job->edu_specialization    = $request->edu_specialization;
        $job->skill                 = $request->skill;
        $job->receive_applications_via = $request->receive_applications_via;
        $job->max_age               = $request->max_age;
        $job->deadline              = date('Y-m-d',strtotime($request->deadline));
        $job->application_requirements = $request->pk_no;
        $job->business_function     = $request->business_function;
        $job->role_designation      = $request->role ;
        $job->total_vacancies       = $request->total_vacancies ;
        $job->pref_gender          = $request->pref_gender ;
        $job->save();
        $user = ModelsAuth::find(Auth::user()->id);
            $user->seller_type = $request->seller_type;
            $user->address = $request->address;
            $user->total_post = $user->total_post+1;
            $user->update();

        //product thumb upload
        if ($request->file('image')) {
            $this->insertPhoto($request);
        }

        } catch (\Exception $e) {
            DB::rollback();
            // $e->getMessage();
            //dd($e);
            return $this->formatResponse(false, 'Your post not added successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post added successfully !', 'my-ads');
    }



    public function postAdProperty($request)
    {

        DB::beginTransaction();

        try {

        $prod               = new Product();
        $area               = Area::find($request->area);
        $cat                = Category::find($request->scat_pk_no);
        $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no ;

        if ($request->prod_feature){
            $prod_feature = implode(', ', $request->prod_feature);
        }

        $prod->ad_type              = $request->sell_type;
        $prod->prod_type            = $request->product_type;
        $prod->main_category        = 'property';
        $prod->f_cat_pk_no          = $cat->parent_id;
        $prod->f_scat_pk_no         = $request->scat_pk_no;
        $prod->ad_title             = $request->title ;
        $prod->area_id              = $area->pk_no ;
        $prod->city_division_pk_no  = $city_division_pk_no ;
        $prod->customer_pk_no           = Auth::user()->id ;
        $prod->city_division        = $area->city_division ;
        $prod->url_slug             = $this->urlSlug($request->title) ;
        $prod->price                = $request->price ;
        $prod->is_negotiable        = $request->price_negotiable ;
        $prod->authenticity         = $request->authenticity ;
        $prod->bed_no               = $request->bed ;
        $prod->bath_no              = $request->bath ;
        $prod->prod_feature         = $prod_feature ?? null ;
        $prod->house_size           = $request->size ;
        $prod->house_unit           = $request->property_unit ;
        $prod->description          = $request->description ;
        $prod->using_condition      = $request->using_condition ;
        $prod->mobile1              = $request->mobile1 ;
        $prod->mobile2              = $request->mobile2 ;
        $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
        $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
        $prod->address              = $request->address ;
        $prod->user_name            = $request->name ;
        $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
        $prod->save();
        $request->prod_pk_no        = $prod->pk_no;
        $user = ModelsAuth::find(Auth::user()->id);
            $user->seller_type = $request->seller_type;
            $user->address = $request->address;
            $user->total_post = $user->total_post+1;
            $user->update();
        //product thumb upload
        if ($request->file('image')) {
            $this->insertPhoto($request);
        }

        } catch (\Exception $e) {
            DB::rollback();
            return $this->formatResponse(false, 'Your post not added successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post added successfully !', 'my-ads');
    }



    public function postAdService($request)
    {

        DB::beginTransaction();

        try {
            $title  = strtolower(iconv('UTF-8', 'utf-8//TRANSLIT', $request->title));
            $slug   = \Str::slug($title, "-");
            $prod               = new Product();
            $area               = Area::find($request->area);
            $cat                = Category::find($request->scat_pk_no);
            $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no;
            $prod->ad_type              = $request->sell_type;
            $prod->prod_type            = $request->product_type;
            $prod->main_category        = 'matrimony-services';
            $prod->f_cat_pk_no          = $cat->parent_id;
            $prod->f_scat_pk_no         = $request->scat_pk_no;
            $prod->ad_title             = iconv('UTF-8', 'utf-8//TRANSLIT', $request->title);
            $prod->area_id              = $area->pk_no ;
            $prod->city_division_pk_no  = $city_division_pk_no ;
            $prod->customer_pk_no       = Auth::user()->id ;
            $prod->city_division        = $area->city_division ;
            $prod->url_slug             = $slug;
            $prod->price                = $request->price ;
            $prod->is_negotiable        = $request->price_negotiable ;
            $prod->description          =  iconv('UTF-8', 'utf-8//TRANSLIT', $request->description);
            $prod->mobile1              = $request->mobile1 ;
            $prod->mobile2              = $request->mobile2 ;
            $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
            $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
            $prod->address              = $request->address ;
            $prod->user_name            = $request->name ;
            $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;

            $prod->save();
            $user = ModelsAuth::find(Auth::user()->id);
            $user->seller_type = $request->seller_type;
            $user->address = $request->address;
            $user->total_post = $user->total_post+1;
            $user->update();
            $request->prod_pk_no       = $prod->pk_no;

            //product photo
            if ($request->file('image')) {
                $this->insertPhoto($request);
            }

        } catch (\Exception $e) {
            DB::rollback();
            dd($e);

            return $this->formatResponse(false, 'Your post not added successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post added successfully !', 'my-ads');
    }


    public function updatePostAdService($request, $id)
    {

        DB::beginTransaction();

        try {

            $prod               = Product::find($id);
            $area               = Area::find($request->area);
            $cat                = Category::find($request->scat_pk_no);
            $city_division_pk_no = $area->city_pk_no ?? $area->division_pk_no;
            $prod->ad_type              = $request->sell_type;
            $prod->prod_type            = $request->product_type;
            $prod->main_category        = 'matrimony-services';
            $prod->f_cat_pk_no          = $cat->parent_id;
            $prod->f_scat_pk_no         = $request->scat_pk_no;
            $prod->ad_title             = iconv('UTF-8', 'utf-8//TRANSLIT', $request->title);
            $prod->area_id              = $area->pk_no ;
            $prod->city_division_pk_no  = $city_division_pk_no ;
            $prod->customer_pk_no       = Auth::user()->id ;
            $prod->city_division        = $area->city_division ;
            $prod->price                = $request->price ;
            $prod->is_negotiable        = $request->price_negotiable ;
            $prod->description          =  iconv('UTF-8', 'utf-8//TRANSLIT', $request->description);
            $prod->mobile1              = $request->mobile1 ;
            $prod->mobile2              = $request->mobile2 ;
            $prod->is_hide_mobile1      = $request->is_hide_mobile1 ? 1 : 0 ;
            $prod->is_hide_mobile2      = $request->is_hide_mobile2 ? 1 : 0 ;
            $prod->address              = $request->address ;
            $prod->user_name            = $request->name ;
            $prod->is_terms_condition   = $request->is_terms_condition ? 1 : 0 ;
            $prod->update();
            User::where('id', Auth::user()->id)->update(['seller_type' => $request->seller_type, 'address' => $request->address]);
            $request->prod_pk_no       = $prod->pk_no;

            //product photo
            if ($request->file('image')) {
                $this->insertPhoto($request);
            }

        } catch (\Exception $e) {
            DB::rollback();
            dd($e);

            return $this->formatResponse(false, 'Your post not added successfully !', 'my-ads');
        }
        DB::commit();

        return $this->formatResponse(true, 'Your post added successfully !', 'my-ads');
    }




    public function insertPhoto($request)
    {
        if ($request->file('image')) {
            foreach($request->file('image') as $key => $image){
                $serial_no = $key+1;
                $waterMarkUrl = public_path('assets/img/watermark.png');

                $filename1 = rand(1,99999).time().'.'.$image->getClientOriginalExtension();
                $destinationPath1 = public_path('/uploads/product/'.$request->prod_pk_no);
                $destinationPath2 = public_path('/uploads/product/'.$request->prod_pk_no.'/small');
                $destinationPath3 = public_path('/uploads/product/'.$request->prod_pk_no.'/thumb');

                if (!file_exists($destinationPath1)) {
                    mkdir($destinationPath1, 0755, true);
                }

                if (!file_exists($destinationPath2)) {
                    mkdir($destinationPath2, 0755, true);
                }

                if (!file_exists($destinationPath3)) {
                    mkdir($destinationPath3, 0755, true);
                }

                $orgi_img = Image::make($image->getRealPath());

                $orgi_img->backup();




                $orgi_img->resize(600, null, function ($constraint) {
                    $constraint->aspectRatio();
                });
                $orgi_img->insert($waterMarkUrl, 'bottom-left', 5, 5);
                $orgi_img->save($destinationPath1.'/'.$filename1);

                $orgi_img->reset();

                $orgi_img->resize(100, 100, function ($constraint) {
                    //$constraint->aspectRatio();
                })->save($destinationPath2.'/'.$filename1);

                $orgi_img->reset();

                $orgi_img->resize(200, 145, function ($constraint) {
                    //$constraint->aspectRatio();
                })->save($destinationPath3.'/'.$filename1);


                $destinationPathOrig = public_path('/uploads/product/'.$request->prod_pk_no.'/original');

                if (!file_exists($destinationPathOrig)) {
                        mkdir($destinationPathOrig, 0755, true);
                    }

                $orgi_img->backup();

                $image->move($destinationPathOrig, $filename1);

                ProductImg::insert(['f_prd_master_no' => $request->prod_pk_no, 'img_name' => $filename1, 'serial_no' => $serial_no]);

            }
        }

        return true;
    }

    public function insertLogo($request)
    {
        if ($request->file('company_logo')) {
            $image             = $request->file('company_logo');
            $filename          = rand(1,99999).'.'.$image->getClientOriginalExtension();
            $destinationPath   = public_path('/uploads/product/'.$request->prod_pk_no.'/logo');

            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0755, true);
            }
            $image->move($destinationPath, $filename);

            Product::where('pk_no', $request->prod_pk_no)->update(['logo' => $filename]);
        }
        return true;
    }


    public function getMyAds($customer_pk_no)
    {

        $result =  Product::select('prd_master.*','prd_img_library.serial_no','prd_img_library.img_name')
            ->leftJoin('prd_img_library', function($join)
                {  $join->on('prd_master.pk_no', '=', 'prd_img_library.f_prd_master_no');
                    $join->on('prd_img_library.serial_no','=',DB::raw("'1'"));
                })
            ->where('prd_master.customer_pk_no', $customer_pk_no)
            ->where('prd_master.is_delete', 0)
            ->groupBy('prd_master.pk_no')
            ->orderBy('prd_master.pk_no','asc')->paginate(20);

        if(!$result->isEmpty()){
            foreach ($result as $key => $value) {
                if ($value->img_name) {
                    $value->img_path_thumb = asset('/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name);
                }else{
                    $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                }
            }
        }

        return $result;
    }

    public function getEditAds($id)
    {
        $result = Product::where(['pk_no' => $id, 'customer_pk_no' => Auth::user()->id ])->first();
        if($result){
            if($result->prod_feature){
                $result->prod_feature_arr   = explode(",", $result->prod_feature);
            }
            if($result->fuel_type){
                $result->fuel_type_arr = explode(',', $result->fuel_type);
            }

            if ($result->allPhotos && count($result->allPhotos) > 0 ) {
               foreach ($result->allPhotos as $key => $value) {
                   if ($value->img_name) {
                        $value->img_path_thumb = asset('/uploads/product/'.$result->pk_no.'/thumb/'.$value->img_name);
                    }else{
                        $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }
               }
            }
            if ($result->logo) {
                $result->logo_path = asset('/uploads/product/'.$result->pk_no.'/logo/'.$result->logo);

            }else{
                $result->logo_path = asset('/assets/img/default_thumb.png');
            }

            return $this->formatResponse(true, 'Data found !', 'my-ads.edit',$result);
        }else{
            return $this->formatResponse(false, 'Data not found !', 'my-ads');
        }
    }


    public function getMyAdDelete($id)
    {
        DB::beginTransaction();
            try {
                $product                  = Product::findOrFail($id)->delete();
                // $product->is_delete       = 1;
                // $product->deleted_by      = Auth::user()->id;
                // $product->deleted_at      = date('Y-m-d H:i:s');
                // $product->update();
            } catch (\Exception $e) {
                DB::rollback();
                return $this->formatResponse(false, 'Product not deleted successfully !', 'my-ads');
            }
        DB::commit();

        return $this->formatResponse(true, 'Product deleted successfully !', 'my-ads');
    }


    public function category() {
        return $this->belongsTo('App\Category', 'f_cat_pk_no');
    }

    public function subcategory() {
        return $this->belongsTo('App\Category', 'f_scat_pk_no');
    }

    public function area() {
        return $this->belongsTo('App\Area', 'area_id');
    }

    public function jobInfo() {
        return $this->hasOne('App\JobPreference', 'prod_pk_no');
    }

    public function user() {
        return $this->belongsTo('App\User', 'customer_pk_no');
    }

    public function allPhotos() {
        return $this->hasMany('App\ProductImg', 'f_prd_master_no')->orderBy('serial_no','asc');
    }





    /*============= Get for Web ============*/
    public function getUrgentAds($limit)
    {
        $result = Product::where('promotion', 'Urgent')
                ->select('prd_master.pk_no','prd_master.promotion','prd_img_library.img_name','prd_master.price','prd_master.is_negotiable','prd_master.ad_title','prd_master.url_slug','prd_master.created_at','prd_master.city_division','prd_master.area_id','prd_master.f_cat_pk_no','prd_master.f_scat_pk_no','prd_master.is_active','prd_master.customer_pk_no')
                ->leftJoin('prd_img_library', function($join)
                    {
                        $join->on('prd_master.pk_no', '=', 'prd_img_library.f_prd_master_no');
                        $join->on('prd_img_library.serial_no','=',DB::raw("'1'"));
                    })
                ->inRandomOrder()
                ->limit($limit)
                ->get();

        if(!$result->isEmpty()){
            foreach ($result as $key => $value) {
                if ($value->img_name) {

                    if(file_exists( public_path().'/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name )){
                        $value->img_path_thumb = asset('/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name);
                    }else{
                       $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }


                }else{
                    $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                }
            }
        }

        return $result;
    }


    public function similarAds($rows)
    {
        $limit          = 20;
        $category       = $rows->f_cat_pk_no;
        $scategory      = $rows->f_scat_pk_no;
        $result         = Product::select('prd_master.pk_no','prd_master.promotion','prd_img_library.img_name','prd_master.price','prd_master.is_negotiable','prd_master.ad_title','prd_master.url_slug','prd_master.created_at','prd_master.city_division','prd_master.area_id','prd_master.f_cat_pk_no','prd_master.f_scat_pk_no','prd_master.customer_pk_no')
                ->leftJoin('prd_img_library', function($join)
                    {
                        $join->on('prd_master.pk_no', '=', 'prd_img_library.f_prd_master_no');
                        $join->on('prd_img_library.serial_no','=',DB::raw("'1'"));
                    })
                ->where('prd_master.f_scat_pk_no', $scategory)
                ->where('prd_master.is_active', 1)

                ->orWhere(function($q) use ($category){
                    $q->where('prd_master.f_cat_pk_no', $category)->where('prd_master.is_active', 1);
                    })
                ->orderBy('prd_master.created_at','ASC')
                ->limit($limit)
                ->get();

        if(!$result->isEmpty()){
            foreach ($result as $key => $value) {
                if ($value->img_name) {

                    if(file_exists( public_path().'/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name )){
                        $value->img_path_thumb = asset('/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name);
                    }else{
                       $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }
                }else{
                    $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                }
            }
        }

        return $result;

    }

    public function getpromotedAds()
    {
        $my_id = Auth::user()->id;
        $limit          = 20;
        $result = Product::whereIn('promotion', ['Top','Urgent','Feature'])
                ->select('prd_master.pk_no','prd_master.promotion','prd_img_library.img_name','prd_master.price','prd_master.is_negotiable','prd_master.ad_title','prd_master.url_slug','prd_master.created_at','prd_master.city_division','prd_master.area_id','prd_master.f_cat_pk_no','prd_master.f_scat_pk_no','prd_master.is_active')
                ->leftJoin('prd_img_library', function($join)
                    {
                        $join->on('prd_master.pk_no', '=', 'prd_img_library.f_prd_master_no');
                        $join->on('prd_img_library.serial_no','=',DB::raw("'1'"));
                    })
                ->where('prd_master.is_active', 1)
                ->where('prd_master.customer_pk_no', $my_id)
                ->orderBy('prd_master.created_at','ASC')
                ->limit($limit)
                ->paginate();

        if(!$result->isEmpty()){
            foreach ($result as $key => $value) {
                if ($value->img_name) {
                    if(file_exists( public_path().'/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name )){
                        $value->img_path_thumb = asset('/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name);
                    }else{
                       $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }

                }else{
                    $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                }
            }
        }

        return $result;
    }


    public function getFavoriteAds()
    {
        $limit  = 20;
        $uid    = Auth::user()->id;
        $result = Product::select('prd_master.pk_no','prd_master.promotion','prd_img_library.img_name','prd_master.price','prd_master.is_negotiable','prd_master.ad_title','prd_master.url_slug','prd_master.created_at','prd_master.city_division','prd_master.area_id','prd_master.f_cat_pk_no','prd_master.f_scat_pk_no','prd_master.is_active')
                //->where('prd_favourites.f_customer_pk_no', Auth::user()->id)
                ->leftJoin('prd_img_library', function($join)
                    {
                        $join->on('prd_master.pk_no', '=', 'prd_img_library.f_prd_master_no');
                        $join->on('prd_img_library.serial_no','=',DB::raw("'1'"));
                    })
                ->where('prd_master.is_active', 1)
                ->join('prd_favourites', function($join)
                    {
                        $join->on('prd_master.pk_no', '=', 'prd_favourites.f_prd_pk_no');

                    })
                ->orderBy('prd_master.created_at','ASC')
                ->limit($limit)
                ->paginate();
        if(!$result->isEmpty()){
            foreach ($result as $key => $value) {
                if ($value->img_name) {
                    if(file_exists( public_path().'/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name )){
                       $value->img_path_thumb = asset('/uploads/product/'.$value->pk_no.'/thumb/'.$value->img_name);
                    }else{
                       $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                    }


                }else{
                    $value->img_path_thumb = asset('/assets/img/default_thumb.png');
                }
            }
        }

        return $result;
    }





}
