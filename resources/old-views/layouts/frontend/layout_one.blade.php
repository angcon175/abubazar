<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    @hasSection('meta')
        @yield('meta')
    @else
        <meta name="title" content="{{ $settings->seo__meta_title }}">
        <meta name="description" content="{{ $settings->seo_meta_description }}">
        <meta name="keywords" content="{{ $settings->seo_meta_keywords }}">
    @endif

    <title>@yield('title') - {{ config('app.name') }}</title>

    <!-- Styles goes here -->
    @include('layouts.frontend.partials.links')

    <style>
        .category-menu__subdropdown__item {
            width: 270px !important;
        }

        .navigation-bar__buttons .user {
            margin: 0px 24px;
        }

        a.categories__link.active {
            color: #000 !important;
            transition: all 0.3s linear;
            font-weight: 800;
        }

        .subscribe__input-group.is-invalid {
            border: 1px solid red;
        }

    </style>

    {!! $settings->header_css !!}
    {!! $settings->header_script !!}
    <link rel="stylesheet" href="{{ asset('frontend/css') }}/main.css">

</head>

<body
    class="{{ auth('customer')->check() && isset(session('user_plan')->ad_limit) && session('user_plan')->ad_limit < $settings->free_ad_limit? 'wraning-show_hide': '' }}"
    dir="{{ langDirection() }}">
    <!-- Top bar start  -->
    @if (auth('customer')->check() && isset(session('user_plan')->ad_limit) && session('user_plan')->ad_limit < $settings->free_ad_limit)
        @include('layouts.frontend.partials.top-bar')
    @endif
    <!-- Top bar end  -->

    <!-- loader start  -->
    @if (setting('website_loader'))
        @include('layouts.frontend.partials.loader')
    @endif
    <!-- loader end  -->

    @if (request()->route()->getName() === 'frontend.index')
        <x-header.home-header />
    @else
        <x-header.main-header />
    @endif

    @yield('content')

    <!-- footer section start  -->
    <x-footer.footer-top />
    <!-- footer section end -->

    <!-- Back To Top Btn Start-->
    @include('layouts.frontend.partials.back-to-top')
    <!-- Back To Top Btn End-->

    <!-- Scripts goes here -->
    @include('layouts.frontend.partials.scripts')
</body>

</html>
