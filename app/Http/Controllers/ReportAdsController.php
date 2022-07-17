<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ReportAds;
use Auth;
use DB;

class ReportAdsController extends Controller
{

    public function Index()
    {
         $reports = ReportAds::join('ads', 'ads.id', 'reportads.ads_id')->select('reportads.*', 'ads.title', 'ads.slug')->latest()->get();
         return view('backend.report.index', compact('reports'));
    }
     
    public function store(Request $request)
    {
        $this->validate($request,[
            'description'   => 'required',
            'reportCheck'   => 'required',
        ]);

        $report = new ReportAds;
        $report->ads_id       = $request->ads_id;
        $report->description  = $request->description;
        $report->report_field = $request->reportCheck;
        $report->save();
        return redirect()->back()->with('success','Thanks For Your Report');
    }


    public function show($id)
    {
        $report     = ReportAds::find($id);
        $ads_name   = DB::table('ads')->where('id', $report->ads_id)->first();
        return view('backend.report.view', compact('report','ads_name'));
    }

    public function destroy($id)
    {
         $report = ReportAds::find($id)->delete();
         return redirect()->back()->with('success','Report Deleted Successfully');
    }


}
