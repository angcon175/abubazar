<div class="col-xl-2  col-6">
    <h2 class="footer__title text--body-2-600">{{ __('quick_links') }}</h2>

    <ul class="footer-menu">
        <li class="footer-menu__item">
            <a href="{{ route('frontend.adlist') }}" class="footer-menu__link text--body-3">{{ __('ads') }}</a>
        </li>
        <li class="footer-menu__item">
            <a href="{{ route('frontend.about') }}" class="footer-menu__link text--body-3">{{ __('about') }}</a>
        </li>
        @if ($contact_enable)
            <li class="footer-menu__item">
                <a href="{{ route('frontend.contact') }}" class="footer-menu__link text--body-3">{{ __('contact') }}</a>
            </li>
        @endif
    </ul>
</div>
