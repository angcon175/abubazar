<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product;
use App\Models\Category;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;

class DashboardController extends BaseController
{
    public function __construct()
    {

    }

    public function getIndex() {
            $data['total_ads'] = Product::count();
            $data['total_category'] = Category::where('parent_id',0)->count();
            $data['total_premimum_clints'] = Customer::where('package_id',1)->count();
            $data['total_clints'] = Customer::count();
        return view('admin.dashboard.index', compact('data'));
    }

    public function homepage() {
        return view('admin.dashboard.home');
    }
}
