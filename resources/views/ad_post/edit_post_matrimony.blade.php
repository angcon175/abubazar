@extends('layouts.app')
<?php

     $row      = $data['row'];
     $subcat_info                 = $data['subcat_info'] ?? null ;
     $additional_feature_mobile   = Config::get('static_arrays.additional_feature_mobile') ?? array();
     $car_body_type               = Config::get('static_arrays.car_body_type') ?? array();
     $fuel_type                   = Config::get('static_arrays.fuel_type') ?? array();
     $brand_combo                 = $data['brand_combo'];
     $city_combo                  = $data['city_combo'];
     $division_combo              = $data['division_combo'];
     $area_combo                  = $data['selected_area_combo'] ?? array();
     $product_type_combo          = $data['product_type_combo'] ?? array();
     $subcat_id                   = request()->get('category') ?? 0;
     $prod_feature_arr            = $row->prod_feature_arr ?? array();
     $fuel_type_arr               = $row->fuel_type_arr ?? array();
     // $prod_feature_arr             = array('Camera','3G','4G');


     if (is_array($prod_feature_arr)) {
         foreach ($prod_feature_arr as $key => $val) {
             $prod_feature_arr[$key] = trim($val);
         }
     }

     if (is_array($fuel_type_arr)) {
         foreach ($fuel_type_arr as $key => $val) {
             $fuel_type_arr[$key] = trim($val);
         }
     }

     // echo "<pre>";
     // print_r($fuel_type_arr);
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
               {!! Form::open([ 'route' => ['update-post-service.update',$row->pk_no], 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate', 'autocomplete' => 'off']) !!}
               <input type="hidden" name="scat_pk_no" value="{{request()->get('category') ?? ''}}" />
               <input type="hidden" name="sell_type" value="sell" />
               <fieldset>
                  <div class="section postdetails">
                     <h4>Sell an item or service <span class="pull-right">* Mandatory Fields</span></h4>
                     <div class="form-group selected-product">
                        <ul class="select-category list-inline">
                           <li>
                              <a href="{{route('edit-post',['id' => $row->pk_no, 'type' => 'general', 'category' => $row->f_scat_pk_no ])}}">
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


                     <div class="row form-group brand-name {!! $errors->has('location') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Division & City<span class="required">*</span></label>
                        <div class="col-sm-9">
                            <div class="controls">
                              <select class="form-control" name="location" id="location" data-url="{{ URL::to('get-area') }}">
                                   @if($city_combo)
                                        <optgroup label="City">
                                             @foreach($city_combo as $kc => $city )
                                                  <option value="{{ $city->pk_no }}" data-type="city" @if($row->city_division == 'city') {{ $row->area->city->pk_no == $city->pk_no ? 'selected' : '' }} @endif >{{$city->name}} City</option>
                                             @endforeach
                                      </optgroup>
                                   @endif

                                   @if($division_combo)
                                        <optgroup label="Division">
                                             @foreach($division_combo as $kd => $divi )
                                                  <option value="{{ $divi->pk_no }}" data-type="division" @if($row->city_division == 'division') {{ $row->area->division->pk_no == $divi->pk_no ? 'selected' : '' }} @endif>{{$divi->name}}</option>
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
                                {!! Form::select('area', $area_combo, $row->area_id, ['class'=>'form-control js-example-basic-single', 'id' => 'area','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select area', 'tabindex' => 4, 'id' => 'area_id', 'data-url' => URL::to('get-product-model') ]) !!}
                                {!! $errors->first('area', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                        </div>
                     </div>
                     <div class="row form-group add-title {!! $errors->has('title') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Title for your Ad<span class="required">*</span></label>
                        <div class="col-sm-9">
                            <div class="controls">
                           {!! Form::text('title', $row->ad_title, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'ex, Sony Xperia dual sim 100% brand new','minlength' => '2', 'data-validation-minlength-message' => 'Minimum 2 characters', 'maxlength' => '150',  'data-validation-maxlength-message' => 'Maximum 150 characters', 'autocomplete' => 'off', 'tabindex' => 1]) !!}
                           {!! $errors->first('title', '<label class="help-block text-danger">:message</label>') !!}
                       </div>
                        </div>
                     </div>


                     @include('ad_post._photo_upload',$row->allPhotos)





                     <div class="row form-group select-price {!! $errors->has('price') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Price<span class="required">*</span></label>
                        <div class="col-sm-9">
                           <label>TK</label>
                           <div class="controls">
                           {!! Form::number('price', $row->price, [ 'class' => 'form-control',  'placeholder' => 'ex, 120', 'tabindex' => 3]) !!}
                           {!! $errors->first('price', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                           <input type="checkbox" name="price_negotiable" value="1" id="negotiable"  {{ $row->is_negotiable == '1' ? 'checked' : ''}}>
                           <label for="negotiable">Negotiable </label>
                        </div>
                     </div>




                     <div class="row form-group item-description {!! $errors->has('description') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Description<span class="required">*</span></label>
                        <div class="col-sm-9">
                                 <div class="controls">
                                {!! Form::textarea('description', $row->description, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'WriWrite a few  lines about your products. Also mention your product brand.','minlength' => '50', 'maxlength' => '4000', 'data-validation-minlength-message' => 'Minimum 100 characters', 'data-validation-maxlength-message' => 'Minimum 4000 characters', 'tabindex' => 15, 'autocomplete' => 'off']) !!}
                                {!! $errors->first('description', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                        </div>
                     </div>
                     <div class="row">
                        <div class="col-sm-9 offset-sm-3">
                           <p>4000 characters left</p>
                        </div>
                     </div>

                     <!-- section -->
                     <div class="section seller-info">
                       @include('ad_post._personal_info_ad_post', $row)
                     </div>
                     <!-- section -->

                       <div class="checkbox section form-group {!! $errors->has('is_terms_condition') ? 'error' : '' !!}">
                           <div class="controls">
                        <label for="is_terms_condition" class="{{ $row->is_terms_condition == '1' ? 'checked' : '' }}">

                        <input type="checkbox" name="is_terms_condition" id="is_terms_condition" value="1"  data-validation-required-message="Must be checked terms of use" required {{ $row->is_terms_condition == '1' ? 'checked' : '' }}>
                        Send me Trade Email/SMS Alerts for people looking to buy mobile handsets in www By clicking "Post", you agree to our <a target="_blank" href="{{route('terms-conditions')}}">Terms of Use</a> and <a target="_blank" href="{{route('privacy-policy')}}">Privacy Policy</a> and acknowledge that you are the rightful owner of this item and using Trade to find a genuine buyer.
                        </label>
                        </div>
                        <button type="submit" class="btn btn-primary mt-3 ">Update Your Ad</button>
                     </div>
                     </fieldset>
               {!! Form::close() !!}
               <!-- form -->
            </div>
            <!-- quick-rules -->
            <div class="col-lg-4">
               <div class="section quick-rules">
                  <h4>Quick rules</h4>
                  <p class="lead">Posting an ad on <a href="#">Dalalbd.com</a> is free! However, all ads must follow our rules:</p>
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
<script type="text/javascript" src="{{ asset('assets/js/pages/ad_post.js')}}"></script>
<script src="{{ URL::asset('assets/fileupload/bootstrap-fileupload.min.js') }}"></script>
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

{!! Toastr::message() !!}

@endpush
