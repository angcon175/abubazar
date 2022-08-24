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
{{--
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
                <x-frontend.adlist-search class="adlist-search" :categories="$categories" :towns="$towns" :dark="false" :total-ads="$total_ads" />
            </div>
        </div>
    </div>
</div>
--}}
<!-- search form -->
<div class="banner banner--two">
    <div class="container">
        <form action="{{ route('frontend.adlist.search') }}" method="GET">
            <div class="ad-list__search-box">
                <div class="container">
                    <!-- Search Box -->
                    <div class="search">
                        <div class="search__content">
                            <!-- search by keyword/title -->
                            <div class="search__content-item">
                                <div class="input-field">
                                    <input type="text" placeholder="{{ __('Search By Keywords') }}..."
                                    name="keyword" value="{{ request('keyword', '') }}" />
                                    <span class="icon icon--left">
                                        <x-svg.search-icon />
                                    </span>
                                </div>
                            </div>
                            <!-- Search By location -->
                            <div class="search__content-item">
                                <div class="input-field">
                                    <select name="town" id="town" style="width: calc(100% - 60px);">
                                        @php
                                        $town_names = explode(',', request('town'));
                                        @endphp
                                        <option value="" style="display: none;">{{ __('select_location') }}</option>
                                        @foreach ($towns as $town)
                                        <option value="{{ $town->name }}"
                                            {{ in_array($town->name, $town_names) ? 'selected' : '' }}>
                                            {{ $town->name }}
                                        </option>
                                        @endforeach
                                    </select>
                                    <span class="icon icon--left">
                                        <x-svg.search-location-icon />
                                    </span>
                                </div>
                            </div>
                            <!-- Select Category temprorary disable -->
                            <div class="search__content-item">
                                <div class="input-field">
                                    <select name="category" id="category" style="width: calc(100% - 60px);">
                                        @php
                                        $categories_slug = explode(',', request('category'));
                                        @endphp
                                        <option value="" style="display: none;">{{ __('select_category') }}</option>
                                        @foreach ($categories as $category)
                                        <option value="{{ $category->slug }}"
                                            {{ in_array($category->slug, $categories_slug) ? 'selected' : '' }}>
                                        {{ $category->name }} </option>
                                        @endforeach
                                    </select>
                                    <span class="icon icon--left">
                                        <x-svg.category-icon />
                                    </span>
                                </div>
                            </div>
                            <!-- Search Btn -->
                            <div class="search__content-item">
                                <button class="btn btn--lg" type="submit">
                                <span class="icon--left">
                                    <x-svg.search-icon stroke="#fff" />
                                </span>
                                {{ __('search') }}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- Mobile Search --}}
            <div class="mobile-search-filed home_search">
                <div class="container">
                    <div class="search-field-wrap">
                        <div class="input-field">
                            <input type="text" placeholder="Search for anything">
                            <span class="icon icon--left">
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M9.16667 15.8333C12.8486 15.8333 15.8333 12.8486 15.8333 9.16667C15.8333 5.48477 12.8486 2.5 9.16667 2.5C5.48477 2.5 2.5 5.48477 2.5 9.16667C2.5 12.8486 5.48477 15.8333 9.16667 15.8333Z"
                                        stroke="#D32323" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                    </path>
                                    <path d="M17.5 17.5L13.875 13.875" stroke="#D32323" stroke-width="1.6"
                                    stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </span>
                            <div class="search__content-item">
                                <button class="btn btn--lg" type="submit">
                                {{ __('search') }}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="offcanvas-overlay"></div>
        </form>
    </div>
</div>
<!-- search form -->
@if($admin_ads_slider)
<!-- Ads Banner -->
<div class="ads_banner mt-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 center-block text-center">
                <a class="banner_ads_img" href="{{ $admin_ads_slider->ads_link ?? '' }}" target="_blank">
                    <img src="{{ asset($admin_ads_slider->ads_img) }}" width="img-fluid" alt="{{$admin_ads_slider->ads_name}}">
                </a>
            </div>
        </div>
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
        <div class="row g-3">
            @forelse ($topCategories as $category)
            <div class="col-sm-6 col-lg-4 col-xl-3 col-xxl-2">
                <div class="categorylist-card text-center">
                    <div class="categorylist-card__top">
                        <div class="categorylist-card__top-right">
                            <div class="categorylist-card__icon">
                                <i class="{{ $category->icon }}" style="font-size: 30px"></i>
                            </div>
                        </div>
                        <div class="categorylist-card__top-left">
                            <a href="javascript:void(0)" onclick="adFilterFunction('{{ $category->slug }}')">
                                <h2 class="categorylist-card__title text--body-2-600">
                                {{ $category->name }} <span class="categorylist-card__item-available">({{ $category->ad_count ?? 0 }})</span>
                                </h2>
                            </a>
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
<div class="ads_banner mt-2">
    <div class="container">
    <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 center-block text-center">
        <a class="banner_ads_img" href="{{ $admin_ads_category->ads_link ?? '' }}" target="_blank">
            <img src="{{ asset($admin_ads_category->ads_img) }}" width="img-fluid" alt="{{$admin_ads_category->ads_name}}">
        </a>
       </div>
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
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-2">
            @forelse ($recommendedAds as $ad)
            <x-frontend.single-ad :ad="$ad" className="featured_pro"></x-frontend.single-ad>
            @empty
            <x-no-data-found/>
            @endforelse
        </div>
        @if (count($recommendedAds) > 0)
        <div class="recent-post__btn">
            <a href="{{ route('frontend.adlist') }}" class="btn">
                {{ __('view_all') }}
                <!-- <span class="icon--right">
                    <x-svg.right-arrow-icon />
                </span> -->
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
               <!--  <span class="icon--right">
                    <x-svg.right-arrow-icon />
                </span> -->
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
@php
$categories = DB::table('categories')->latest()->limit(4)->get();
$about = DB::table('cms')->latest()->first();
@endphp
<!-- quick links section -->
<section class="section  quick_link_section">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('Quick links') }}
        </h2>
        <div class="row g-2">
            @foreach($categories as $categorie)
            @php
            $catAds = DB::table('ads')->where('category_id', $categorie->id)->get();
            $subcate = DB::table('sub_categories')->where('category_id', $categorie->id)->latest()->limit(6)->get();
            @endphp
            <div class="col-md-6 col-lg-3">
                <div class="quick_link_wrap">
                    <div class="quick_link_title">
                        <h3><a onclick="adFilterFunction('{{ $categorie->slug }}')" href="javascript:;">{{ $catAds->count() }} {{$categorie->name}}</a></h3>
                    </div>
                    <div class="quick_link_cat">
                        <ul>
                            @foreach($subcate as $sub)
                                <li><a href="javascript:;" onclick="adFilterFunction('{{ $sub->slug }}')">{{ $sub->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<!-- About section -->
<section class="section  quick_link_section about_abubazaar">
    <div class="container">
        <h2 class="text--heading-1 section__title">
        {{ __('About Abubazaar.com') }}  The Largest Marketplace !
        </h2>
        <div class="row g-2">
            <div class="col-md-12">
                <div id="showHideAboutSection">
                    <p>{!! substr($about->about_body, 0,  400) !!}</p>
                </div>
                <div style="display:none; overflow:hidden;" id="showAboutSection">
                    {!! substr($about->about_body, 0,  9999999999) !!}
                </div>
                <a href="javascript:;" id="showMore">Show More <i class="fa fa-angle-down"></i></a>
                <a href="javascript:;" id="showLess" style="display:none;">Show Less <i class="fa fa-angle-up"></i></a>
            </div>
        </div>
    </div>
</section>
<!-- popular-loc section end -->
{{--<section class="section footer_top_sec">
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
</section>--}}
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
$("#showMore").click(function() {
$("#showLess").show();
$("#showMore").hide();
$("#showHideAboutSection").hide();
$("#showAboutSection").show();
});
$("#showLess").click(function(){
$("#showMore").show();
$("#showLess").hide();
$("#showHideAboutSection").show();
$("#showAboutSection").hide();
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