@extends('layouts.frontend.layout_one')

@section('meta')

@php
    $setting = setting();
@endphp
<meta property="og:title" content="{{ $setting->og_title ?? 'ABUBAZAAR | Buy and sell everything' }}" />
<meta property="og:description" content="{{ $setting->og_description ?? 'ABUBAZAAR | Buy and sell everything in UAE' }}" />
<meta name="twitter:title" content="{{ $setting->og_title ?? 'ABUBAZAAR | Buy and sell everything' }}" />
<meta name="twitter:description" content="{{ $setting->og_description ?? 'ABUBAZAAR | Buy and sell everything in UAE' }}" />
<meta property="og:image" content="{{ checkFileExit1($setting->og_img) }}" />
<meta name="twitter:image" content="{{ checkFileExit1($setting->og_img) }}" />


@endsection


@section('title', __('home'))

@section('frontend_style')

@livewireStyles
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/select2/css/select2.min.css">
@endsection

@section('content')
<!--  style="background: url('{{ $cms->index1_main_banner_path }}') center center/cover no-repeat;" -->
<!-- banner section start  -->
<div class="banner banner--two">
    <div class="container">
        <div class="row text-center">
            <div class="col-12">
                <h2 class="text--display-3 banner__title animate__animated animate__bounceInDown">
                    {{ $cms->index1_title }}
                </h2>
                <p class="text--body-3 banner__brief">
                    {{ $cms->index1_description }}
                </p>
                <!-- Search Box -->
                {{--
                    <x-frontend.adlist-search class="adlist-search" :categories="$categories" :towns="$towns" :dark="false" :total-ads="$total_ads" />
                --}}
            </div>
        </div>
    </div>
</div>
@if($admin_ads_slider)
    <!-- Ads Banner -->
    <div class="ads_banner mt-3 mb-3">
        <div class="container">
            <a href="{{ $admin_ads_slider->ads_link ?? '' }}" target="_blank">
                <img src="{{ asset($admin_ads_slider->ads_img) }}" width="img-fluid" alt="{{$admin_ads_slider->ads_name}}">
            </a>
        </div>
    </div>
@endif
<!-- banner section end   -->
<!-- top-category section start  -->
<section class="section top-category bgcolor--gray-10">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('top_category') }}
        </h2>
        <div class="row">
            @forelse ($topCategories as $category)
            <div class="col-sm-6 col-lg-4 col-xl-3 col-xxl-2 mb-4">
                <div class="categorylist-card">
                    <div class="categorylist-card__top">
                        <div class="categorylist-card__top-right">
                            <div class="categorylist-card__icon">
                                <i class="{{ $category->icon }}" style="font-size: 30px"></i>
                            </div>
                        </div>
                        <div class="categorylist-card__top-left">
                            <a href="javascript:void(0)" onclick="adFilterFunction('{{ $category->slug }}')">
                                <h2 class="categorylist-card__title text--body-2-600">
                                {{ $category->name }}
                                </h2>
                            </a>
                            <span class="categorylist-card__item-available">({{ $category->ad_count ?? 0 }})</span>
                            <form method="GET" action="{{ route('frontend.adlist.search') }}" id="adFilterForm"
                                class="d-none">
                                <input type="hidden" name="category" value="" id="adFilterInput">
                            </form>
                        </div>
                    </div>
                    <!--      <div class="categorylist-card__bottom">
                        <ul class="categorylist-card__list">
                            {{-- Filter Form 1 --}}
                            <form method="GET" action="{{ route('frontend.adlist.search') }}" id="adFilterForm" class="d-none">
                                <input type="hidden" name="subcategory[]" value="" id="adFilterInput">
                            </form>
                            @forelse ($category->subcategories as $subcategory)
                            <li class="categorylist-card__list-item">
                                <a href="javascript:void(0)" onclick="adFilterFunction('{{ $subcategory->slug }}')" class="categorylist-card__list-link text--body-3">
                                    <span class="icon">
                                        <x-svg.right-regular-icon />
                                    </span>
                                    {{ $subcategory->name }}
                                </a>
                            </li>
                            @empty
                            <div class="text-center">
                                {{ __('no_subcategory_found') }}
                            </div>
                            @endforelse
                        </ul>
                    </div> -->
                </div>
            </div>
            @empty
            <x-no-data-found/>
            @endforelse
        </div>
    </div>
</section>
    <!-- top-category section end  -->
@if($admin_ads_category)
    <!-- Ads Banner -->
    <div class="ads_banner mt-3 mb-3">
        <div class="container">
            <a href="{{ $admin_ads_category->ads_link ?? '' }}" target="_blank">
                <img src="{{ asset($admin_ads_category->ads_img) }}" width="img-fluid" alt="{{$admin_ads_category->ads_name}}">
            </a>
        </div>
    </div>
@endif
<!-- recent-post section start  -->
@if ($settings->featured_ads_homepage)
<section class="section recent-post">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('featured_ads') }}
        </h2>
        <div class="row">
            @forelse ($recommendedAds as $ad)
            <x-frontend.single-ad :ad="$ad" className="col-xl-3 col-md-6"></x-frontend.single-ad>
            @empty
            <x-no-data-found/>
            @endforelse
        </div>
        @if (count($recommendedAds) > 0)
        <div class="recent-post__btn">
            <a href="{{ route('frontend.adlist') }}" class="btn">
                {{ __('view_all') }}
                <span class="icon--right">
                    <x-svg.right-arrow-icon />
                </span>
            </a>
        </div>
        @endif
    </div>
</section>
@endif

<!--  -->
<section class="section banner_section">
    <div class="container">
        <div class="row g-2">
            <div class="col-lg-6">
                <div class="banner_wrapper">
                    <div class="d-flex position-relative">
                        <div class="banner_img">
                            <img src="{{ asset('frontend/images/money-bag.jpg') }}" class="w-100" class="flex-shrink-0 me-3" alt="">
                        </div>
                        <div class="banner_content">
                            <h3>Start making money!</h3>
                            <p>Do you have something to sell? Post your first ad and start making money!</p>
                            @if (auth('customer')->check())
                                <a href="{{ route('frontend.post') }}" class="btn btn-primary">Post your ad for free</a>
                            @else
                                <a href="{{ route('customer.login') }}" class="btn btn-primary">Post your ad for free</a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="banner_wrapper">
                    <div class="d-flex position-relative">
                        <div class="banner_img">
                            <img src="{{ asset('frontend/images/job.png') }}" class="w-100" class="flex-shrink-0 me-3" alt="">
                        </div>
                        <div class="banner_content">
                             <h3>AbuBazar Jobs</h3>
                             <p>Are you looking suitable jobs ? Thousands of jobs on our Platform !</p>
                             <a href="{{ route('frontend.all.jobs') }}" target="_blank" class="btn btn-danger explore_more">Explore More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- recent-post section start  -->
@if ($settings->regular_ads_homepage)
<section class="section recent-post">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('regular_ads') }}
        </h2>
        <div class="row">
            @forelse ($latestAds as $ad)
            <x-frontend.single-ad :ad="$ad" className="col-xl-3 col-md-6"></x-frontend.single-ad>
            @empty
            <x-no-data-found/>
            @endforelse
        </div>
        @if (count($latestAds) > 0)
        <div class="recent-post__btn">
            <a href="{{ route('frontend.adlist') }}" class="btn">
                {{ __('view_all') }}
                <span class="icon--right">
                    <x-svg.right-arrow-icon />
                </span>
            </a>
        </div>
        @endif
    </div>
</section>
@endif
<!-- recent-post section end -->
<!-- popular-loc section start  -->
<section class="section popular-location">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('popular_location') }}
        </h2>
        <div class="row">
            @forelse ($topCities as $city)
            <div class="col-xl-3 col-md-6">
                <x-frontend.location.single-popular-location :city="$city"></x-frontend.location.single-popular-location>
            </div>
            @empty
            <x-no-data-found/>
            @endforelse
        </div>
    </div>
</section>
<!-- popular-loc section end -->
<section class="section footer_top_sec">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('do you have something to sell') }}
        </h2>
        <div class="text-center">
            @if (auth('customer')->check())
                <a href="{{ route('frontend.post') }}" class="btn">Post Here</a>
            @else
                <a href="{{ route('customer.login') }}" class="btn">Post Here</a>
            @endif
        </div>
    </div>
</section>
{{--<x-frontend.counter :totalAds="$totalAds" :verifiedUser="$verified_users" :proMember="$pro_members_count" :cityLocation="$city_count"></x-frontend.counter>--}}
<!-- download section start  -->
<!-- @if ($settings->android || $settings->ios)
<section class="download section pb-lg-0">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <img src="{{ $cms->index1_mobile_app_banner_path }}" class="download__img-content w-100" />
            </div>
            <div class="col-lg-6">
                <div class="download__content">
                    <h2 class="download__title text--heading-1">{{ __('download_our_mobile_app') }}</h2>
                    <p class="download__brief text--body-2">
                        {{ $cms->download_app }}
                    </p>
                    <div class="download__apps-store">
                        @if ($settings->android)
                        <a target="_blank" href="{{ asset($settings->android) }}" class="app">
                            <div class="app-logo">
                                <x-svg.google-play-icon />
                            </div>
                            <div class="app-info">
                                <h5 class="text--body-5">{{ __('get_it_now') }}</h5>
                                <h2 class="text--body-3-600">{{ __('google_play') }}</h2>
                            </div>
                        </a>
                        @endif
                        @if ($settings->ios)
                        <a target="_blank" href="{{ asset($settings->ios) }}" class="app">
                            <div class="app-logo">
                                <x-svg.apple-icon />
                            </div>
                            <div class="app-info">
                                <h5 class="text--body-5">{{ __('get_it_now') }}</h5>
                                <h2 class="text--body-3-600">{{ __('app_store') }}</h2>
                            </div>
                        </a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@else
<section class="mb-5">
</section>
@endif -->
<!-- download section end  -->
{{--  @if ($newsletter_enable)
@include('layouts.frontend.partials.newsletter')
@endif
--}}
@endsection

@section('frontend_script')
    <script type="module" src="{{ asset('frontend') }}/js/plugins/purecounter.js"></script>
    <script src="https://adlisting.templatecookie.com/frontend/js/plugins/select2.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/select2/js/select2.full.min.js"></script>
    <script>
        $(document).ready(function() {
            // ===== Select2 ===== \\
            $('#town').select2({
            theme: 'bootstrap-5',
            width: $(this).data('width') ?
            $(this).data('width') : $(this).hasClass('w-100') ?
            '100%' : 'style',
            placeholder: 'Select town',
            allowClear: Boolean($(this).data('allow-clear')),
            closeOnSelect: !$(this).attr('multiple'),
            });
        });
    </script>
    @stack('newslater_script')
    <script>
        // for filter form-1
        function adFilterFunction(slug) {
            $('#adFilterInput').val(slug);
            $('#adFilterForm').submit();
        }
        // for filter form-2
        function adFilterFunctionTwo(slug) {
            $('#adFilterInput2').val(slug);
            $('#adFilterForm2').submit();
        }
        // for filter form-3
        function adFilterFunctionThree(slug) {
            $('#adFilterInput3').val(slug);
            $('#adFilterForm3').submit();
        }
        </script>
@endsection
