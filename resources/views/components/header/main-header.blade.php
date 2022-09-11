<header class="header header--home-three header--four  @yield('job')">
    <div class="container navigation-bar">
        <div class="d-flex align-items-center ">
            <button class="toggle-icon  ">
            <span class="toggle-icon__bar"></span>
            <span class="toggle-icon__bar"></span>
            <span class="toggle-icon__bar"></span>
            </button>
            <!-- Brand Logo -->
            <a href="{{ route('frontend.index') }}" class="navigation-bar__logo">
                <img src="{{ $settings->logo_image_url }}"  alt="brand-logo" class="logo-dark">
            </a>
        </div>
        <!-- Menu -->
        {{-- <ul class="menu">
            <li class="menu__item">
                <a href="{{ route('frontend.index') }}" class="menu__link">{{ __('home') }}</a>
            </li>
            <li class="menu__item">
                <a href="{{ route('frontend.adlist') }}" class="menu__link">{{ __('ads') }}</a>
            </li>
            @if ($blog_enable)
            <li class="menu__item">
                <a href="{{ route('frontend.blog') }}" class="menu__link">{{ __('blog') }}</a>
            </li>
            @endif
            @if ($priceplan_enable)
            <li class="menu__item">
                <a href="{{ route('frontend.priceplan') }}" class="menu__link">{{ __('pricing') }}</a>
            </li>
            @endif
        </ul>--}}
        <div class="header_search d-none d-lg-block">
            <form action="{{ route('frontend.adlist.search') }}" method="GET">
                <div class="row g-2">
                    <div class="col-3">
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fa fa-location-dot"></i></span>
                            <input type="text" readonly name="location" id="location" class="form-control location_box" placeholder="Select Locaton" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="input-group mb-3">
                            <input type="text" name="keyword" id="keyword" value="{{ request('keyword', '') }}" class="form-control" placeholder="Search By Keywords..." required>
                            <button type="submit" class="input-group-text"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <!-- Action Buttons -->
        <div class="navigation-bar__buttons">
            @if (auth('customer')->check())
            <a href="{{ route('frontend.message') }}" class="btn btn--bg">
                <i class="fa-solid fa-comments"></i>
            </a>
            <a href="{{ route('frontend.dashboard') }}" class="user">
                <div class="user__img-wrapper">
                    <img src="{{ auth('customer')->user()->image_url }}" style="width: 40px; height: 40px; border-radius: 50%" alt="User Image">
                </div>
            </a>
            <a href="{{ route('frontend.post') }}" class="btn post_btn login_user_btn">
                <span class="icon--left">
                    <x-svg.image-select-icon />
                </span>
                {{ __('post_ads') }}
            </a>
            @else
            <a href="{{ route('frontend.message') }}" class="btn btn--bg">
                <i class="fa-solid fa-comments"></i>
            </a>
            <a href="{{ route('customer.login') }}" class="btn btn--bg login_btn">
                <i class="fa-solid fa-user-large"></i>
            </a>
            <a href="{{ route('customer.login') }}" class="btn post_btn login_required">
                <span class="icon--left">
                    <x-svg.image-select-icon />
                </span>
                {{ __('post_ads') }}
            </a>
            @endif
            {{--  <x-frontend.language-switcher/>--}}
        </div>
        <!-- Responsive Navigation Menu  -->
        <x-frontend.responsive-menu/>
    </div>
</header>

<!-- Location Modal -->
<div class="location_modal">
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">
                        Location
                        <span class="city_name">
                            <i class="fa fa-angle-right"></i>
                            <span id="country_name"></span>
                        </span>
                        <span class="go_back">
                            <i class="fa fa-angle-left"></i>
                            Go Back
                        </span>
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    @php
                        $countries = Modules\Location\Entities\City::orderBy('name')->get();
                        $country_name = explode(',', request('country'));
                    @endphp
                    <div class="city_list">
                        <ul>
                            @if(isset($countries) && count($countries) > 0)
                                @foreach ($countries as $country)
                                    @php
                                       $country_ads = DB::table('ads')->where('city_id', $country->id)->count();
                                    @endphp
                                    <li>
                                        <a class="nav-link country_name" id="selectCountry" data-id="{{$country->id}}" href="javascript:;">
                                            {{ Str::ucfirst($country->name) }}
                                            <i class="fa fa-angle-right"></i>
                                            <span><strong>({{ $country_ads }})</strong></span>
                                        </a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                    <div class="loadding_icon text-center" style="display: none;">
                        <img src="{{ asset('loading.gif') }}" alt="">
                    </div>
                    <div class="area_list" id="city_show">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('frontend/') }}/js/plugins/jquery.min.js"></script>
 <script>
    $(document).on('click', '.city_list .nav-link', function(){
        $('.city_list').hide();
        $('.area_list').show();
        $('.city_name').show();
        $('.go_back').show();
    });

    $(document).on('click', '.go_back', function(){
        $('.city_list').show();
        $('.area_list').hide();
        $('.city_name').hide();
        $('.area_list').empty();
        $('#country_name').empty();
        $('.go_back').hide();
     });
</script>