@extends('layouts.frontend.layout_one')
@section('title')
{{ $ad->title }}
@endsection
@php
$keywords = sprintf('%s, %s', $settings->seo_meta_keywords, join(', ', $ad->adFeatures->pluck('name')->all()));
@endphp
@section('meta')
<meta name="title" content="{{ $ad->title }}">
<meta name="description" content="{{ $ad->description }}">
<meta name="keywords" content="{{ $keywords }}">
<meta property="og:image" content="{{ $ad->image_url }}" />
<meta property="og:site_name" content="{{ $settings->name }}">
<meta property="og:title" content="{{ $ad->title }}">
<meta property="og:url" content="{{ route('frontend.addetails', $ad->slug) }}">
<meta property="og:type" content="article">
<meta property="og:description" content="{{ $ad->description }}">
<meta name=twitter:card content=summary_large_image />
<meta name=twitter:site content="{{ $settings->name }}" />
<meta name=twitter:creator content="{{ $ad->customer->name }}" />
<meta name=twitter:url content="{{ route('frontend.addetails', $ad->slug) }}" />
<meta name=twitter:title content="{{ $ad->title }}" />
<meta name=twitter:description content="{{ $ad->description }}" />
<meta name=twitter:image content="{{ $ad->image_url }}" />
@endsection
@section('content')
<!-- breedcrumb section start  -->
<x-frontend.breedcrumb-component :background="$cms->ads_background_path">
{{ $ad->title }}
<x-slot name="items">
<li class="breedcrumb__page-item">
    <a class="breedcrumb__page-link text--body-3">{{ $ad->title }}</a>
</li>
</x-slot>
</x-frontend.breedcrumb-component>
<!-- breedcrumb section end  -->
<!-- single ads section start  -->
<section class="product-item section">
    <div class="container">
        <div class="row">
            <div class="col-xl-8">
                {{-- ad badge --}}
                <x-ad-details.ad-badge :featured="$ad->featured" :customerid="$ad->customer_id"
                :verifiedseller="$verified_seller" :status="$ad->status" />
                {{-- ad info --}}
                <x-ad-details.ad-info :ad="$ad" />
                
                {{-- ad gallery --}}
                <x-ad-details.ad-gallery :galleries="$ad->galleries" :thumbnail="$ad->image_url" :slug="$ad->slug" />
                {{-- ad description --}}
                <x-ad-details.ad-description :description="$ad->description" :features="$ad->adFeatures" />
            </div>
            <div class="col-xl-4">
                <div class="product-item__sidebar">
                    <span class="toggle-bar">
                        <x-svg.toggle-icon />
                    </span>
                    <div class="product-item__sidebar-top">
                        {{-- ad customer info --}}
                        <x-ad-details.ad-customer-info :customer="$ad->customer" :town="$ad->town" :city="$ad->city"
                        :link="$ad->website_link" />
                        
                        {{-- ad contact --}}
                        <x-ad-details.ad-contact :phone="$ad->phone" :name="$ad->customer->username" />
                        
                    </div>
                    <div class="product-item__sidebar-bottom">
                        <div class="product-item__sidebar-item overview">
                            {{-- ad overview --}}
                            <x-ad-details.ad-overview :ad="$ad" />
                            <p style="display-block;border-bottom: 1px solid #ebeef7"></p>
                            <div>
                                <h2 class="text--body-1">Ad Report</h2>
                                <ul class="overview-details report_form">
                                    <div class="accordion" id="accordionExample">
                                        <div class="accordion-item" style="background:none !important; border:none;">
                                            <h6 class="accordion-header" id="headingTwo">
                                            <button data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Report here..</button>
                                            </h6>
                                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <form action="{{ route('frontend.report.store') }}" method="POST">
                                                        @csrf
                                                        <input type="hidden" name="ads_id" value="{{ $ad->id }}">
                                                        <div class="form-check mb-2">
                                                            <input class="form-check-input" type="radio" name="reportCheck" id="report1" value="this is illegal/graudulent" required="">
                                                            <label class="form-check-label" for="report1">This is illegal/fraudulent</label>
                                                        </div>
                                                        <div class="form-check mb-2">
                                                            <input class="form-check-input" type="radio" name="reportCheck" id="report2" value="this ad is spam" required="">
                                                            <label class="form-check-label" for="report2">This ad is spam</label>
                                                        </div>
                                                        <div class="form-check mb-2">
                                                            <input class="form-check-input" type="radio" name="reportCheck" id="report3" value="this ad is duplicate" required="">
                                                            <label class="form-check-label" for="report3">This ad is duplicate</label>
                                                        </div>
                                                        <div class="form-check mb-2">
                                                            <input class="form-check-input" type="radio" name="reportCheck" id="report4" value="this ad is in the worng category" required="">
                                                            <label class="form-check-label" for="report4">This ad is in the worng category</label>
                                                        </div>
                                                        <div class="form-check mb-4">
                                                            <input class="form-check-input" type="radio" name="reportCheck" id="report5" value="the ad goes against posting rules" required="">
                                                            <label class="form-check-label" for="report5">The ad goes against <a href="#">posting rules</a></label>
                                                        </div>
                                                        <div class="form-group">
                                                            <textarea name="description" cols="30" rows="4" required="" placeholder="Please provide more information" class="form-control" spellcheck="false"></textarea>
                                                        </div>
                                                        <div class="mt-3">
                                                            <button type="button" class="btn btn-danger" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Cancel</button>
                                                            <button type="submit" class="btn btn-primary">Send Report</button>
                                                        </div>
                                                     </form>
                                                 </div>
                                            </div>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        {{-- ad share --}}
                        <x-ad-details.ad-share :slug="$ad->slug" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<!-- single ads section End  -->
<!-- related ads section start  -->
<x-ad-details.ad-related-item :lists="$lists" />
<!-- related ads section end  -->
@endsection
@section('adlisting_style')
<link rel="stylesheet" href="{{ asset('frontend/css') }}/slick.css" />
<link rel="stylesheet" href="{{ asset('frontend/css') }}/swiper-bundle.min.css" />
<link rel="stylesheet" href="{{ asset('frontend/css/productslider.css') }}" />
@endsection
@section('frontend_script')
<script src="{{ asset('frontend') }}/js/plugins/slick.min.js"></script>
<script src="{{ asset('frontend') }}/js/plugins/swiper-bundle.min.js"></script>
<script src="{{ asset('frontend') }}/js/swiperslider.config.js"></script>
@stack('ad_scripts')
@endsection