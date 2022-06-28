<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use App\Traits\RepoResponse;
use Illuminate\Support\Facades\Hash;
use Auth;
use DB;
use Toastr;
use Image;
class Shop extends Model
{

    use Notifiable;
    use RepoResponse;

    protected $table        = 'ss_shop';
    protected $primaryKey   = 'pk_no';


    public function shopOwner() {
        return $this->belongsTo('App\User', 'customer_pk_no');
    }
   public function storeMyShop($request)
    {

        DB::beginTransaction();
        try {
            $shop                  = new Shop();
            $shop->name            = $request->name;
            $shop->address         = $request->address;
            $shop->contact         = $request->contact;
            $shop->open_time       = $request->open;
            $shop->description     = $request->about;
            $shop->created_by      = Auth::user()->id;
            $shop->customer_pk_no  = Auth::user()->id;
            $shop->description     = $request->about;
            if ($request->file('banner')) {
            $image             = $request->file('banner');
            $banner_name       = rand(1,99999).'.'.$image->getClientOriginalExtension();
            $shop->banner = $banner_name;
           }
            $shop->save();

            if ($request->file('banner')) {
            $destinationPath   = public_path('/uploads/shop/banner/'.Auth::user()->id);
            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0755, true);

            }

            $img_main   = Image::make($image->getRealPath());
            $img_main->resize(1200, 400, function ($constraint) {
                //$constraint->aspectRatio();
                })->save($destinationPath.'/'.$banner_name);

              }

        } catch (\Exception $e) {
            dd($e);
            DB::rollback();
            return $this->formatResponse(false, 'Shop not created successfully !', 'my-shop');
        }
        DB::commit();
        return $this->formatResponse(true, 'Shop has been created successfully !', 'my-shop');
        
    }

    public function updateMyShop($request)
    {
        DB::beginTransaction();
        try {
            $shop                  = Shop::where('customer_pk_no', Auth::user()->id)->first();
            $shop->name            = $request->name;
            $shop->address         = $request->address;
            $shop->contact         = $request->contact;
            $shop->open_time       = $request->open;
            $shop->description     = $request->about;
            $shop->updated_by      = Auth::user()->id;
            $shop->description     = $request->about;
            if ($request->file('banner')) {
            $image             = $request->file('banner');
            $banner_name       = rand(1,99999).'.'.$image->getClientOriginalExtension();
            $shop->banner = $banner_name;
           }
            $shop->update();

            if ($request->file('banner')) {
            $destinationPath   = public_path('/uploads/shop/banner/'.Auth::user()->id);
            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0755, true);

            }

            $img_main   = Image::make($image->getRealPath());
            $img_main->resize(1200, 400, function ($constraint) {
                //$constraint->aspectRatio();
                })->save($destinationPath.'/'.$banner_name);

              }

        } catch (\Exception $e) {
            DB::rollback();
            return $this->formatResponse(false, 'Shop not updated successfully !', 'my-shop');
        }
        DB::commit();
        return $this->formatResponse(true, 'Shop has been updated successfully !', 'my-shop');
    }

    public function getMyShop($userid)
    {
        return Shop::where('customer_pk_no',$userid)->first();
    }


     






}
