<?php

namespace App\Http\Controllers\Frontend;

use File;
use App\Models\Customer;
use Illuminate\Support\Str;
use Modules\Ad\Entities\Ad;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Modules\Brand\Entities\Brand;
use App\Http\Traits\AdCreateTrait;
use Illuminate\Support\Facades\DB;
use Modules\Ad\Entities\AdGallery;
use Modules\Location\Entities\City;
use App\Http\Controllers\Controller;
use Modules\Category\Entities\Category;

class AdPostController extends Controller
{
    use AdCreateTrait;

    /**
     * Ad Create step 1.
     * @return void
     */
    public function postStep1()
    {
        $this->stepCheck();
        if (session('step1')) {
            $categories = Category::latest('id')->get();
            $brands = Brand::latest('id')->get();
            $ad = session('ad');

            return view('frontend.postad.step1', compact('categories', 'brands', 'ad'));
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Ad Create step 2.
     *
     * @return void
     */
    public function postStep2()
    {
        if (session('step2')) {
            $ad = session('ad');
            $citis = City::latest('id')->get();
            $user = Customer::find(auth('customer')->id());

            return view('frontend.postad.step2', compact('ad', 'citis','user'));
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Ad Create step 3.
     *
     * @return void
     */
    public function postStep3()
    {
        $ad = session('ad');
        if (session('step3')) {
            return view('frontend.postad.step3', compact('ad'));
        } else {
            return redirect()->route('frontend.post');
        }
    }

    /**
     * Store Ad Create step 1.ul Islam <devboyarif@gmail.com>
     *  @param  Request $request
     * @return void
     */
    public function storePostStep1(Request $request)
    {
        // return session('ad');

        $validatedData = $request->validate([
            'title' => 'required|unique:ads,title',
            'price' => 'required|numeric',
            // 'model' => 'required',
            // 'condition' => 'required',
            // 'authenticity' => 'required',
            // 'negotiable' => 'required',
            'featured' => 'sometimes',
            'category_id' => 'required',
            // 'subcategory_id' => 'sometimes',
            // 'brand_id' => 'required',
        ]);

        try {
            if (empty(session('ad'))) {
                $ad = new Ad();
                if($request->category_id  == 11) {
                    $ad['slug'] = Str::slug($request->title); 
                    $ad['subcategory_id'] = $request->subcategory_id;   
                    $ad['businessfunction_id'] = $request->businessfunction_id;
                    $ad['role_designation'] = $request->role_designation;
                    $ad['receive_response'] = $request->receive_response;
                    $ad['total_vacancies'] = $request->total_vacancies;
                    $ad['company_employeer_name'] = $request->company_employeer_name;
                    $ad['application_deadline'] = date('Y-m-d', strtotime($request->application_deadline));
                    $ad['required_experience'] = $request->required_experience;
                    $ad['minimum_qualification_id'] = $request->minimum_qualification_id;
                    $ad['educational_specialization_id'] = $request->educational_specialization_id;
                    $ad['skills'] = $request->skills;
                    $ad['mixium_age'] = $request->mixium_age;
                    $ad['gender_preference'] = $request->gender_preference;
                    // return $ad;
                    $ad->fill($validatedData);
                    $request->session()->put('ad', $ad);
                }else {
                    $ad['slug'] = Str::slug($request->title);    
                    $ad->fill($validatedData);
                    $request->session()->put('ad', $ad);
                }
            } else {
                $ad = session('ad');
                $ad['slug'] = Str::slug($request->title);
                $ad->fill($validatedData);
                $request->session()->put('ad', $ad);
            }

            $this->step1Success();
            return redirect()->route('frontend.post.step2');
        } catch (\Throwable $th) {
            $this->forgetStepSession();
            return redirect()->back()->with('error', 'Something went wrong while saving your ad.Please try again.');
        }
    }

    /**
     * Store Ad Create step 2.
     *  @param  Request $request
     * @return void
     */
    public function storePostStep2(Request $request)
    {
        $validatedData = $request->validate([
            'phone' => 'required',
            'phone_2' => 'sometimes',
            'city_id' => 'required',
            'town_id' => 'sometimes',
        ]);

        try {
            $ad = session('ad');
            $ad['show_customer_info'] = $request->show_customer_info;
            $ad['town_id'] = $request->town_id;
            $ad->fill($validatedData);
            $request->session()->put('ad', $ad);
            $this->step1Success2();
            return redirect()->route('frontend.post.step3');
        } catch (\Throwable $th) {
            $this->forgetStepSession();
            return redirect()->route('frontend.post')->with('error', 'Something went wrong while saving your ad.Please try again.');
        }
    }

    /**
     * Store Ad Create step 3.
     *  @param  Request $request
     * @return void
     */
    public function storePostStep3(Request $request)
    {
        $validatedData = $request->validate([
            'description' => 'required',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:2048'
        ]);

        $image_count = count($request->file('images'));
        if (($image_count < 3) || ($image_count > 10)) {
            return redirect()->back()->with('error', 'Please upload at least 3 to 10 images.');
        }

        $ad = session('ad');
        $ad['description'] = $validatedData['description'];
        $ad['customer_id'] = auth('customer')->id();
        $request->session()->put('ad', $ad);
        $ad['status'] = setting('ads_admin_approval') ? 'pending': 'active';
        // dd($ad);
        $ad->save();

        // image uploading
        $images = $request->file('images');

        foreach ($images as $key => $image) {
            if ($key == 0 && $image && $image->isValid()) {
                $url = $image->move('uploads/addds_images',$image->hashName());
                $ad->update(['thumbnail' => $url]);
            }
            $waterMarkUrl = public_path('img/watermark.png');
            // dd($waterMarkUrl);


            if ($image && $image->isValid()) {

                $name = $image->hashName();
                $thumb_img = Image::make($image->getRealPath());
                $destinationPath2 = public_path('uploads/adds_multiple/');
                $thumb_img->insert($waterMarkUrl, 'bottom-left', 5, 5);
                $thumb_img->save($destinationPath2 . '/' . $name);
                $gallery_url = 'uploads/adds_multiple/'.$name;

                $gallery_url = $image->move('uploads/adds_multiple',$image->hashName());
                $ad->galleries()->create(['image' => $gallery_url]);
            }
        }

        // feature inserting
        $features = $request->features;
        foreach ($features as $feature) {
            $ad->adFeatures()->create(['name' => $feature]);
        }

        $this->forgetStepSession();
        $this->adNotification($ad);
        !setting('ads_admin_approval') ? $this->userPlanInfoUpdate($ad->featured) : '';

        return view('frontend.postad.postsuccess', [
            'ad_slug' => $ad->slug,
            'mode' => 'create'
        ]);
    }

    /**
     * Ad Edit step 1.
     * @return void
     */
    public function editPostStep1(Ad $ad)
    {
        if (auth('customer')->id() == $ad->customer_id) {
            $this->stepCheck();
            session(['edit_mode' => true]);

            if (session('step1') && session('edit_mode')) {
                $ad = collectionToResource($this->setAdEditStep1Data($ad));
                $categories = Category::latest('id')->get();
                $brands = Brand::latest('id')->get();

                return view('frontend.postad_edit.step1', compact('ad', 'categories', 'brands'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }

    /**
     * Ad Edit step 2.
     *
     * @return void
     */
    public function editPostStep2(Ad $ad)
    {
        if (auth('customer')->id() == $ad->customer_id) {
            $ad = collectionToResource($this->setAdEditStep2Data($ad));
            $adsInfo = DB::table('ads')->where('id', $ad->id)->first();
            if (session('step2') && session('edit_mode')) {
                $citis = City::latest('id')->get();
                $user = Customer::find(auth('customer')->id());

                return view('frontend.postad_edit.step2', compact('ad', 'citis', 'adsInfo','user'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }


    /**
     * Edit Ad step 3.
     *
     * @return void
     */
    public function editPostStep3(Ad $ad)
    {
        $ad->load('adFeatures', 'galleries');

        if (auth('customer')->id() == $ad->customer_id) {
            $ad = collectionToResource($this->setAdEditStep3Data($ad));

            if (session('step3') && session('edit_mode')) {
                return view('frontend.postad_edit.step3', compact('ad'));
            } else {
                return redirect()->route('frontend.dashboard');
            }
        }

        abort(404);
    }

    /**
     * Update Ad step 1.ul Islam <devboyarif@gmail.com>
     *  @param  Request $request
     * @return void
     */
    public function UpdatePostStep1(Request $request, Ad $ad)
    {
        $request->validate([
            'title' => "required|unique:ads,title,$ad->id",
            'price' => 'required|numeric',
            // 'model' => 'required',
            // 'condition' => 'required',
            // 'authenticity' => 'required',
            'negotiable' => 'sometimes',
            'category_id' => 'required',
            // 'brand_id' => 'required',
        ]);
        if($request->category_id  == 11) {
            $ad->update([
                'title' => $request->title,
                'slug' => Str::slug($request->title),
                'category_id' => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'price' => $request->price,
                'negotiable' => $request->negotiable,
                'featured' => $request->featured,
                'businessfunction_id' => $request->businessfunction_id,
                'role_designation' => $request->role_designation,
                'receive_response' => $request->receive_response,
                'total_vacancies' => $request->total_vacancies,
                'company_employeer_name' => $request->company_employeer_name,
                'application_deadline' => $request->application_deadline,
                'required_experience' => $request->required_experience,
                'minimum_qualification_id' => $request->minimum_qualification_id,
                'educational_specialization_id' => $request->educational_specialization_id,
                'skills' => $request->skills,
                'mixium_age' => $request->mixium_age,
                'gender_preference' => $request->gender_preference,
            ]);
        }else {
            $ad->update([
                'title' => $request->title,
                'slug' => Str::slug($request->title),
                'category_id' => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'brand_id' => $request->brand_id,
                'price' => $request->price,
                'model' => $request->model,
                'condition' => $request->condition,
                'authenticity' => $request->authenticity,
                'negotiable' => $request->negotiable,
                'featured' => $request->featured,
            ]);
        }


        if ($request->cancel_edit) {
            $this->forgetStepSession();
            return redirect()->route('frontend.dashboard');
        } else {
            $this->step1Success();
            return redirect()->route('frontend.post.edit.step2', $ad->slug);
        }
    }

    /**
     * Update Ad step 2.
     *  @param  Request $request
     * @return void
     */
    public function updatePostStep2(Request $request, Ad $ad)
    {
        $request->validate([
            'phone' => 'required',
            'phone_2' => 'sometimes',
            // 'city_id' => 'required',
            // 'town_id' => 'required',
        ]);

        if($request->show_customer_info) {
            $showcustomerinfo = 1;
        }else {
            $showcustomerinfo = 0;
        }

        $ad->update([
            'phone' => $request->phone,
            'phone_2' => $request->phone_2,
            'city_id' => $request->city_id,
            'town_id' => $request->town_id,
            'show_customer_info' => $showcustomerinfo,
        ]);

        if ($request->cancel_edit) {
            $this->forgetStepSession();
            return redirect()->route('frontend.dashboard');
        } else {
            $this->step1Success2();
            return redirect()->route('frontend.post.edit.step3', $ad->slug);
        }
    }

    /**
     * Update Ad step 3.
     *  @param  Request $request
     * @return void
     */
    public function updatePostStep3(Request $request, Ad $ad)
    {
        $request->validate([
            'description' => 'required',
        ]);

        $updateData['description'] = $request->description;

        if( $request->file('thumbnail')){
            $thumbnail = $request->file('thumbnail');
            $thumbnail_url = $thumbnail->move('uploads/adds_multiple',$thumbnail->hashName());
            $updateData['thumbnail'] = $thumbnail_url;

        }

        $ad->update($updateData);

        // feature inserting
        $ad->adFeatures()->delete();
        foreach ($request->features as $feature) {
            if ($feature) {
                $ad->adFeatures()->create(['name' => $feature]);
            }
        }

        $waterMarkUrl = public_path('img/watermark.png');
        // image uploading
        $images = $request->file('images');
        if ($images) {
            foreach ($images as $image) {
                if ($image && $image->isValid()) {

                    $name = $image->hashName();
                    $thumb_img = Image::make($image->getRealPath());
                    $destinationPath2 = public_path('uploads/adds_multiple/');
                    $thumb_img->insert($waterMarkUrl, 'bottom-left', 5, 5);
                    $thumb_img->save($destinationPath2 . '/' . $name);
                    $gallery_url = 'uploads/adds_multiple/'.$name;


                    // $gallery_url = $image->move('uploads/adds_multiple',$image->hashName());
                    $ad->galleries()->create(['image' => $gallery_url]);
                }
            }
        }

        $this->forgetStepSession();
        $this->adNotification($ad, 'update');

        return view('frontend.postad.postsuccess', [
            'ad_slug' => $ad->slug,
            'mode' => 'update',
        ]);
    }

    /**
     * Cancel Ad Edit.
     * @return void
     */
    public function cancelAdPostEdit()
    {
        $this->forgetStepSession();
        return redirect()->route('frontend.dashboard');
    }

    public function adGalleryDelete($ad_gallery){
        $ad_gallery = AdGallery::find($ad_gallery);
        if($ad_gallery){
            $ad_gallery->delete();
        }

        // return redirect()->back();
    }

    public function categoryAjax($id)
    {
        $subcategory = DB::table('sub_categories')->where('category_id', $id)->get();
        return json_encode($subcategory);
    }
    public function cityTownAjax($id)
    {
        $town = DB::table('towns')->where('city_id', $id)->get();
        return json_encode($town);
    }
}
