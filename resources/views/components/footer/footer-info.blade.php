<div class="col-xl-4 col-lg-6">
    <h2 class="footer__title text--body-2-600 sm-center">{{ __('Download Our App') }}</h2>
    <!-- <div class="footer__brand-logo">
        @if ($logotype === 'dark')
        <img style="
            height: 48px;
            width: 182px;" src="{{ $settings->logo2_image_url }}" alt="logo-brand" />
        @else
        <img style="
            height: 48px;
            width: 182px;" src="{{ $settings->logo_image_url }}" alt="logo-brand" />
        @endif
    </div> -->

    <div class="footer__mobile-app">
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

    <!-- <div class="footer__loc-info">
        <p class="text--body-3">
            {{ $settings->address }}
        </p>
        <p class="text--body-3 phone">
            {{ __('phone') }}: {{ $settings->phone }}
        </p>
        <p class="text--body-3 email text-lowercase">
            {{ __('mail') }}: {{ $settings->email }}
        </p>
    </div> -->

    <!-- <h4 class="footer__title text--body-2-600 sm-center sm-center">{{ __('Connect with') }}</h4> -->
     <div class="mt-3">
        <x-footer.footer-social/>
    </div>
</div>
