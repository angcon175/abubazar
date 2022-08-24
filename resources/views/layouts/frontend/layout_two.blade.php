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
        .navigation-bar__buttons .user {
            margin: 0px 24px;
        }
    </style>

    {!! $settings->header_css !!}
    {!! $settings->header_script !!}
    <link rel="stylesheet" href="{{ asset('frontend/css') }}/main.css?v=1">
</head>

<body class="{{ auth('customer')->check() && isset(session('user_plan')->ad_limit) && session('user_plan')->ad_limit < $settings->free_ad_limit ? 'wraning-show_hide':'' }}" dir="{{ langDirection() }}">
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

    <x-header.home2-header />

    @yield('content')

    <!-- footer section start  -->
    <x-footer.footer-top bg="footer--light" />
    <!-- footer section end -->

    <!-- Back To Top Btn Start-->
    @include('layouts.frontend.partials.back-to-top')
    <!-- Back To Top Btn End-->

    <!-- Scripts goes here -->
    @include('layouts.frontend.partials.scripts')
    <script>
            $(document).on('click', '#selectCountry', function() {
            var id = $(this).data('id');
            $.ajax({
                url: "{{ url('country/to/city') }}/" + id,
                type: 'get',
                dataType: "json",
                beforeSend: function () {
                    $('.loadding_icon').show();
                },
                success: function(data) {
                    $('.loadding_icon').hide();
                    $("#city_show").html(data.html);
                    $("#country_name").text(data.city.name);
                }
            });
        });
    </script>
</body>

</html>
