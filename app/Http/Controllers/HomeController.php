<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\City;
use App\Division;
use App\Area;
use App\Http\Controllers\CommonController as Common;
use App\Http\Controllers\BaseController;
use App\Models\User;
use App\Repositories\Admin\Dashboard\DashboardInterface;

class HomeController extends Controller
{
    protected $category;
    protected $product;
    protected $city;
    protected $division;
    protected $area;
    protected $common;
 
    protected $dashboard;

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index1()
    {
        // return redirect('admin')->with('success', 'Successfully reaches the dashboard !');
        // return back()->with('success', 'Item created successfully!');
        $data = $this->dashboard->getData();
        return view('home')->withData($data);
    }


    public function getTestApi(Request $request)
    {
        $users = User::all();
        return $this->sendResponse($users->toArray(), 'Users retrieved successfully.');
    }

    public function __construct(DashboardInterface $dashboard,Category $category, Product $product, Division $division, City $city,  Area $area, Common $common)
    {
       $this->category  = $category;
       $this->product   = $product;
       $this->division  = $division;
       $this->city      = $city;
       $this->area      = $area;
       $this->common    = $common;
       $this->dashboard = $dashboard;
     
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        /* $product = Product::get();
        if($product){
            foreach ($product as $key => $value) {
                $product = new Product();
                $product->ad_type  = $value->ad_type;              
                $product->area_id  = $value->area_id;             
                $product->city_division  = $value->city_division;        
                $product->city_division_pk_no = $value->city_division_pk_no;
                // $product->area_url_slug   = $value->area_url_slug;       
                // $product->city_division_url_slug = $value->city_division_url_slug;
                $product->customer_pk_no   = $value->customer_pk_no;     
                $product->main_category  = $value->main_category;       
                $product->f_cat_pk_no    = $value->f_cat_pk_no;        
                $product->cat_url_slug   = $value->cat_url_slug;        
                $product->f_scat_pk_no  = $value->f_scat_pk_no;         
                // $product->scat_url_slug = $value->scat_url_slug;                     
                $product->ad_title  = $value->ad_title;             
                $product->url_slug  = $value->url_slug.$key;             
                $product->f_brand   = $value->f_brand ;            
                $product->brand_name = $value->brand_name ;          
                $product->f_model    = $value->f_model;            
                $product->model_name  = $value->model_name;           
                $product->prod_feature   = $value->prod_feature;        
                $product->price     = $value->price;             
                $product->price_unit   = $value->price_unit;          
                $product->is_negotiable   = $value->is_negotiable;       
                $product->price_to     = $value->price_to;          
                $product->vacanci      = $value->vacanci ;         
                $product->business_function = $value->business_function;     
                $product->deadline      = $value->deadline;         
                $product->company_name   = $value->company_name;        
                $product->logo         = $value->logo;          
                $product->description    = $value->description;        
                $product->edition       = $value->edition;         
                $product->authenticity   = $value->authenticity;        
                $product->using_condition    = $value->using_condition;    
                $product->prod_type   = $value->prod_type;           
                $product->mobile1    = $value->mobile1.$key;            
                $product->mobile2    = $value->mobile2.$key;            
                $product->is_hide_mobile1  = $value->is_hide_mobile1;      
                $product->is_hide_mobile2    = $value->is_hide_mobile2;    
                $product->model_year   = $value->model_year;          
                $product->registration_year  = $value->registration_year;    
                $product->transmission   = $value->transmission;        
                $product->address    = $value->address;            
                $product->body_type  = $value->body_type;            
                $product->fuel_type    = $value->fuel_type;          
                $product->engine_capacity  = $value->engine_capacity;      
                $product->kilometers_run  = $value->kilometers_run;       
                $product->bed_no         = $value->bed_no;        
                $product->bath_no      = $value->bath_no;          
                $product->land_size     = $value->land_size;         
                $product->land_unit    = $value->land_unit;          
                $product->house_size    = $value->house_size;         
                $product->house_unit     = $value->house_unit;        
                $product->property_address = $value->property_address;      
                $product->flat_size   = $value->flat_size;           
                $product->gender      = $value->gender;           
                $product->user_name    = $value->user_name;          
                $product->is_terms_condition = $value->is_terms_condition;    
                $product->comments        = $value->comments;       
                $product->is_active       = $value->is_active;       
                $product->approved_by     = $value->approved_by;       
                $product->approved_at     = $value->approved_at;       
                $product->created_by     = $value->created_by;        
                $product->created_at       = $value->created_at;      
                $product->updated_by      = $value->updated_by;       
                $product->updated_at     = $value->updated_at;       
                $product->total_view    = $value->total_view;         
                $product->is_delete     = $value->is_delete;         
                $product->deleted_by    = $value->deleted_by;         
                $product->deleted_at     = $value->deleted_at;       
                $product->promotion      = $value->promotion;        
                $product->promotion_to   = $value->promotion_to;        
                $product->thumb        = $value->thumb; 
                $product->save();

            }
        } 
        */




        $data                   = array();
        $data['top_categories'] = $this->category->getTopCategory(12); 
        $data['urgent_ads']     = $this->product->getUrgentAds(10);
        $common                 = $this->common->getCommon();

        
        $data['divisions']      = $common['divisions']; 
        $data['cities']         = $common['cities']; 
        $data['areas']          = $common['areas']; 
        $data['category']       = $common['category']; 
        $data['subcategory']    = $common['subcategory'];
        $data['area_query']     = null;
        $data['area_query_display']  = null;


        return view('home.home', compact('data'));
    }
    public function getMyAds(Request $request)
    {
        return view('users.my_ads');
    }
    public function getMyProfile(Request $request)
    {
        return view('users.my_profile');
    }
    public function getMyMembership(Request $request)
    {
        return view('users.my_membership');
    }
    public function getFavoriteAds(Request $request)
    {
        return view('users.my_favorite_ads');
    }
    public function getpromotedAds(Request $request)
    {
        return view('users.promoted_ads');
    }
    public function getAdsPromotion(Request $request)
    {
        return view('users.ads_promotion');
    }
    public function getPendingAds(Request $request)
    {
        return view('users.pending_ads');
    }
}
