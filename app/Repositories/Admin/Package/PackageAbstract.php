<?php
namespace App\Repositories\Admin\Package;

use App\Models\Package;
use App\Traits\RepoResponse;
use DB;


class PackageAbstract implements PackageInterface
{
    use RepoResponse;

    protected $package;

    public function __construct(Package $package)
    {
        $this->package = $package;
    }

    public function getPaginatedList($request, int $per_page = 100)
    {
        $data = $this->package->where('is_active', 1)->orderBy('order_id','asc')->get();
        return $this->formatResponse(true, '', 'admin.package.list', $data);
    }


    public function postStore($request)
    {
        DB::beginTransaction();

        try {
            $package               = new Package();
            $package->title        = $request->title;
            $package->price_per_month        = $request->price_per_month;
            $package->ad_limit_in_montrh        = $request->ad_limit_in_montrh;
            $package->support_duration        = $request->support_duration;
            $package->discount_on_promotion        = $request->discount_on_promotion;
            $package->sms_feature        = $request->sms_feature;
            $package->email_feature        = $request->email_feature;
            $package->package_duration        = $request->package_duration;
            $package->shop_page        = $request->shop_page;
            $package->analytics        = $request->analytics;
            $package->save();

        } catch (\Exception $e) {

            DB::rollback();
            return $this->formatResponse(false, 'Package not created successfully !', 'admin.package.lists');
        }
        DB::commit();

        return $this->formatResponse(true, 'Package has been created successfully !', 'admin.package.lists');
    }

    public function findOrThrowException($id)
    {
        $data = $this->package->where('pk_no', '=', $id)->first();

        if (!empty($data)) {
            return $this->formatResponse(true, '', 'admin.package.edit', $data);
        }

        return $this->formatResponse(false, 'Did not found data !', 'admin.package.lists', null);
    }


    public function postUpdate($request, $id)
    {

        DB::beginTransaction();

        try {

            $package               = Package::find($id);
            $package->title        = $request->title;
            $package->price_per_month        = $request->price_per_month;
            $package->ad_limit_in_montrh        = $request->ad_limit_in_montrh;
            $package->support_duration        = $request->support_duration;
            $package->discount_on_promotion        = $request->discount_on_promotion;
            $package->sms_feature        = $request->sms_feature;
            $package->email_feature        = $request->email_feature;
            $package->package_duration     = $request->package_duration;
            $package->shop_page        = $request->shop_page;
            $package->analytics        = $request->analytics;
            $package->update();

            

        } catch (\Exception $e) {
            DB::rollback();

            return $this->formatResponse(false, 'Unable to update Package !', 'admin.package.lists');
        }

        DB::commit();

        return $this->formatResponse(true, 'Package has been updated successfully !', 'admin.package.lists');
    }

    public function delete($id)
    {
        DB::begintransaction();
        try {
            $city = $this->package->find($id);
            $city->is_active = 0;

        } catch (\Exception $e) {
            DB::rollback();

            return $this->formatResponse(false, 'Unable to delete this action !', 'admin.package.list');
        }
        DB::commit();

        return $this->formatResponse(true, 'Successfully delete this action !', 'admin.package.list');
    }




}
