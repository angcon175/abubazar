@extends('layouts.app')
@push('custom_css')
<link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">
<style type="text/css">
    .footer-widget input[type="email"] {margin: 5px 0;font-weight: 300;font-size: 16px;}
    .urgent .featured-image{overflow: hidden;}
    .category-icon .img-fluid{width: 40px; height: 35px;}
</style>
@endpush

@section('content')

    <section id="home-one-info" class="clearfix home-one">
        @include('home.top_slider')
    </section>

    <section id="home-two-info" class="clearfix home-two">
        @include('home.popular_category')
    </section>
  
    <section id="home-three-info" class="clearfix home-three">
        @include('home.urgent_ads')
    </section>

    <section id="home-four-info" class="clearfix home-four">
        @include('home.best_location')
    </section> 

    <section id="something-sell" class="clearfix parallax-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h2 class="title">Do you have something to sell?</h2>
                    <h4>Post your ad for free on Gogoads</h4>
                    <a href="#" data-toggle="modal" data-target="#staticBackdrop" class="btn btn-primary">Post Free Ad</a>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('custom_js')
<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
{!! Toastr::message() !!}
<script src="{{asset('/assets/js/imagelazy.js')}}"></script>
<script type="text/javascript">
    jQuery(function($) {
        $.imgLazy({ effect: 'fadeIn', viewport: true, timeout: 20 });
    });
</script>
@endpush
