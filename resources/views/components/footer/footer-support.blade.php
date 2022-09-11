<div class="col-xl-2 col-6">
    <h2 class="footer__title text--body-2-600">{{ __('About Abubazaar') }}</h2>

    <ul class="footer-menu">
        
       {{--   @if ($faq_enable)
            <li class="footer-menu__item">
                <a href="{{ route('frontend.faq') }}" class="footer-menu__link text--body-3">{{ __('faqs') }}</a>
            </li>
        @endif
        --}}

        
       
        @if ($priceplan_enable)
            <li class="footer-menu__item">
                <a href="{{ route('frontend.priceplan') }}" class="footer-menu__link text--body-3">{{ __('pricing_plan') }}</a>
            </li>
        @endif
         @if ($blog_enable)
            <li class="footer-menu__item">
                <a href="{{ route('frontend.blog') }}" class="footer-menu__link text--body-3">{{ __('blog') }}</a>
            </li>
        @endif
    
        <li class="footer-menu__item">
            <a href="{{ route('frontend.terms') }}" class="footer-menu__link text--body-3">{{ __('terms_conditions') }}</a>
        </li>
        <li class="footer-menu__item">
            <a href="{{ route('frontend.privacy') }}" class="footer-menu__link text--body-3">{{ __('Privacy  Policy') }}</a>
        </li>
        

    </ul>
</div>
