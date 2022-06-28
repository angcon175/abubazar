@extends('layouts.app')
<?php

$subcat_info                 = $data['subcat_info'] ?? null ;
$additional_feature_mobile   = Config::get('static_arrays.additional_feature_mobile') ?? array();
$car_body_type               = Config::get('static_arrays.car_body_type') ?? array();
$fuel_type                   = Config::get('static_arrays.fuel_type') ?? array();
$bed_combo                   = Config::get('static_arrays.number_fo_bed') ?? array();
$bath_combo                  = Config::get('static_arrays.number_fo_bath') ?? array();
$feature_property            = Config::get('static_arrays.feature_property') ?? array();
$property_unit_combo         = Config::get('static_arrays.property_unit') ?? array();
$receive_app_via_combo       = Config::get('static_arrays.receive_applications_via_combo') ?? array();
$edu_specialization_combo    = Config::get('static_arrays.edu_specialization') ?? array();
$business_function_combo     = Config::get('static_arrays.business_function') ?? array();
$mini_qualification_combo    = Config::get('static_arrays.edu_qulafication') ?? array();
$gender_combo                = Config::get('static_arrays.gender') ?? array();
$brand_combo                 = $data['brand_combo'];
$city_combo                  = $data['city_combo'];
$division_combo              = $data['division_combo'];
$area_combo                  = $data['selected_area_combo'] ?? array();
$product_type_combo          = $data['product_type_combo'] ?? array();
$subcat_id                   = request()->get('category') ?? 0;

  //  echo "<pre>";
  //  print_r($division_combo);
  // die();

?>
@push('custom_css')
<link href="{{ URL::asset('assets/fileupload/bootstrap-fileupload.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{asset('/assets/css/forms/validation/form-validation.css')}}">
<link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">

<style type="text/css">
  .verify_div_otp1{display: none;}
  .verify_div_otp2{display: none;}
  #number_otp_div1{display: none;}
  #number_otp_div2{display: none;}
</style>
@endpush
@section('content')
<!-- main -->
<section id="main" class="clearfix ad-details-page">
 <div class="container">
  <div class="breadcrumb-section">
   <!-- breadcrumb -->
   <ol class="breadcrumb">
    <li><a href="index.html">Home</a></li>
    <li>Ad Post Area</li>
</ol>
<!-- breadcrumb -->
</div>
<!-- banner -->
<div class="adpost-details">
   <div class="row">
    <div class="col-lg-8">
       @if($data['remaining_post'] > 0 )

       @if(Auth::user()->is_active == 1)

       @if($package->expired_on>=Carbon\Carbon::today())

            {!! Form::open([ 'route' => 'post-job.store', 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate', 'autocomplete' => 'off']) !!}
            <input type="hidden" name="scat_pk_no" value="{{request()->get('category') ?? ''}}" />
            <fieldset>
            <div class="section postdetails">
            <h4>Sell an item or service <span class="pull-right">* Mandatory Fields</span></h4>
            <div class="form-group selected-product">
                <ul class="select-category list-inline">
                <li>
                <a href="{{route('ad-post',['type' => request()->type ?? null])}}">
                    <span class="select">
                        <img src="{{ asset('assets/images/icon/2.png')}}" alt="Images" class="img-fluid">
                    </span>
                    {{$subcat_info->parent_name ?? ''}}
                </a>
            </li>
            <li class="active">
                <a href="javascript:void(0)">{{$subcat_info->name ?? ''}}</a>
            </li>
        </ul>
        </div>

        @if(!empty($product_type_combo) && (count($product_type_combo) > 0) )
        <div class="row form-group brand-name {!! $errors->has('product_type') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Job Type<span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                    {!! Form::select('product_type', $product_type_combo, old('product_type'), ['class'=>'form-control select2', 'id' => 'product_type','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select product type', 'tabindex' => 4, 'id' => 'product_type_id' ]) !!}
                    {!! $errors->first('product_type', '<label class="help-block text-danger">:message</label>') !!}
                </div>

            </div>
        </div>
        @endif
        <div class="row form-group brand-name {!! $errors->has('location') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Division & City<span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                <select class="form-control" name="location" id="location" data-url="{{URL::to('get-area')}}">
                    @if($city_combo)
                    <optgroup label="City">
                        @foreach($city_combo as $kc => $city )
                        <option value="{{ $city->pk_no }}" data-type="city">{{$city->name}} City</option>
                        @endforeach
                    </optgroup>
                    @endif

                    @if($division_combo)
                    <optgroup label="Division">
                        @foreach($division_combo as $kd => $divi )
                        <option value="{{ $divi->pk_no }}" data-type="division">{{$divi->name}}</option>
                        @endforeach
                    </optgroup>
                    @endif
                </select>
                {!! $errors->first('location', '<label class="help-block text-danger">:message</label>') !!}
            </div>

        </div>
        </div>
        <div class="row form-group brand-name {!! $errors->has('area') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Local Area<span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                    {!! Form::select('area', $area_combo, old('area'), ['class'=>'form-control select2', 'id' => 'area','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select area', 'tabindex' => 4, 'id' => 'area_id', 'data-url' => URL::to('get-product-model') ]) !!}
                    {!! $errors->first('area', '<label class="help-block text-danger">:message</label>') !!}
                </div>

            </div>
        </div>
        <div class="row form-group add-title {!! $errors->has('title') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Title<span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                {!! Form::text('title', old('title'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'ex, Sony Xperia dual sim 100% brand new','minlength' => '10', 'data-validation-minlength-message' => 'Minimum 10 characters', 'maxlength' => '60',  'data-validation-maxlength-message' => 'Maximum 60 characters', 'autocomplete' => 'off', 'tabindex' => 1]) !!}
                {!! $errors->first('title', '<label class="help-block text-danger">:message</label>') !!}
            </div>
        </div>
        </div>


        @include('ad_post._photo_upload')


        <div class="row form-group {!! $errors->has('business_function') ? 'error' : '' !!}">
            <label class="col-sm-3 ">Business Function <span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                {!! Form::select('business_function', $business_function_combo, old('business_function') ?? '', ['class'=>'form-control select2', 'id' => 'business_function','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select one', 'tabindex' => 4, 'id' => 'business_function']) !!}
                {!! $errors->first('business_function', '<label class="help-block text-danger">:message</label>') !!}
            </div>
        </div>
        </div>


        <div class="row form-group {!! $errors->has('role') ? 'error' : '' !!}">
            <label class="col-sm-3 ">Role / Designation<span class="required">*</span></label>
            <div class="col-sm-9">
                <div class="controls">
                {!! Form::text('role', old('role'), [ 'class' => 'form-control', 'placeholder' => 'Role / Designation','minlength' => '2','data-validation-required-message' => 'This field is required', 'data-validation-minlength-message' => 'Minimum 2 characters', 'maxlength' => '60',  'data-validation-maxlength-message' => 'Maximum 60 characters', 'autocomplete' => 'off', 'tabindex' => 1]) !!}
                {!! $errors->first('role', '<label class="help-block text-danger">:message</label>') !!}
            </div>
        </div>
        </div>

        <div class="row form-group {!! $errors->has('receive_applications_via') ? 'error' : '' !!}">
            <label class="col-sm-3 ">Receive Response<span class="required">*</span> </label>
            <div class="col-sm-9">
                <div class="controls">
                {!! Form::select('receive_applications_via', $receive_app_via_combo, old('receive_applications_via') ?? 'dashboard', ['class'=>'form-control select2', 'id' => 'receive_applications_via','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select one', 'tabindex' => 4, 'id' => 'area_id']) !!}
                {!! $errors->first('receive_applications_via', '<label class="help-block text-danger">:message</label>') !!}
            </div>
        </div>
        </div>

        <div class="row form-group select-price {!! $errors->has('price') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Salary (per month) (Tk)<span class="required">*</span></label>
            <div class="col-sm-9">
            <div class="row">
            <div class="col-sm-6">
                <div class="controls">
                    {!! Form::number('price', old('price'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'From','minlength' => '0',  'data-validation-minlength-message' => 'Minimum 0 disit', 'maxlength' => '10', 'data-validation-maxlength-message' => 'Maxlength 10 disit', 'tabindex' => 3]) !!}
                    {!! $errors->first('price', '<label class="help-block text-danger">:message</label>') !!}
                </div>
            </div>
            <div class="col-sm-6">
                <div class="controls">
                    {!! Form::number('price_to', old('price_to'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'To','minlength' => '0',  'data-validation-minlength-message' => 'Minimum 0 disit', 'maxlength' => '10', 'data-validation-maxlength-message' => 'Maxlength 10 disit', 'tabindex' => 3]) !!}
                    {!! $errors->first('price_to', '<label class="help-block text-danger">:message</label>') !!}
                </div>
            </div>
        </div>
        </div>
        </div>




        <div class="row form-group {!! $errors->has('total_vacancies') ? 'error' : '' !!}">
        <label class="col-sm-3 ">Total vacancies<span class="required">*</span></label>
        <div class="col-sm-9">
            <div class="controls">
            {!! Form::number('total_vacancies', old('total_vacancies'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Total  vacancies' , 'autocomplete' => 'off', 'tabindex' => 1]) !!}
            {!! $errors->first('total_vacancies', '<label class="help-block text-danger">:message</label>') !!}
        </div>
        </div>
        </div>


        <div class="row form-group {!! $errors->has('deadline') ? 'error' : '' !!}">
        <label class="col-sm-3 ">Application Deadline<span class="required">*</span></label>
        <div class="col-sm-9">
            <div class="controls">
            {!! Form::date('deadline', old('deadline'), [ 'class' => 'form-control', 'placeholder' => 'Appliaction deadline', 'data-validation-required-message' => 'This field is required', 'autocomplete' => 'off', 'tabindex' => 1]) !!}
            {!! $errors->first('deadline', '<label class="help-block text-danger">:message</label>') !!}
        </div>
        </div>
        </div>


        <div class="row form-group item-description {!! $errors->has('description') ? 'error' : '' !!}">
            <label class="col-sm-3 label-title">Description<span class="required">*</span></label>
            <div class="col-sm-9">
            <div class="controls">
                {!! Form::textarea('description', null, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Write a few  lines about your products. Also mention your product brand.','minlength' => '50', 'maxlength' => '4000', 'data-validation-minlength-message' => 'Minimum 100 characters', 'data-validation-maxlength-message' => 'Minimum 4000 characters', 'tabindex' => 15, 'autocomplete' => 'off']) !!}
                {!! $errors->first('description', '<label class="help-block text-danger">:message</label>') !!}
            </div>

        </div>
        </div>
        <div class="row">
            <div class="col-sm-9 offset-sm-3">
            <p>4000 characters left</p>
        </div>
        </div>

        <div class="section company-info">
            @include('ad_post._company_info_ad_jobpost')
        </div>

        <div class="section company-info">
            @include('ad_post._candidate_preference_ad_jobpost')
        </div>

        <!-- section -->
        <div class="section seller-info">
        @include('ad_post._personal_info_ad_post')
        </div>
        <!-- section -->

        <div class="checkbox section form-group {!! $errors->has('is_terms_condition') ? 'error' : '' !!}">
        <div class="controls">
            <label for="is_terms_condition">

                <input type="checkbox" name="is_terms_condition" id="is_terms_condition" value="1"  data-validation-required-message="Must be checked terms of use" required>
                Send me Trade Email/SMS Alerts for people looking to buy mobile handsets in www By clicking "Post", you agree to our <a target="_blank" href="{{route('terms-conditions')}}">Terms of Use</a> and <a target="_blank" href="{{route('privacy-policy')}}">Privacy Policy</a> and acknowledge that you are the rightful owner of this item and using Trade to find a genuine buyer.
            </label>
        </div>
        <button type="submit" class="btn btn-primary mt-3 ">Post Your Ad</button>
        </div>
        </fieldset>
        {!! Form::close() !!}
        <!-- form -->
        @else
            <div class="alert alert-warning">
            <strong>Warning!</strong> Your Package Date has been Expired ! You should renew or upgrade your package.
            </div>
        @endif
@else
<div class="alert alert-warning">
  <strong>Warning!</strong> You Account has been inactived
</div>
@endif

@else
<div class="alert alert-warning">
  <strong>Warning!</strong> Your Ad post limit 0.
   <a href="{{ route('packages') }}">You should upgrade your package</a>
</div>
@endif

</div>
<!-- quick-rules -->
<div class="col-lg-4">
 <div class="section quick-rules">
  <h4>Quick rules</h4>
  <p class="lead">Posting an ad on <a href="#">Adsclassi.com</a> is free! However, all ads must follow our rules:</p>
  <ul>
   <li>Make sure you post in the correct category.</li>
   <li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
   <li>Do not upload pictures with watermarks.</li>
   <li>Do not post ads containing multiple items unless it's a package deal.</li>
   <li>Do not put your email or phone numbers in the title or description.</li>
   <li>Make sure you post in the correct category.</li>
</ul>
</div>
</div>
<!-- quick-rules -->

</div>
<!-- photos-ad -->
</div>
</div>
<!-- container -->
</section>




@endsection

@push('custom_js')
<script type="text/javascript" src="{{ asset('assets/js/pages/ad_post.js')}}?v=1"></script>
<script src="{{ URL::asset('assets/fileupload/bootstrap-fileupload.min.js') }}"></script>
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

{!! Toastr::message() !!}

@endpush
