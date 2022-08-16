<div class="col-xl-4 col-12">
    @if ($settings->android || $settings->ios)
    <h2 class="footer__title text--body-2-600">{{ __('Newsletter') }}</h2>
    @endif

    <div class="subscribe__right">
        <form id="mailForm" action="" method="POST">
            @csrf
            <!-- <div class="subscribe__input @error('email') is-invalid border-danger @enderror">
                <span class="icon">
                    <x-svg.envelope-icon />
                </span>
                <input type="email" placeholder="{{ __('email_address') }}" name="email" id="email" />
                <button class="btn" type="submit">{{ __('subscribe') }}</button>
            </div> -->

            <div class="input-group subscribe__input mb-3">
                <span class="input-group-text"><x-svg.envelope-icon /></span>
                <input type="email" placeholder="{{ __('email_address') }}" name="email" id="email" />
                <button class="btn" type="submit">{{ __('subscribe') }}</button>
            </div>

            <span class="error" style="color:red"></span>
        </form>
    </div>

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
   
</div>
