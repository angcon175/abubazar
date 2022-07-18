@extends('layouts.frontend.layout_one')

@section('title', __('blog_posts'))
@section('job', 'job_menu')

@section('content')
    <!-- breedcrumb section start  -->
    <x-frontend.breedcrumb-component  :background="$cms->blog_background_path">
        {{ __('blog') }}
        <x-slot name="items">
            <li class="breedcrumb__page-item">
                <a class="breedcrumb__page-link text--body-3">{{ __('Jobs') }}</a>
            </li>
        </x-slot>
    </x-frontend.breedcrumb-component>
    <!-- breedcrumb section end  -->

    <section class="jobs_section section pt-0">
        <div class="container">
            <div class="jobs_categories">
                <div class="jobs_header mb-3 mt-5">
                     <h3>Browse Jobs</h3>
                </div>
                <div class="row g-0">
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Sales Executive <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Government Jobs <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Customer Service Executive <span>(12)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Office Admin <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Delivery Rider <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Marketing Executive <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Operator <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Suppervisor <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Accountant <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Maid <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Driver <span>(278)</span></a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                        <ul>
                            <li><a href="#">Designer <span>(278)</span></a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </section>

@endsection
