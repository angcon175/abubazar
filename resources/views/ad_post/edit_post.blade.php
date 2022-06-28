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
               {!! Form::open([ 'route' => ['update-post-general.update',$row->pk_no], 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate', 'autocomplete' => 'off']) !!}
               <input type="hidden" name="scat_pk_no" value="{{request()->get('category') ?? ''}}" />
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


                     <div class="row form-group">
                        <label class="col-sm-3">Type of ad<span class="required">*</span></label>
                        <div class="col-sm-9 user-type">
                           <input type="radio" name="sell_type" value="sell" id="sell" {{ $row->ad_type == 'sell' ? 'checked' : '' }}> <label for="sell">I want to sell </label>
                           <input type="radio" name="sell_type" value="buy" id="buy" {{ $row->ad_type == 'buy' ? 'checked' : '' }}> <label for="buy">I want to buy</label>
                        </div>
                     </div>
                     @if(count($product_type_combo) > 0 )
                    <div class="row form-group brand-name {!! $errors->has('product_type') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Product Type<span class="required">*</span></label>
                        <div class="col-sm-9">
                            <div class="controls">
                                {!! Form::select('product_type', $product_type_combo, $row->prod_type, ['class'=>'form-control js-example-basic-single', 'id' => 'product_type','data-validation-required-message' => 'This field is required', 'placeholder' => 'Select product type', 'tabindex' => 4, 'id' => 'product_type_id' ]) !!}
                                {!! $errors->first('product_type', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                        </div>
                     </div>
                     @endif
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
                           {!! Form::text('title', $row->ad_title, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'ex, Sony Xperia dual sim 100% brand new','minlength' => '10', 'data-validation-minlength-message' => 'Minimum 10 characters', 'maxlength' => '60',  'data-validation-maxlength-message' => 'Maximum 60 characters', 'autocomplete' => 'off', 'tabindex' => 1]) !!}
                           {!! $errors->first('title', '<label class="help-block text-danger">:message</label>') !!}
                       </div>
                        </div>
                     </div>


                     @include('ad_post._photo_upload',$row->allPhotos)

                     <div class="row form-group select-condition">
                        <label class="col-sm-3">Condition</label>
                        <div class="col-sm-9">
                           <input type="radio" name="using_condition" value="new" id="new" {{ $row->using_condition == 'new' ? 'checked' : '' }} >
                           <label for="new">New</label>
                           <input type="radio" {{ $row->using_condition == 'used' ? 'checked' : '' }} name="using_condition" value="used" id="used">
                           <label for="used" {{ $row->using_condition == 'used' ? 'checked' : '' }} >Used</label>
                           @if($subcat_id == 13 || ($subcat_id == 14) || ($subcat_id == 17) )
                           <input type="radio" {{ $row->using_condition == 'reconditioned' ? 'checked' : '' }} name="using_condition" value="reconditioned" id="reconditioned" {{ $row->using_condition == 'reconditioned' ? 'checked' : '' }}>
                           <label for="reconditioned">Reconditioned</label>
                           @endif
                        </div>
                     </div>

                     <div class="row form-group">
                        <label class="col-sm-3">Authenticity</label>
                        <div class="col-sm-9 user-type">
                            <input type="radio" name="authenticity" value="original" id="original" {{ $row->authenticity == 'original' ? 'checked' : '' }} > <label for="original">Original </label>
                            <input type="radio" name="authenticity" value="refurbished" id="refurbished"  {{ $row->authenticity == 'refurbished' ? 'checked' : '' }}> <label for="refurbished">Refurbished</label>
                        </div>
                     </div>

                     <div class="row form-group select-price {!! $errors->has('price') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Price<span class="required">*</span></label>
                        <div class="col-sm-9">
                           <label>TK</label>
                           <div class="controls">
                           {!! Form::number('price', $row->price, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'ex, 120','minlength' => '0',  'data-validation-minlength-message' => 'Minimum 0 disit', 'maxlength' => '10', 'data-validation-maxlength-message' => 'Maxlength 10 disit', 'tabindex' => 3]) !!}
                           {!! $errors->first('price', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                           <input type="checkbox" name="price_negotiable" value="1" id="negotiable"  {{ $row->is_negotiable == '1' ? 'checked' : ''}}>
                           <label for="negotiable">Negotiable </label>
                        </div>
                     </div>
                     <div class="row form-group brand-name {!! $errors->has('brand') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Brand</label>
                        <div class="col-sm-9">
                            <div class="controls">
                                {!! Form::select('brand', $brand_combo, $row->f_brand, ['class'=>'form-control js-example-basic-single2', 'id' => 'brand', 'placeholder' => 'Select brand', 'tabindex' => 4, 'id' => 'brand_id', 'data-url' => URL::to('get-product-model') ]) !!}
                                {!! $errors->first('brand', '<label class="help-block text-danger">:message</label>') !!}
                            </div>

                        </div>
                     </div>

                     @if($subcat_id == 13 || ($subcat_id == 14) || ($subcat_id == 21))
                     <div class="row form-group model-name {!! $errors->has('prod_model') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Model</label>
                        <div class="col-sm-9">
                            <div class="controls">
                           {!! Form::select('prod_model', array(), $row->f_model, ['class'=>'form-control js-example-basic-single2 prod_model_add', 'id' => 'prod_model', 'placeholder' => 'Select model', 'tabindex' => 5]) !!}
                           {!! $errors->first('prod_model', '<label class="help-block text-danger">:message</label>') !!}
                           </div>
                        </div>
                     </div>
                     @endif

                    @if($subcat_id == 20 || ($subcat_id == 22) || ($subcat_id == 27) )
                     <div class="row form-group model-name {!! $errors->has('custom_model') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Model</label>
                        <div class="col-sm-9">
                            <div class="controls">
                           {!! Form::text('custom_model', $row->model_name, ['class'=>'form-control custom_model', 'id' => 'custom_model', 'placeholder' => 'Product model name (max 60 characters )', 'maxlength' => '60', 'data-validation-maxlength-message' => 'Maxlength 60 characters', 'tabindex' => 5]) !!}
                           {!! $errors->first('custom_model', '<label class="help-block text-danger">:message</label>') !!}
                           </div>
                        </div>
                     </div>
                     @endif


                    @if($subcat_id == 13 || ($subcat_id == 14) || ($subcat_id == 21) )
                     <div class="row form-group {!! $errors->has('edition') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Edition </label>
                        <div class="col-sm-9">
                           <div class="controls">
                               {!! Form::text('edition', $row->edition, ['class'=>'form-control', 'id' => 'edition', 'placeholder' => 'Edition (Max 40 characters)', 'tabindex' => 6, 'autocomplete' => 'off', 'maxlength' => '40', 'data-validation-maxlength-message' => 'Maxlength 40 characters' ]) !!}
                               {!! $errors->first('edition', '<label class="help-block text-danger">:message</label>') !!}
                           </div>
                        </div>
                     </div>
                     @endif

                    @if($subcat_id == 13 || ($subcat_id == 14) || ($subcat_id == 17) )
                    <div class="row form-group {!! $errors->has('model_year') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Model year</label>
                        <div class="col-sm-9">
                           <div class="controls">
                               {!! Form::number('model_year', $row->model_year, ['class'=>'form-control', 'id' => 'model_year', 'maxlength' => '4', 'data-validation-maxlength-message' => 'Maxlength 4 digit',  'placeholder' => 'Model year', 'autocomplete' => 'off', 'tabindex' => 7]) !!}
                               {!! $errors->first('model_year', '<label class="help-block text-danger">:message</label>') !!}
                           </div>
                        </div>
                    </div>
                    @endif

                    @if($subcat_id == 13)
                    <div class="row form-group {!! $errors->has('registration_year') ? 'error' : '' !!}">
                       <label class="col-sm-3 label-title">Registration year </label>
                       <div class="col-sm-9">
                          <div class="controls">
                              {!! Form::number('registration_year', $row->registration_year, ['class'=>'form-control', 'id' => 'registration_year', 'placeholder' => 'Registration year', 'maxlength' => '4', 'data-validation-maxlength-message' => 'Maxlength 4 digit', 'autocomplete' => 'off', 'tabindex' => 8]) !!}
                              {!! $errors->first('registration_year', '<label class="help-block text-danger">:message</label>') !!}
                          </div>
                       </div>
                    </div>
                    @endif

                    @if($subcat_id == 13)
                    <div class="row form-group select-condition">
                       <label class="col-sm-3">Transmission<span class="required">*</span></label>
                       <div class="col-sm-9">
                          <input type="radio" name="transmission" value="Manual" id="Manual" {{ $row->transmission == 'Manual' ? 'checked' : '' }} ><label for="Manual">Manual</label>
                          <input type="radio" name="transmission" value="Other_transmission" id="Other_transmission" {{ $row->transmission == 'Other_transmission' ? 'checked' : '' }} ><label for="Other_transmission">Other transmission</label>
                          <input type="radio" name="transmission" value="Automatic" id="Automatic" {{ $row->transmission == 'Automatic' ? 'checked' : '' }} ><label for="Automatic">Automatic</label>
                       </div>
                    </div>
                    @endif

                    @if($subcat_id == 13)
                    <div class="row form-group  {!! $errors->has('body_type') ? 'error' : '' !!}">
                       <label class="col-sm-3 label-title">Body type </label>
                       <div class="col-sm-9">
                           <div class="controls">
                               {!! Form::select('body_type', $car_body_type, $row->body_type, ['class'=>'form-control js-example-basic-single', 'id' => 'body_type', 'placeholder' => 'Select body type', 'tabindex' => 10, 'id' => 'body_type_id' ]) !!}
                               {!! $errors->first('body_type', '<label class="help-block text-danger">:message</label>') !!}
                           </div>

                       </div>
                    </div>
                    @endif

                    @if($subcat_id == 13)
                    <div class="row form-group additional">
                        <label class="col-sm-3 label-title">Fuel type</label>
                        <div class="col-sm-9">
                           <div class="checkbox">
                              @if($fuel_type)
                                @foreach($fuel_type as $ft => $value)
                                <?php
                                $res = '';
                                    if(in_array($ft, $fuel_type_arr)){
                                        $res = 'checked';
                                    }else{
                                        $res = '';
                                    }
                                ?>

                                <label for="{{$ft}}" class="{{$res}}">
                                  <input type="checkbox" {{$res}} name="fuel_type[]" id="{{$ft}}" value="{{$ft}}" > {{$value}}</label>
                                @endforeach
                              @endif
                           </div>
                        </div>
                    </div>
                    @endif

                    @if($subcat_id == 13 )
                    <div class="row form-group {!! $errors->has('engine_capacity') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Engine capacity (cc)</label>
                        <div class="col-sm-9">
                            <div class="controls">

                                {!! Form::number('engine_capacity', $row->engine_capacity, ['class'=>'form-control', 'id' => 'engine_capacity', 'placeholder' => 'Engine capacity (maximum 99)', 'maxlength' => '99', 'data-validation-maxlength-message' => 'Maxlength 99 digit', 'tabindex' => 12, 'autocomplete' => 'off']) !!}
                                {!! $errors->first(' engine_capacity', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                    </div>
                    @endif

                    @if($subcat_id == 13 || ($subcat_id == 14) || ($subcat_id == 17) )
                     <div class="row form-group model-name {!! $errors->has('kilometers_run') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Kilometers run (km)</label>
                        <div class="col-sm-9">
                            <div class="controls">

                                {!! Form::number('kilometers_run', $row->kilometers_run, ['class'=>'form-control', 'id' => 'kilometers_run', 'placeholder' => 'Kilometers run', 'maxlength' => '9999999999', 'data-validation-maxlength-message' => 'Maxlength 9999999999 digit', 'tabindex' => 13, 'autocomplete' => 'off' ]) !!}
                                {!! $errors->first('kilometers_run', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>
                     @endif

                    @if($subcat_id == 21)
                     <div class="row form-group additional">
                         <label class="col-sm-3 label-title">Features</label>
                         <div class="col-sm-9">
                            <div class="checkbox">
                               @if($additional_feature_mobile)
                                 @foreach($additional_feature_mobile as $ft => $value)
                                    <?php
                                    $res = '';
                                        if(in_array($ft, $prod_feature_arr)){
                                            $res = 'checked';
                                        }else{
                                            $res = '';
                                        }
                                    ?>
                                 <label for="{{$ft}}" class="{{$res}}"><input type="checkbox" name="prod_feature[]" id="{{$ft}}" value="{{$ft}}"> {{$value}}</label>
                                 @endforeach
                               @endif
                            </div>
                         </div>
                     </div>
                     @endif

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
<script type="text/javascript" src="{{ asset('assets/js/pages/ad_post.js')}}?v=1"></script>
<script src="{{ URL::asset('assets/fileupload/bootstrap-fileupload.min.js') }}"></script>
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

{!! Toastr::message() !!}

@endpush
