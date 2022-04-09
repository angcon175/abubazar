<div class="footer__bottom">
    <div class="container">
        <div class="row footer__copyright">
            <div class="col-md-6">
                <p class="text--body-3"> {{ __('All rights reserved')}} © {{ date('Y') }}. {{ __('by') }} <a href="#"><b>{{ env('APP_NAME') }}</b></a>
                </p>
                <!-- <p class="text--body-3">{{ env('APP_NAME') }} © {{ date('Y') }}. {{ __('design_by') }} <a href="#"><b></b></a>
                </p> -->
            </div>
            <div class="col-md-6">
                <div class="footer__policy-condition">
                    <a href="{{ route('frontend.privacy') }}" class="text--body-3">{{ __('privacy_policy') }}</a> |
                    <a href="{{ route('frontend.terms') }}" class="text--body-3">{{ __('terms_conditions') }}</a>
                </div>
            </div>
        </div>
    </div>
</div>
