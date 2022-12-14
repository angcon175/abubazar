<?php

namespace App\Http\Controllers;

use DB;
use DateTime;
use Exception;
use App\Models\Cms;
use App\Models\Theme;
use App\Models\Setting;
use Twilio\Rest\Client;
use App\Models\Customer;
use App\Models\BlogComment;
use Modules\Ad\Entities\Ad;
use Illuminate\Http\Request;
use App\Http\Traits\SmsTrait;
use Modules\Faq\Entities\Faq;
use App\Models\PaymentSetting;
use Modules\Blog\Entities\Post;
use Modules\Plan\Entities\Plan;
use Modules\Location\Entities\City;
use Modules\Location\Entities\Town;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Modules\Faq\Entities\FaqCategory;
use Modules\Ad\Transformers\AdResource;
use Modules\Blog\Entities\PostCategory;
use Modules\Category\Entities\Category;
use App\Notifications\LogoutNotification;
use Modules\Testimonial\Entities\Testimonial;
use Modules\Category\Transformers\CategoryResource;

class FrontendController extends Controller
{
    use SmsTrait;
    /**
     * View Home page
     * @return \Illuminate\Http\Response
     * @return void
     */
    public function index()
    {
        $data = [];
        $topCategories = CategoryResource::collection(Category::active()->with('subcategories', function ($q) {
            $q->where('status', 1);
        })->withCount('ads as ad_count')->latest('ad_count')->take(12)->orderBy('name')->get());
        $home_page = Theme::first()->home_page;
        $topCities = City::withCount('ads as ad_count')->latest('ad_count')->take(6)->get();

        $data['topCategories'] = collectionToResource($topCategories);
        $data['topCities'] = $topCities;
        $data['totalAds'] = Ad::activeCategory()->active()->count();

        if ($home_page == 1) {
            return $this->homePage1($data);
        } elseif ($home_page == 2) {
            return $this->homePage2($data);
        } else {
            return $this->homePage3($data);
        }
    }


    /**
     * Return homapge 1 layouts views
     *
     * @param array $data
     *
     * @return View
     */
    public function homePage1($data)
    {
        $ad_data = Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon'])->active();
        $ads = AdResource::collection($ad_data->get());
        $categories = CategoryResource::collection(Category::active()->with('subcategories', function ($q) {
            $q->where('status', 1);
        })->oldest('order')->orderBy('name')->get());
        $recommendedAds = AdResource::collection($ad_data->where('featured', true)->take(12)->latest()->get());
        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon'])->active()->where('featured', '!=', 1)->take(12)->latest()->get());

        $data['ads'] = collectionToResource($ads);
        $data['categories'] = collectionToResource($categories);
        // $data['recommendedAds'] = collectionToResource($recommendedAds);
        $data['recommendedAds'] = Ad::where('featured', 1)->orderBy('title')->get();
        $data['latestAds'] = collectionToResource($latestAds);

        $data['verified_users'] = Customer::whereNotNull('email_verified_at')->count();
        $data['city_count'] = City::count();

        $data['pro_members_count'] = Customer::whereHas('userPlan', function ($q) {
            $q->where('badge', true);
        })->count();
        $data['towns'] = Town::orderBy('name')->get();
        $data['total_ads'] = Ad::activeCategory()->active()->count();
        $data['admin_ads_category'] = DB::table('admin_ads')->where('image_position', 0)->where('status', 1)->inRandomOrder()->first();
        $data['admin_ads_slider'] = DB::table('admin_ads')->where('image_position', 1)->where('status', 1)->inRandomOrder()->first();
        return view('frontend.index', $data);
    }


    /**
     * Return homepage 2 layouts views
     *
     * @param Array $data
     *
     * @return View
     */
    public function homePage2($data)
    {
        $categories = CategoryResource::collection(Category::active()->withCount('ads as ad_count')->latest()->orderBy('name')->get());
        $recentads = AdResource::collection(Ad::activeCategory()->with('category', 'customer', 'city')->active()->latest('id')->get()->take(4));
        $featured_ad_data = Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon',])->active()->take(6)->latest()->get();
        $featuredad = AdResource::collection($featured_ad_data);
        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon'])->active()->where('featured', '!=', 1)->take(6)->latest()->get());

        $data['categories'] = collectionToResource($categories);
        $data['featuredAds'] = collectionToResource($featuredad);
        $data['latestAds'] = collectionToResource($latestAds);
        $data['recentads'] = $recentads;
        $data['towns'] = Town::orderBy('name')->get();
        $data['total_ads'] = Ad::activeCategory()->active()->count();
        $data['admin_ads_category'] = DB::table('admin_ads')->where('image_position', 0)->where('status', 1)->inRandomOrder()->first();
        $data['admin_ads_slider'] = DB::table('admin_ads')->where('image_position', 1)->where('status', 1)->inRandomOrder()->first();

        return view('frontend.index_02', $data);
    }

    /**
     * Return homepage 3 layouts views
     *
     * @param Array $data
     * @return View
     */
    public function homePage3($data)
    {
        $categories = CategoryResource::collection(Category::active()->latest()->orderBy('name')->get());
        $plans = Plan::all();
        $featured_ad_data = Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon',])->active()->take(8)->latest()->get();
        $featuredad = AdResource::collection($featured_ad_data);
        $latestAds = AdResource::collection(Ad::activeCategory()->with(['customer', 'city', 'category:id,name,icon'])->active()->where('featured', '!=', 1)->take(8)->latest()->get());

        $data['featuredAds'] = collectionToResource($featuredad);
        $data['latestAds'] = collectionToResource($latestAds);
        $data['categories']  =  collectionToResource($categories);
        $data['towns']  = Town::orderBy('name')->get();
        $data['plans']  = $plans;
        $data['total_ads'] = Ad::activeCategory()->active()->count();
        $data['admin_ads_category'] = DB::table('admin_ads')->where('image_position', 0)->where('status', 1)->inRandomOrder()->first();
        $data['admin_ads_slider'] = DB::table('admin_ads')->where('image_position', 1)->where('status', 1)->inRandomOrder()->first();
        currentCurrency();

        return view('frontend.index_03', $data);
    }


    /**
     * View Testimonial page
     *
     * @param  Testimonial
     * @return \Illuminate\Http\Response
     * @return void
     */
    public function about()
    {
        $testimonials = Testimonial::latest('id')->get();
        $cms = Cms::select(['about_body', 'about_video_thumb', 'about_background'])->first();
        return view('frontend.about', compact('testimonials', 'cms'));
    }

    /**
     * View Faq page
     *
     *  @param  Faq
     * @return void
     */
    public function faq()
    {
        if (!enableModule('faq')) {
            abort(404);
        }
        $category_slug = request('category') ?? FaqCategory::first()->slug;
        $category = FaqCategory::where('slug', $category_slug)->first();
        $data['categories'] = FaqCategory::latest()->get(['id', 'name', 'slug', 'icon']);
        $data['faqs'] = Faq::where('faq_category_id', $category->id)->with('faq_category:id,name,icon')->get();

        return view("frontend.faq", $data);
    }

    /**
     * View Contact page
     *
     * @return void
     */
    public function contact()
    {
        if (!enableModule('contact')) {
            abort(404);
        }
        return view('frontend.contact');
    }

    /**
     * View Single Ad page
     *
     * @return void
     */
    public function adDetails(Ad $ad)
    {
        if ($ad->status == 'pending') {
            if ($ad->customer_id != auth('customer')->id()) {
                abort(404);
            }
        }

        $verified_seller = Customer::findOrFail($ad->customer_id)->email_verified_at;
        $ad->increment('total_views');
        $ad = $ad->load(['customer', 'brand', 'adFeatures', 'galleries', 'town', 'city']);

        $lists = AdResource::collection(Ad::activeCategory()->select(['id', 'title', 'slug', 'price', 'thumbnail', 'category_id', 'city_id'])
            ->with(['city', 'category'])
            ->where('category_id', $ad->category_id)
            ->where('id', '!=', $ad->id)
            ->active()
            ->latest('id')->take(10)->get());

        if ($ad->status === 'expired' && $ad->customer->id !== auth('customer')->id()) {
            return abort(404);
        } else {
            return view('frontend.single-ad', compact('ad', 'lists', 'verified_seller'));
        }
    }

    /**
     * View ad list page
     *
     * @return void
     */
    
    public function adList()
    {
        $data['adlistings'] = Ad::activeCategory()->with(['category', 'city'])->latest('id')->active()->paginate(9);
        $data['categories'] = Category::active()->with('subcategories', function ($q) {
            $q->where('status', 1);
        })->latest('id')->get();
        $data['cities'] = City::latest()->get();
        $data['towns'] = Town::orderBy('name')->get();
        $data['adMaxPrice'] = $price = \DB::table('ads')->max('price');

        return view('frontend.ad-list', $data);
    }

    /**
     * View Get membership page
     *
     * @return void
     */
    public function getMembership()
    {
        if (!enableModule('price_plan')) {
            abort(404);
        }

        $data['plans'] = Plan::latest()->get();
        currentCurrency();
        return view('frontend.get-membership', $data);
    }

    /**
     * View Priceplan page
     *
     * @return void
     */
    public function pricePlan()
    {
        if (!enableModule('price_plan')) {
            abort(404);
        }

        $data['plans'] = Plan::all();
        currentCurrency();
        return view('frontend.price-plan', $data);
    }

    /**
     * View Signup page
     *
     * @return void
     */
    public function signUp()
    {
        $verified_users = Customer::where('email_verified_at', '!=', null)->count();

        return view('frontend.sign-up', compact('verified_users'));
    }

    public function otpVerifiaction(Request $request){
        $user = Customer::where('phone', $request->phone)->first();

        return view('frontend.otpverifiaction', compact('user'));
    }
    /**
     * Show the form for creating a new resource.
     * @param  Customer
     * @param  Request $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $setting = setting();

        $request->validate([
            'name' => "required",
            'username' => "required|unique:customers,username",
            'email' => "required|email|unique:customers,email",
            'phone' => "required|min:9|max:12|unique:customers,phone",
            'password' => "required|confirmed|min:8|max:50"
        ]);

        // $otp = rand (1000,9999);

        $phone = (int)$request->phone;
        // $receiverNumber = '+971'.$phone;
        // $message = "Welcome to abubazar.com, you otp code is ".$otp;
        // $res = $this->sendSms($message,$receiverNumber);
        // if ($res) {
            $created = Customer::create([
                'name'                  => $request->name,
                'username'              => $request->username,
                'email'                 => $request->email,
                'phone'                 => $request->phone,
                'password'              => bcrypt($request->password),
                // 'code'                  => $otp,
                'code_exp_time'         =>  date("Y-m-d H:i:s",strtotime(date("Y-m-d H:i:s")." +5 minutes")),
                'code_daily_counter'    => 1,
                'code_send_date'        => date('Y-m-d'),
                'is_verified_phone'     => 1,
            ]);

            Auth::guard('customer')->logout();
            Auth::guard('super_admin')->logout();
            flashSuccess('Registration Successful!');
            Auth::guard('customer')->login($created);
            return redirect()->route('frontend.index');
            // return redirect()->route('frontend.otpverifiaction',['phone' => $request->phone]);

            // if ($setting->customer_email_verification) {
            //     return redirect()->route('verification.notice');
            // } else {
            //     return redirect()->route('frontend.dashboard');
            // }

        //    if (!$created->email_verified_at) {
        //        return redirect()->route('verification.notice');
        //    } else {
        //        return redirect()->route('frontend.dashboard');
        //    }
        // }else{
        //     Auth::guard('customer')->logout();
        //     Auth::guard('super_admin')->logout();
        //     flashError('Your phone number may wrong');
        //     return redirect()->back()->withInput();
        // }


    }

    public function otpVerify(Request $request){
            $setting = setting();

            if($request->submit == 'againotp'){
                $request->validate([
                    'phone' => "required|min:10|max:12",
                ]);
                $otp = rand (1000,9999);
                $user = Customer::where('phone',$request->phone)->first();
                $code_daily_counter = $user->code_daily_counter;
                $todate = date('Y-m-d');
                $totime = new DateTime("now");
                $code_send_date = $user->code_send_date;

                if( ($todate == $code_send_date ) && ($code_daily_counter > 5) ){
                    flashError('Please try another day or contact with admin');
                    return redirect()->back()->withUser($user)->withInput();
                }else{
                    $code_daily_counter = $user->code_daily_counter+1;
                    $phone = (int)$user->phone;
                    $receiverNumber = '+971'.$phone;
                    $message = "Welcome to abubazar.com, you otp code is ".$otp;

                    $res = $this->sendSms($message,$receiverNumber);
                    if($res){
                        $user = Customer::where('phone',$request->phone)->update([
                            'code'                  => $otp,
                            'code_exp_time'         => date("Y-m-d H:i:s",strtotime(date("Y-m-d H:i:s")." +5 minutes")),
                            'code_daily_counter'    => $code_daily_counter,
                            'code_send_date'        => date('Y-m-d'),
                        ]);
                        flashSuccess('Otp send again');
                    }else{
                        flashError('Your phone number may wrong');
                    }
                    return redirect()->back()->withUser($user)->withInput();
                }


            }else{
                $request->validate([
                    'otp' => "required|min:4|max:4",
                    'phone' => "required|min:9|max:12",
                ]);
                $user = Customer::where('phone',$request->phone)->first();
                if($user){
                    $phone_number = $user->phone;
                    $flag   = 'ok';
                    $msg    = 'Otp verification success';
                    $otp    = $user->code;
                    $totime = new DateTime("now");
                    $code_exp_time = new DateTime($user->code_exp_time);

                    if($user->code == $request->otp){
                        if( $totime > $code_exp_time){
                            flashError('Otp is expired');
                            return redirect()->back()->withUser($user)->withInput();
                        }else{
                            Auth::guard('customer')->logout();
                            Auth::guard('super_admin')->logout();
                            flashSuccess('Otp verification Successful!');
                            Customer::where('phone',$request->phone)->update(['is_verified_phone' => 1]);
                            $user = Customer::where('phone',$request->phone)->first();
                            Auth::guard('customer')->login($user);
                            return redirect()->route('frontend.dashboard');
                        }
                    }else{
                        flashError('Otp wrong');
                        return redirect()->back()->withUser($user)->withInput();
                    }

                }else{
                    flashError('User information wrong');
                    return redirect()->back()->withUser($user)->withInput();
                }
            }


        }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     *
     */
    public function frontendLogout()
    {
        $this->loggedoutNotification();
        auth()->guard('customer')->logout();

        return redirect()->route('customer.login');
    }

    public function loggedoutNotification()
    {
        // Send login notification
        $user = Customer::find(auth('customer')->id());
        $user->notify(new LogoutNotification($user));
    }

    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function blog(Request $request)
    {
        if (!enableModule('blog')) {
            abort(404);
        }

        $query = Post::with('author')->withCount('comments');

        if ($request->has('category') && $request->category != null) {
            $query->whereHas('category', function ($q) {
                $q->where('slug', request('category'));
            });
        }

        if ($request->has('keyword') && $request->keyword != null) {
            $query->where('title', 'LIKE', "%$request->keyword%");
        }

        return view('frontend.blog', [
            'blogs' =>  $query->paginate(6)->withQueryString(),
            'recentBlogs' => Post::withCount('comments')->latest()->take(4)->get(),
            'topCategories' => PostCategory::latest()->take(6)->get(),
        ]);
    }

    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function singleBlog(Post $blog)
    {
        if (!enableModule('blog')) {
            abort(404);
        }

        $recentPost =  Post::withCount('comments')->latest('id')->take(6)->get();
        $categories = PostCategory::latest()->take(6)->get();
        $blog->load('author', 'category')->loadCount('comments');

        return view('frontend.blog-single', compact('blog', 'categories', 'recentPost'));
    }


    /**
     * View Privacy Policy page
     *
     * @return void
     */
    public function privacy()
    {
        return view('frontend.privacy')->withCms(Cms::select(['privacy_body', 'privacy_background'])->first());
    }


    /**
     * View Terms & Condition page
     *
     * @return void
     */
    public function terms()
    {
        return view('frontend.terms')->withCms(Cms::select(['terms_body', 'terms_background'])->first());
    }

    /**
     *
     * @param int $post_id
     * @return array
     */
    public function commentsCount($post_id)
    {
        return BlogComment::where('post_id', $post_id)->count();
    }

    /**
     *
     * @param int $post_id
     * @return array
     */
    public function pricePlanDetails($plan_label)
    {
        if (!auth('customer')->check()) {
            abort(404);
        }

        $plan = Plan::where('label', $plan_label)->first();
        $payment_setting = PaymentSetting::first();
        return view('frontend.plan-details', compact('plan', 'payment_setting'));
    }

    public function adGalleryDetails(Ad $ad)
    {
        $ad->load('galleries');
        return view('frontend.single-ad-gallery', compact('ad'));
    }

    public function AllJobs()
    {
        $data['job_sub_cat'] = DB::table('sub_categories')->where('category_id',11)->get();
        // dd($data);
        return view('frontend.all_jobs',compact('data'));
    }

    public function CountryToCity(Request $request, $id)
    {
         $town  = DB::table('towns')->where('city_id', $id)->get();
         $city  = DB::table('cities')->where('id', $id)->first();
         $html = '';
        if($town && count($town) > 0 ){
            $html .= '<ul>';
            foreach($town as $k => $val){
                $town_ads_count = DB::table('ads')->where('town_id', $val->id)->count();
                $route = route('frontend.adlist.search',['city' => $city->name, 'town' => $val->name ]);
                $html .= '
                        <li>
                            <a class="nav-link" href="'.$route.'">
                            '.$val->name.'
                              <span>('.$town_ads_count.')</span>
                            </a>
                        </li>';
            }
            $html .= '</ul>';
        }else{
            $html .= '<ul>';
                $html .= '<li class="not_found"><a href="#">'.'Data not found'.'</a></li>';
            $html .= '</ul>';
        }
        $response['html'] = $html;
        $response['city'] = $city;

        return response()->json($response);
    }

}
