@extends('layouts.backend.admin')
@section('title') {{ __('users_list') }} @endsection

@section('view_report')
 active
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title" style="line-height: 36px;">{{ __('View Report') }}</h3>
                        <a href="{{ route('admin.ads.report') }}" class="btn bg-primary float-right d-flex align-items-center justify-content-center"><i class="fas fa-arrow-left"></i>&nbsp; Back</a>
                    </div>

                    <div class="card-body table-responsive p-0">
                         <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap">
                              <tr>
                                <td width="20%" class="text-bold">Ads Name</td>
                                <td>{{ $ads_name->title }}</td>
                              </tr>
                              <tr>
                                <td width="20%" class="text-bold">Report</td>
                                <td>{{ $report->report_field }}</td>
                              </tr>
                              <tr>
                                <td width="20%" class="text-bold">Description</td>
                                <td>{{ $report->description }}</td>
                              </tr>
                         </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
