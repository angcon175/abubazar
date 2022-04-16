@extends('layouts.frontend.layout_one')

@section('title', __('sign_in'))

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component :background="$cms->dashboard_overview_background_path">
        {{ __('sign_in') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('sign_in') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <!-- registration section start   -->
    <section class="section registration">
        <div class="container">
            <div class="row d-flex justify-content-center">

                {{-- Signup Content  --}}
               <!--  <x-auth.content :verifiedusers="$verified_users"/> -->

                {{-- Signing Form --}}
                <x-auth.signin-form/>
            </div>
        </div>
    </section>
    <!-- registration section  end    -->
@endsection

@section('frontend_script')
<script src="{{ asset('frontend') }}/js/plugins/passwordType.js"></script>
@endsection

