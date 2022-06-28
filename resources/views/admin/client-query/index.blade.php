@extends('admin.layout.master')

@section('Web Setting','open')
@section('client_query','active')

@section('title') @lang('web_setting.client_query_title') @endsection
@section('page-name') @lang('web_setting.client_query_title') @endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">@lang('admin_role.breadcrumb_title')  </a></li>
<li class="breadcrumb-item active">@lang('web_setting.client_query_title')    </li>
@endsection

<!--push from page-->
@push('custom_css')
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
@endpush('custom_css')

@php
    $roles = userRolePermissionArray();
@endphp

@section('content')

<div class="content-body">
        <section id="pagination">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-sm">
                        <div class="card-header">
                            <a class="btn btn-round btn-sm btn-primary text-white" href="#" title="All Queries "><i class="ft-plus text-white"></i>All Queries</a>
                            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                    <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                    <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                    <li><a data-action="close"><i class="ft-x"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-content collapse show">
                            <div class="card-body card-dashboard">
                                <div class="table-responsive ">
                                    <table class="table table-striped table-bordered alt-pagination table-sm" id="indextable">
                                        <thead>
                                        <tr>
                                            <th class="text-center">SL.</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Subject</th>
                                            <th>Message</th>
                                            <th style="width: 120px;">@lang('package.action')</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>01</td>
                                                <td>Rony</td>
                                                <td>rony@gmail.com</td>
                                                <td>lorem impsum dorem</td>
                                                <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</td>
                                                <td>
                                                    @if(hasAccessAbility('view_client_query', $roles))
                                                    <a href="{{ route('admin.query.view') }}" class="btn btn-xs btn-outline-primary mr-1" title="VIEW"><i class="la la-eye"></i></a>
                                                    @endif

                                                    @if(hasAccessAbility('edit_client_query', $roles))
                                                      <a href="{{ route('admin.query.reply') }}" title="Reply" class="btn btn-xs btn-outline-primary mr-1"><i class="la la-reply"></i></a>
                                                    @endif

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


@endsection
<!--push from page-->
@push('custom_js')
<script src="{{ asset('app-assets/vendors/js/forms/select/select2.full.min.js')}}"></script>
<script src="{{ asset('app-assets/js/scripts/forms/select/form-select2.js')}}"></script>
<script type="text/javascript" src="{{ asset('app-assets/pages/customer.js')}}"></script>
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
 <script>
        CKEDITOR.replace('desc');
        CKEDITOR.replace('desc1');
        CKEDITOR.replace('desc2');
        CKEDITOR.replace('desc3');
</script>
@endpush('custom_js')
