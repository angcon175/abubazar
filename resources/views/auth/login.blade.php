@extends('layouts.app')

@push('custom_css')
<link rel="stylesheet" type="text/css" href="{{asset('/assets/css/forms/validation/form-validation.css')}}">
@endpush

@section('content')
<section id="main" class="clearfix user-page">
    <div class="container">
        <div class="row text-center">
            <!-- user-login -->         
            <div class="col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                <div class="user-account">
                    <h2>User Login</h2>
                    <!-- form -->
                    {!! Form::open([ 'route' => 'login', 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate']) !!}
                    @csrf
                    <input type="hidden" name="referer" value="{{ request()->get('referer') ?? '' }}">
                    <div class="form-group">
                       {!! Form::text('email', null, [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'placeholder' => 'email', 'tabindex' => 1]) !!}
                       {!! $errors->first('email', '<label class="help-block text-danger">:message</label>') !!}
                   </div>
                   <div class="form-group">
                    {!! Form::password('password', [ 'class' => 'form-control mb-1', 'minlength' => '6', 'data-validation-required-message' => 'This field is required', 'data-validation-minlength-message' => 'Minimum 6 characters', 'placeholder' => 'Enter password', 'tabindex' => 2, 'autocomplete' => 'off']) !!}
                    {!! $errors->first('password', '<label class="help-block text-danger">:message</label>') !!}
                </div>
                <button type="submit" class="btn" style="width: 100%;">Login</button> 
                 <p class="mt-2 loginor">Or</p>
                <a href="login/facebook" class="btn" style="background: #3b5999;width: 100%;"><i class="fa fa-facebook"></i> Continue with Facebook</a>   
                <a href="login/google" class="btn" style="background: #750000;width: 100%;"><i class="fa fa-google"></i> Continue with Google</a>  
                {!! Form::close() !!}


                <!-- forgot-password -->
                <!-- <div class="user-option">
                       <div class="checkbox pull-left">
                        <label for="logged"><input type="checkbox" name="logged" id="logged"> Keep me logged in </label>
                    </div>
                     <div class="forgot-password">
                        <a href="javascript:void(0)">Forgot password ?</a>
                    </div>
                </div> -->
            </div>
            <a href="{{route('register')}}" class="btn-primary">Create a New Account</a>
        </div><!-- user-login -->           
    </div><!-- row -->  
</div><!-- container -->
</section><!-- signin-page -->
@endsection


@push('custom_js')
<script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
@endpush
