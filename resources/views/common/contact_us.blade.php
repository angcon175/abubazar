@extends('layouts.app')
@push('custom_css')
<link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
@endpush
@section('content')
<section id="main" class="clearfix contact-us">
	<div class="container">
		<!-- breadcrumb -->
		<ol class="breadcrumb">
			<li><a href="{{url('/')}}">Home</a></li>
			<li>Contact</li>
		</ol><!-- breadcrumb -->						
		<!-- gmap -->
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d233520.86225269057!2d90.21459431738268!3d23.862531392997212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1605356934601!5m2!1sen!2sbd" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		<div class="corporate-info">
			<div class="row">
				<!-- contact-info -->
				<div class="col-md-4">
					<div class="contact-info">

						<h2>Corporate Info</h2>
						<address>
							<!-- <p><strong>adress: </strong>1234 Street Name, City Name, Country</p>
							<p><strong>Phone:</strong> <a href="#">(123) 456-7890</a></p> -->
							<p><strong>Email: </strong><a href="#">info@Adsclassi.com</a></p>
						</address>

						<ul class="social">
							<li><a target="_blank" href="https://www.facebook.com/DalalGroup/"><i class="fa fa-facebook"></i></a></li>
							<li><a href="javascript::void(0)"><i class="fa fa-twitter"></i></a></li>
							<li><a href="javascript::void(0)"><i style="color: #c1272d;" class="fa fa-youtube-play"></i></a></li>
						</ul>
					</div>
				</div><!-- contact-info -->
				
				<!-- feedback -->
				<div class="col-md-8">
					<div class="feedback">
						<h2>Send Us Your Feedback</h2>
						  	{!! Form::open([ 'route' => 'contact-us', 'method' => 'post', 'class' => 'form-contact', 'files' => false , 'novalidate', 'autocomplete' => 'off']) !!}
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="controls">
				                           {!! Form::text('name', old('name'), ['class'=>'form-control', 'id' => 'name', 'placeholder' => 'Name', 'data-validation-required-message' => 'This field is required', 'maxlength' => '60', 'data-validation-maxlength-message' => 'Maxlength 60 characters', 'tabindex' => 5]) !!}
				                           {!! $errors->first('name', '<label class="help-block text-danger">:message</label>') !!}

				                         </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="controls">
				                           {!! Form::email('email', old('email'), ['class'=>'form-control', 'id' => 'email', 'placeholder' => 'Email', 'data-validation-required-message' => 'This field is required', 'tabindex' => 5]) !!}
				                           {!! $errors->first('email', '<label class="help-block text-danger">:message</label>') !!}
				                         </div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<div class="controls">
										{!! Form::text('subject', old('subject'), ['class'=>'form-control', 'id' => 'subject', 'placeholder' => 'Subject', 'data-validation-required-message' => 'This field is required', 'tabindex' => 5]) !!}
				                           {!! $errors->first('subject', '<label class="help-block text-danger">:message</label>') !!}
				                         </div>
									</div> 
								</div> 
								<div class="col-sm-12">
									<div class="form-group">
										<div class="controls">
										{!! Form::textarea('message', old('message'), ['class'=>'form-control', 'id' => 'message', 'placeholder' => 'Message', 'data-validation-required-message' => 'This field is required', 'tabindex' => 5]) !!}
				                           {!! $errors->first('message', '<label class="help-block text-danger">:message</label>') !!}
				                         </div>
									</div>             
								</div>
								<div class="col-md-12">
									<div class="form-group">
									  <span style="display: inline;" id="random1"></span>
                                      <span style="display: inline;">&nbsp;+&nbsp;</span>
                                      <span style="display: inline;" id="random2"></span> = ? 
                                      <div class="controls">
										{!! Form::number('capt', old('capt'), ['class'=>'form-control', 'id' => 'usernumber', 'placeholder' => 'Result', 'data-validation-required-message' => 'This field is required', 'oninput' => 'checkInputValCapt(this)', 'tabindex' => 5]) !!}
				                           {!! $errors->first('capt', '<label class="help-block text-danger">:message</label>') !!}
				                         </div>
									</div> 
									<input type="hidden" name="randtotal" id="randtotal">
								</div>  
							</div>
							<div class="form-group">
								<button type="submit" class="btn">Submit Your Message</button>
							</div>
						{!! Form::close() !!}
					</div>				
				</div><!-- feedback -->				
			</div><!-- row -->
		</div>
	</div><!-- container -->
</section><!-- main -->


@endsection

@push('custom_js')
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}
 <script>
function differentProblem() {
  randomNum1 = Math.floor((Math.random()*10)+1);
  randomNum2 = Math.floor((Math.random()*10)+1);
  $("#random1").empty().append(randomNum1);
  $("#random2").empty().append(randomNum2);
  $("#usernumber").val("");
}

function checkInputValCapt(e){
  humanNumber = $(e).val();
  randomTotal = randomNum1 + randomNum2;
  $("#randtotal").val(randomTotal);
  if (randomTotal == humanNumber) {
    $(e).removeClass('err-input');
  }else{
    $(e).addClass('err-input');
  }
}

//Running a first time to get numbers set
$(document).ready(function() {
    differentProblem();
});

</script>
@endpush
