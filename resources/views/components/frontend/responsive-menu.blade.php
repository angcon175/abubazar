<div class="menu--sm mobile-menu">
    <!-- Head -->
    <div class="mobile-menu__header">
        <!-- brand -->
        <div class="mobile-menu__brand">
            <a href="{{ route('frontend.index') }}">
                <img src="{{ $settings->logo_image_url }}"  alt="brand-logo">
            </a>
            <div class="close">
                <span>
                    <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5 5.08325L15.6066 15.6899" stroke="#191F33" stroke-width="1.9375" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M4.99999 15.9167L15.6066 5.31015" stroke="#191F33" stroke-width="1.9375" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </span>
            </div>
        </div>

        <div class="mobile-menu__search">
            <form action="{{ route('frontend.adlist.search') }}" method="GET">
                <div class="input-field">
                    <input type="text" placeholder="{{ __('ads_title_keyword') }}..." name="keyword">
                    <button class="icon icon-search">
                        <x-svg.search-icon />
                    </button>
                </div>
            </form>
            <div class="mobile_select_location" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                <p><i class="fa fa-map-marker" aria-hidden="true"></i> Select Location</p>
            </div>
        </div>
        <div class="mobile-menu__body">
            <ul>
                <li class="menu--sm__item">
                    <a href="{{ route('frontend.index') }}" class="menu--sm__link">{{ __('home') }}</a>
                </li>
                <li class="menu--sm__item">
                  {{--    <a href="#" class="menu--sm__link">
                        {{ __('all_category') }}
                        <span class="icon">
                            <x-svg.category-arrow-icon />
                        </span>
                        </a>
                        <ul class="menu--sm-dropdown">
                            @foreach ($footer_categories as $category)
                                <li class="menu--sm-dropdown__item">
                                    <a href="javascript:void(0)" onclick="adFilterFunctionTwo('{{ $category->slug }}')" class="menu--sm-dropdown__link">
                                        {{ $category->name }}
                                    </a>
                                </li>
                            @endforeach
                        </ul> 
                    --}}
                    
                    <div class="accordion sidebar_category" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> {{ __('all_category') }}</button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                   <ul>
                                        @foreach ($footer_categories as $category)
                                            <li class="menu--sm-dropdown__item">
                                                <a href="javascript:void(0)" onclick="adFilterFunctionTwo('{{$category->slug}}')" class="menu--sm-dropdown__link">
                                                    {{ $category->name }}
                                                </a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> 
                </li>
                <li class="menu--sm__item">
                    <a href="{{ route('frontend.adlist') }}" class="menu--sm__link">{{ __('ads') }}</a>
                </li>
                @if ($blog_enable)
                <li class="menu--sm__item">
                    <a href="{{ route('frontend.blog') }}" class="menu--sm__link">{{ __('blog') }}</a>
                </li>
                @endif
                @if ($priceplan_enable)
                <li class="menu--sm__item">
                    <a href="{{ route('frontend.priceplan') }}" class="menu--sm__link">{{ __('pricing') }}</a>
                </li>
                @endif
            </ul>
        </div>
    </div>
    <!-- footer  -->
    <div class="mobile-menu__footer ">
        @if (auth('customer')->check())
            <div class="mobile-menu__footer ">
                <div class="mobile-menu-user-wrap">
                    <div class="mobile-menu-user-left">
                        <div class="mobile-menu-user">
                            <img src="{{ auth('customer')->user()->image_url }}" alt="">
                        </div>
                        <div class="mobile-menu-user-data">
                            <h5>{{ auth('customer')->user()->name }}</h5>
                            <p>{{ auth('customer')->user()->username }}</p>
                        </div>
                    </div>
                    <div class="mobile-menu-user-right">
                        <a class="sign-out" href="#" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                            <img src="{{ asset('frontend') }}/images/svg/SignOut.svg" alt="">
                        </a>

                        <form id="logout-form" action="{{ route('frontend.logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                      </div>
                </div>
            </div>
        @else
            <div class="d-flex align-items-center">
                <a href="{{ route('customer.login') }}" class="btn mr-3 login_required">
                    <span class="icon--left">
                        <x-svg.image-select-icon />
                    </span>
                    {{ __('post_ads') }}
                </a>
                <a href="{{ route('customer.login') }}" class="btn btn--bg ">{{ __('sign_in') }}</a>
            </div>
        @endif
    </div>
</div>
