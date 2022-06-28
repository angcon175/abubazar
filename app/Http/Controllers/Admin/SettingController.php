<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\BaseController;
use App\Repositories\Admin\City\CityInterface;
use App\Http\Requests\Admin\CityRequest;
use App\Models\Country;
use App\Models\City;
use App\SiteSetting;
use Illuminate\Http\Request;
use DB;
use Image;

class SettingController extends BaseController
{
    protected $cityInt;
    protected $city;
    protected $country;

    public function __construct(CityInterface $cityInt, Country $country, City $city)
    {
        $this->cityInt     = $cityInt;
        $this->city     = $city;
        $this->country  = $country;
    }

    public function getAboutUs()
    {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.about',compact('data'));

    }

    public function getContactUs() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.contact',compact('data'));
    } 
    public function getTermsConditions() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.terms-conditions',compact('data'));
    }
    public function getPrivacyPolicy() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.privacy-policy',compact('data'));
    }
    public function getQuickRules() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.quick-rules',compact('data'));
    }
    public function gethowtoSellFast() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.how-to-sell',compact('data'));
    }
    public function getWhyMembership() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.why-membership',compact('data'));
    }
    
    public function getMailConfig() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.mail-config',compact('data'));
    }
    public function getFooter() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.footer',compact('data'));
    }
     public function getCopyRight() {
        $data           = array();
        //$this->resp     = $this->cityInt->getPaginatedList($request, 20);
        //$data['data']   = $this->resp->data;
        return view('admin.web.copy-right',compact('data'));
    }
    // public function site_setting(){
    //     return view('admin.site-setting.index');
    // }
    public function site_setting_store(Request $request){
        $setting = SiteSetting::first();
        if($setting){
            $setting->website_title = $request->website_title;
            $setting->meta_keyword = $request->meta_keyword;
            $setting->meta_description = $request->meta_description;
            if($request->hasFile('logo')) {
                $image = $request->logo;
                $filename = $image->getClientOriginalName();
                $filename = preg_replace('/\s+/', '-', $filename);
                $folder = 'uploads/'.date('Y').'/'.date('m');
                if (!file_exists($folder)) {
                    mkdir($folder, 0777, true);
                }
                $user_img = $folder.'/'. time() . '-' . $filename;
                Image::make($image)->save($user_img);
                $setting->logo = $user_img;
            }
            if($request->hasFile('favicon')) {
                $image = $request->favicon;
                $filename = $image->getClientOriginalName();
                $filename = preg_replace('/\s+/', '-', $filename);
                $folder = 'uploads/'.date('Y').'/'.date('m');
                if (!file_exists($folder)) {
                    mkdir($folder, 0777, true);
                }
                $user_img = $folder.'/'. time() . '-' . $filename;
                Image::make($image)->save($user_img);
                $setting->favicon = $user_img;
            }
            $setting->save();
        }else{
            $setting = new SiteSetting();
            $setting->website_title = $request->website_title;
            $setting->meta_keyword = $request->meta_keyword;
            $setting->meta_description = $request->meta_description;
            if($request->hasFile('logo')) {
                $image = $request->logo;
                $filename = $image->getClientOriginalName();
                $filename = preg_replace('/\s+/', '-', $filename);
                $folder = 'uploads/'.date('Y').'/'.date('m');
                if (!file_exists($folder)) {
                    mkdir($folder, 0777, true);
                }
                $user_img = $folder.'/'. time() . '-' . $filename;
                Image::make($image)->save($user_img);
                $setting->logo = $user_img;
            }
            if($request->hasFile('favicon')) {
                $image = $request->favicon;
                $filename = $image->getClientOriginalName();
                $filename = preg_replace('/\s+/', '-', $filename);
                $folder = 'uploads/'.date('Y').'/'.date('m');
                if (!file_exists($folder)) {
                    mkdir($folder, 0777, true);
                }
                $user_img = $folder.'/'. time() . '-' . $filename;
                Image::make($image)->save($user_img);
                $setting->favicon = $user_img;
            }
            $setting->save();
        }
        
        return redirect()->back()->with('flashMessageSuccess','Sucessfully Saved');
    }


    public function site_website()
    {
        $setting = SiteSetting::first();
        return view('admin.site-setting.website', compact('setting'));
    }

    public function site_system()
    {
         return view('admin.site-setting.system');
    }

    public function site_mail()
    {
       return view('admin.site-setting.mail');
    }

    public function site_payment()
    {
       return view('admin.site-setting.payment');
    }

    public function site_seo()
    {
        return view('admin.site-setting.seo');
    }

    public function site_cms()
    {
        return view('admin.site-setting.cms');
    }




  

    


}
