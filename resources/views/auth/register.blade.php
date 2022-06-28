@extends('layouts.app')

@push('custom_css')
<link rel="stylesheet" type="text/css" href="{{asset('/assets/css/forms/validation/form-validation.css')}}">
<link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
<style type="text/css">
    .user-account input {margin-bottom: 0px !important;}
</style>
@endpush

@section('content')
<!-- signup-page -->
<section id="main" class="clearfix user-page">
    <div class="container">
        <div class="row">
            <!-- user-login -->         
            <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                <div class="user-account">
                    <h2 class="text-center">Create an Account</h2>

                    {!! Form::open([ 'route' => 'register', 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate']) !!}
                    @csrf

                    <div class="form-group {!! $errors->has('name') ? 'error' : '' !!}">
                        <label class="label-title">Name<span class="required">*</span></label>
                        <div class="controls">
                        {!! Form::text('name', null, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Name', 'tabindex' => 1]) !!}
                        {!! $errors->first('name', '<label class="help-block text-danger">:message</label>') !!}
                      </div>
                    </div>
                    <div class="form-group">
                        <label class="label-title">Email<span class="required">*</span></label>
                        <div class="controls">
                        {!! Form::text('email', null, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'email', 'tabindex' => 1]) !!}
                        {!! $errors->first('email', '<label class="help-block text-danger">:message</label>') !!}
                        </div>
                    </div>
                    <div class="form-group">
                      <label class="label-title">Password<span class="required">*</span></label>
                       <div class="controls">
                     {!! Form::password('password', [ 'class' => 'form-control mb-1', 'minlength' => '6', 'data-validation-required-message' => 'This field is required', 'data-validation-minlength-message' => 'Minimum 6 characters', 'placeholder' => 'Enter  password', 'tabindex' => 1, 'autocomplete' => 'off']) !!}
                     {!! $errors->first('password', '<label class="help-block text-danger">:message</label>') !!}
                    </div>
                 </div>
                 <div class="form-group">
                    <label class="label-title">Confirm Password<span class="required">*</span></label>
                       <div class="controls">
                    {!! Form::password('password_confirmation', [ 'class' => 'form-control mb-1', 'minlength' => '6', 'data-validation-matches-match' => 'password', 'data-validation-matches-message' => 'Must match with password', 'data-validation-minlength-message' => 'Minimum 6 characters', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Enter confirm password', 'tabindex' => 1, 'autocomplete' => 'off']) !!}

                    {!! $errors->first('password_confirmation', '<label class="help-block text-danger">:message</label>') !!}
                    </div>
                </div>
                <div class="form-group row">
                        <?php
                        $n1 = rand(1, 99);
                        $n2 = rand(1, 9);
                        ?>
                <div class="col-md-12">
                 <label>Captcha <span class="text-danger">*</span></label><br/>
                <p>Please Enter The Answer Bellow: {{$n1}} + {{$n2}} = ?</p>
                            <span class="wpcf7-form-control-wrap control-group last-name">
               <input type="hidden" value="{{$n1}}" name="n1" id="n1">
               <input type="hidden" value="{{$n2}}" name="n2" id="n2">
               <input class="form-control" type="text" name="math_captcha"
                      placeholder="Enter The Answer" id="captcha_input"
                      data-validation-required-message="* Please Do The Math"
                      autocomplete="off">
               <p class="help-block text-danger"></p>
               <p id="error_msg"
                  style="color: red;display: none">Please Enter Correct Answer</p>
                @error('math_captcha')
               <span class="invalid-feedback text-danger" role="alert">
               <strong>{{ $message }}</strong>
               </span>
               @enderror
            </span>
                        </div>
                    </div>
                {{--
                <div class="form-group">
                    {!! Form::text('mobile', null, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'Mobile', 'tabindex' => 1]) !!}
                    {!! $errors->first('mobile', '<label class="help-block text-danger">:message</label>') !!}

                </div> 
                <div class="checkbox">
                    <label class="pull-left">
                       <input type="checkbox" name="termsconditions" id="termsconditions"> By signing up for an account you agree to our Terms and Conditions </label>
                </div>--}}
                <button type="submit" class="btn" id="cont_btn" style="width: 100%;">Registration</button>    
                {!! Form::close() !!}
            </div>
        </div><!-- user-login -->           
    </div><!-- row -->  
</div><!-- container -->
</section><!-- signup-page -->
@endsection

@push('custom_js')
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}
<script type="text/javascript">
        jQuery(document).ready(function ($) {
            let n1 = parseInt($('#n1').val());
            let n2 = parseInt($('#n2').val());
            let captcha = $('#captcha_input');

            captcha.keyup(function () {
                captcha.next().next().hide();
            })

            $('#captcha_input').keyup(function (e) {
                e.preventDefault();

                if (n1 + n2 !== parseInt(captcha.val())) {
                    captcha.next().next().show();
                }
            });

        })

</script>
@endpush
