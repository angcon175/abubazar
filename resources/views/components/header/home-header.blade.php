<header class="header header--two" id="sticky-menu">
    <div class="navigation-bar__top">
        <div class="container">
            <div class="navigation-bar">
                <div class="d-flex align-items-center">
                    <button class="toggle-icon  ">
                    <span class="toggle-icon__bar"></span>
                    <span class="toggle-icon__bar"></span>
                    <span class="toggle-icon__bar"></span>
                    </button>
                    <!-- Brand Logo -->
                    <a href="{{ route('frontend.index') }}" class="navigation-bar__logo">
                        <img src="{{ $settings->logo_image_url }}"  alt="brand-logo" class="logo-dark">
                    </a>
                    <!-- <a href="{{ route('frontend.adlist') }}" class="header-ads" title="All Ads">All Ads</a> -->
                </div>
                <!-- Search Field -->
                <div class="location_btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    <p><i class="fa fa-map-marker"></i> Select Location</p>
                </div>
                <form action="{{ route('frontend.adlist.search') }}" method="GET">
                    <div class="navigation-bar__search-field">
                        <input type="text" placeholder="{{ __('ads_title_keyword') }}..." name="keyword"/>
                        <!-- <button type="submit" class="navigation-bar__search-icon">
                        <x-svg.search-icon />
                        </button> -->
                        <button type="submit" class="custom-search-icon"> <i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>

                <!-- Action Buttons -->
                <div class="navigation-bar__buttons">
                    <a href="{{route('frontend.message')}}" class="chat-text"><i class="fa-solid fa-message"></i>

                </a>
                    @if (auth('customer')->check())
                    <a href="{{ route('frontend.dashboard') }}" class="user">
                        <div class="user__img-wrapper">
                            <img src="{{ auth('customer')->user()->image_url }}" style="width: 40px; height: 40px; border-radius: 50%" alt="User Image">
                        </div>
                    </a>
                    <a href="{{ route('frontend.post') }}" class="btn post_ads">
                        <span class="icon--left">
                            <x-svg.image-select-icon />
                        </span>
                        {{ __('post_ads') }}
                    </a>
                    @else
                    <a href="{{ route('customer.login') }}" class="custom-sign-in"><i class="fa-solid fa-user-large"></i> {{ __('sign_in') }}</a>
                    <a href="{{ route('customer.login') }}" class="btn post_ads">
                        <span class="icon--left">
                            <x-svg.image-select-icon />
                        </span>
                        {{ __('post_ads') }}
                    </a>
                    @endif
                </div>
                <!-- Responsive Navigation Menu  -->
                <x-frontend.responsive-menu/>
            </div>
        </div>
    </div>
    {{-- <div class="navigation-bar__bottom-wrap">
        <div class="container navigation-bar__bottom justify-content-between">
            <div class="d-flex align-items-center">
                <!-- category menu -->
                <ul class="category-menu">
                    <li class="category-menu__item">
                        <a href="#" class="category-menu__link">
                            {{ __('all_category') }}
                            <span class="icon">
                                <x-svg.category-arrow-icon />
                            </span>
                        </a>
                        <ul class="category-menu__dropdown">
                            @foreach ($categories as $category)
                            <form method="GET" action="{{ route('frontend.adlist.search') }}" id="adFilterForm2" class="d-none">
                                <input type="hidden" name="category" value="" id="adFilterInput2">
                            </form>
                            <li class="category-menu__dropdown__item">
                                <a href="javascript:void(0)" onclick="adFilterFunctionTwo('{{ $category->slug }}')" class="category-menu__dropdown__link">
                                    <i class="category-icon {{ $category->icon }}" style="color: #D32323"></i>
                                    {{ $category->name }}
                                    @if ($category->subcategories->count() > 0)
                                    <span class="drop-icon">
                                        <x-svg.category-right-icon />
                                    </span>
                                    @endif
                                </a>
                                @if ($category->subcategories->count() > 0)
                                <ul class="category-menu__subdropdown">
                                    @foreach ($category->subcategories as $subcategory)

                                    <form method="GET" action="{{ route('frontend.adlist.search') }}" id="adFilterForm3" class="d-none">
                                        <input type="hidden" name="subcategory[]" value="" id="adFilterInput3">
                                    </form>
                                    <li class="category-menu__subdropdown__item">
                                        <a href="javascript:void(0)" onclick="adFilterFunctionThree('{{ $subcategory->slug }}')" class="category-menu__subdropdown__link">
                                            {{ $subcategory->name }}
                                        </a>
                                    </li>
                                    @endforeach
                                </ul>
                                @endif
                            </li>
                            @endforeach
                        </ul>
                    </li>
                </ul>
                <!-- Category Item -->
                <ul class="categories">
                    @foreach ($top_categories as $category)
                    <li class="categories__item">
                        <a href="javascript:void(0)" onclick="adFilterFunctionTwo('{{ $category->slug }}')" class="categories__link {{ request()->routeIs('frontend.index') ? 'active' : '' }} ">
                            {{ $category->name }}
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>
            <x-frontend.language-switcher/>
        </div>
    </div>--}}
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
        // $('.backcategory').show();
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
