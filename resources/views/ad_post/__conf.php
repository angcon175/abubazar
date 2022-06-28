
	<!-- main -->
	<section id="main" class="clearfix ad-details-page">
		<div class="container">
		
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Ad Post Area</li>
				</ol><!-- breadcrumb -->						
			</div><!-- banner -->
			<div class="adpost-details mt-15">
				<div class="row">	
					<div class="col-lg-8">
						{!! Form::open([ 'route' => 'my-profile-update', 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate']) !!}
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
									<div class="row form-group">
										<label class="col-sm-3">Type of ad<span class="required">*</span></label>
										<div class="col-sm-9 user-type">
											<input type="radio" name="sellType" value="sell" id="sell" checked> <label for="sell">I want to sell </label>
											<input type="radio" name="sellType" value="buy" id="buy"> <label for="buy">want to buy</label>	
										</div>
									</div>
									<div class="row form-group add-title {!! $errors->has('name') ? 'error' : '' !!}">
										<label class="col-sm-3 label-title">Title for your Ad<span class="required">*</span></label>
										<div class="col-sm-9">
											{!! Form::text('name', old('name'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'ex, Sony Xperia dual sim 100% brand new', 'tabindex' => 1]) !!}
											{!! $errors->first('name', '<label class="help-block text-danger">:message</label>') !!}
											
										</div>
									</div>
									<div class="row form-group add-image">
										<label class="col-sm-3 label-title">Photos for your ad</label>
										<div class="col-sm-9">
											<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload<span>You can add upto 5 images.</span></h5>
											<div class="row">
                        <div class="col-md-3 col-sm-4 col-6">
                        	  <div class="imgbox">
                              <div class="fileupload @if(!empty($slider->image_1)){{'fileupload-exists'}}@else{{'fileupload-new'}}@endif" data-provides="fileupload" >
                              <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 150px;">

                                @if(!empty($slider->image_1))
                                <img src="{{asset('uploads/slider/'.$slider->image_1)}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                                @endif
                              </span>
                              <span>
                                <label class="btn btn-rounded btn-file btn-sm">
                                  <span class="fileupload-new">
                                    <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                                  </span>
                                  <span class="fileupload-exists">
                                    <i class="fa fa-picture-o"></i> Change
                                  </span>
                                  <input type="file" name="image_1">
                                </label>
                                <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                                  <i class="fa fa-times"></i> Remove
                                </a>
                              </span>
                            </div>
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-6">
                        	<div class="imgbox">
                              <div class="fileupload @if(!empty($slider->image_2)){{'fileupload-exists'}}@else{{'fileupload-new'}}@endif" data-provides="fileupload" >
                              <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 150px;">

                                @if(!empty($slider->image_2))
                                <img src="{{asset('uploads/slider/'.$slider->image_2)}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                                @endif
                              </span>
                              <span>
                                <label class="btn  btn-rounded btn-file btn-sm">
                                   <span class="fileupload-new">
                                    <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                                  </span>
                                  <span class="fileupload-exists">
                                    <i class="fa fa-picture-o"></i> Change
                                  </span>
                                  <input type="file" name="image_2">
                                </label>
                                <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                                  <i class="fa fa-times"></i> Remove
                                </a>
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-6">
                        	<div class="imgbox">
                              <div class="fileupload @if(!empty($slider->image_3)){{'fileupload-exists'}}@else{{'fileupload-new'}}@endif" data-provides="fileupload" >
                              <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 150px;">

                                @if(!empty($slider->image_3))
                                <img src="{{asset('uploads/slider/'.$slider->image_3)}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                                @endif
                              </span>
                              <span>
                                <label class="btn  btn-rounded btn-file btn-sm">
                                   <span class="fileupload-new">
                                    <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                                  </span>
                                  <span class="fileupload-exists">
                                    <i class="fa fa-picture-o"></i> Change
                                  </span>
                                  <input type="file" name="image_3">
                                </label>
                                <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                                  <i class="fa fa-times"></i> Remove
                                </a>
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-6">
                        	<div class="imgbox">
                              <div class="fileupload @if(!empty($slider->image_4)){{'fileupload-exists'}}@else{{'fileupload-new'}}@endif" data-provides="fileupload" >
                              <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 150px;">

                                @if(!empty($slider->image_4))
                                <img src="{{asset('uploads/slider/'.$slider->image_4)}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                                @endif
                              </span>
                              <span>
                                <label class="btn btn-rounded btn-file btn-sm">
                                   <span class="fileupload-new">
                                    <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                                  </span>
                                  <span class="fileupload-exists">
                                    <i class="fa fa-picture-o"></i> Change
                                  </span>
                                  <input type="file" name="image_4">
                                </label>
                                <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                                  <i class="fa fa-times"></i> Remove
                                </a>
                              </span>
                            </div>
                           </div>
                        </div>
                      </div> 
										</div>
									</div>
									<div class="row form-group select-condition">
										<label class="col-sm-3">Condition<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="radio" name="using_condition" value="new" id="new" checked> 
											<label for="new">New</label>
											<input type="radio" name="using_condition" value="used" id="used"> 
											<label for="used">Used</label>
										</div>
									</div>
									<div class="row form-group select-price">
										<label class="col-sm-3 label-title">Price<span class="required">*</span></label>
										<div class="col-sm-9">
											<label>TK</label>
											<input type="text" class="form-control" id="text1">
											<input type="radio" name="price" value="negotiable" id="negotiable">
											<label for="negotiable">Negotiable </label>
										</div>
									</div>
									<div class="row form-group brand-name">
										<label class="col-sm-3 label-title">Brand Name<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" class="form-control" placeholder="ex, Sony Xperia">
										</div>
									</div>
									<div class="row form-group additional">
										<label class="col-sm-3 label-title">Additional<span class="required">*</span></label>
										<div class="col-sm-9">
											<div class="checkbox">
												<label for="camera"><input type="checkbox" name="camera" id="camera"> Camera</label>
												<label for="dual-sim"><input type="checkbox" name="dual-sim" id="dual-sim"> Dual SIM</label>
												<label for="keyboard"><input type="checkbox" name="keyboard" id="keyboard">  Physical keyboard</label>
												<label for="3g"><input type="checkbox" name="3g" id="3g"> 3G</label>
>>>>>>> e6331304d5ec9f4a8bd1772cd8358cea72480c0b

                     <div class="row form-group {!! $errors->has('engine_capacity') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Engine capacity (cc)</label>
                        <div class="col-sm-9">
                            <div class="controls">
                                
                                {!! Form::number('engine_capacity', old('engine_capacity'), ['class'=>'form-control', 'id' => 'engine_capacity', 'placeholder' => 'Engine capacity', 'data-validation-required-message' => 'This field is required', 'maxlength' => '99', 'data-validation-maxlength-message' => 'Maxlength 99 digit', 'tabindex' => 12, 'autocomplete' => 'off']) !!}
                                {!! $errors->first(' engine_capacity', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>
                     <div class="row form-group model-name {!! $errors->has('kilometers_run') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Kilometers run (km)</label>
                        <div class="col-sm-9">
                            <div class="controls">
                                
                                {!! Form::number('kilometers_run', null, ['class'=>'form-control', 'id' => 'kilometers_run', 'placeholder' => 'Kilometers run', 'maxlength' => '9999999999',  'data-validation-required-message' => 'This field is required', 'data-validation-maxlength-message' => 'Maxlength 9999999999 digit', 'tabindex' => 13, 'autocomplete' => 'off' ]) !!}
                                {!! $errors->first('kilometers_run', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>

                     {{--<div class="row form-group additional">
                        <label class="col-sm-3 label-title">Additional<span class="required">*</span></label>
                        <div class="col-sm-9">
                           <div class="checkbox">
                              @if($additional_feature_mobile)
                              @foreach($additional_feature_mobile as $kf => $feature)
                              <label for="{{$kf}}"><input type="checkbox" name="{{$kf}}" id="{{$kf}}"> {{$feature}}</label>
                              @endforeach
                              @endif
                           </div>
                        </div>
                     </div> --}}
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
                  </div>
                  <!-- section -->
                  <div class="section seller-info">
                     <h4>Seller Information</h4>
                     <div class="row form-group">
                        <label class="col-sm-3 label-title">I am</label>
                        <div class="col-sm-9">
                           <input type="radio" name="seller_type" value="Individual" id="individual" {{ Auth::user()->seller_type == 'Individual' ? 'checked' : '' }}>
                           <label for="individual">Individual</label>
                           <input type="radio" name="seller_type" value="Dealer" id="dealer" {{  Auth::user()->seller_type == 'Dealer' ? 'checked' : '' }} > 
                           <label for="dealer">Dealer</label>
                        </div>
                     </div>
                     <div class="row form-group {!! $errors->has('name') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Your Name<span class="required">*</span></label>
                        <div class="col-sm-9">
                            <div class="controls">
                            {!! Form::text('name', Auth::user()->name, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'maxlength' => '50', 'data-validation-maxlength-message' => 'Maxlength 50 characters', 'placeholder' => 'Enter name', 'readonly' => 'true', 'tabindex' => 17]) !!}
                            {!! $errors->first('name', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>
                     <div class="row form-group {!! $errors->has('email') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Your Email ID<span class="required">*</span></label>
                        <div class="col-sm-9">
                            <div class="controls">
                            {!! Form::text('email', Auth::user()->email, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'readonly' => 'true', 'maxlength' => '50', 'data-validation-maxlength-message' => 'Maxlength 50 characters', 'placeholder' => 'Enter email', 'tabindex' => 18]) !!}
                            {!! $errors->first('email', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>
                     <div class="row form-group {!! $errors->has('mobile') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Mobile Number<span class="required">*</span></label>
                        <div class="col-sm-9">
                           <div>Enter the OTP sent to <span id="number_otp_1"></span> <button type="button" class="text-info">Edit</button> </div>
                            <div class="controls check_div_otp1">
                              <div class="input-group ">
                                {!! Form::number('mobile', Auth::user()->mobile, [ 'class' => 'form-control', 'id' => 'mobile', 'data-validation-required-message' => 'This field is required','minlength' => '11', 'maxlength' => '11', 'data-validation-minlength-message' => 'Minimum 11 digit', 'data-validation-maxlength-message' => 'Maximum 11 digit', 'placeholder' => 'Enter mobile number', 'tabindex' => 19 , 'autocomplete' => 'off' ]) !!}
                              <div class="input-group-append cp">
                                <span class="input-group-text check_otp1" data-url="{{URL::to('check-otp')}}">Add</span>
                              </div>
                            </div>
                            {!! $errors->first('mobile', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                            <div class="controls verify_div_otp1">
                            <div class="input-group">
                              <input type="number" name="" class="form-control" autocomplete="off" placeholder="Enter OTP (4 digits)" maxlength="4" />
                              <div class="input-group-append cp">
                                <span class="input-group-text" id="verify_otp1" data-url="{{URL::to('verify-otp')}}">Verify</span>
                              </div>
                            </div>
                            <div class="text-success mt-1 "><button type="button" class="check_otp1 text-success" disabled="true">Resent OTP </button> <span id="counter1">00:59</span></div>
                            </div>


                            
                            <input type="checkbox" name="is_hide_mobile1" value="1" id="is_hide_mobile1" >
                            <label for="negotiable">Hide Phone Number </label>
                            <span class="error err_mobile text-info" style="display: none; display: block;">test</span>
                        </div>
                     </div>
                     <div class="row form-group {!! $errors->has('mobile1') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Mobile Number</label>
                        <div class="col-sm-9">
                            <div class="controls">
                              <div class="input-group">
                            {!! Form::number('mobile1', Auth::user()->mobile1, [ 'class' => 'form-control', 'minlength' => '11', 'maxlength' => '11', 'data-validation-minlength-message' => 'Minimum 11 digit', 'data-validation-maxlength-message' => 'Maximum 11 digit', 'placeholder' => 'Enter another number', 'tabindex' => 19 , 'autocomplete' => 'off']) !!}
                            {!! $errors->first('mobile1', '<label class="help-block text-danger">:message</label>') !!}
                              <div class="input-group-append cp">
                                <span class="input-group-text" id="basic-addon2">Add</span>
                              </div>
                            </div>
                            </div>
                            <input type="checkbox" name="is_hide_mobile1" value="1" id="is_hide_mobile1" >
                            <label for="negotiable">Hide Phone Number </label>
                        </div>
                     </div>
                     <div class="row form-group {!! $errors->has('address') ? 'error' : '' !!}">
                        <label class="col-sm-3 label-title">Address</label>
                        <div class="col-sm-9">
                            <div class="controls">
                            {!! Form::text('address', Auth::user()->address, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Enter address', 'minlength' => '5', 'data-validation-minlength-message' => 'Minimum 5 characters', 'maxlength' => '150', 'data-validation-maxlength-message' => 'Maxlength 150 characters', 'tabindex' => 20, 'autocomplete' => 'off' ]) !!}
                            {!! $errors->first('address', '<label class="help-block text-danger">:message</label>') !!}
                            </div>
                        </div>
                     </div>
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
                  <!-- section -->
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
<!-- main -->