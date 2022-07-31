<?php

$totime = new DateTime("now");
$code_exp_time = new DateTime($user->code_exp_time);


?>

@extends('layouts.frontend.layout_one')

@section('title',__('sign_up'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->default_background_path">
        {{ __('sign_up') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('sign_up') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <!-- registration section start   -->
    <section class="section registration">
        <div class="container">
            <div class="row d-flex justify-content-center">


                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="registration-form">
                        <h2 class="text-center text--heading-1 registration-form__title">{{ __('otp_verification') }}</h2>


                        <div class="registration-form__wrapper">
                            <form action="{{ route('customer.otpverify') }}" method="POST">
                                @csrf
                                <input type="hidden" name="phone" value="{{ request()->get('phone') ?? '' }}" />
                                <div class="input-field">
                                    <input value="{{ old('otp') ?? '' }}" type="text" placeholder="{{ __('otp') }}" name="otp" class="@error('otp') is-invalid border-danger @enderror" />
                                    @error('otp')<span class="text-danger">{{ $message }}</span>@enderror
                                </div>

                                <button class="btn btn--lg w-100 registration-form__btns" type="submit" type="submit" name="submit" value="verifyotp">
                                    {{ __('verify') }}
                                    <span class="icon--right">
                                        <x-svg.right-arrow-icon stroke="#fff" />
                                    </span>
                                </button>

                                <button type="submit" name="submit" value="againotp" style="display: block; color:blue; margin: 0 auto; padding: 10px;">{{ __('otp_send_again') }}</button>

                                <p class="text--body-3 registration-form__redirect">{{ __('have_account') }} ? <a href="{{ route('customer.login') }}">{{ __('sign_in') }}</a></p>
                            </form>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </section>
    <!-- registration section  end    -->
@endsection

@section('frontend_script')
<script src="{{ asset('frontend') }}/js/plugins/passwordType.js"></script>
@endsection
