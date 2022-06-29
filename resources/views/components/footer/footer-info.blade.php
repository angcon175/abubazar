<div class="col-xl-4 col-12">
    <div class="footer__brand-logo">
        @if ($logotype === 'dark')
        <img style="
            height: 48px;
            width: 182px;" src="{{ $settings->logo2_image_url }}" alt="logo-brand" />
        @else
        <img style="
            height: 48px;
            width: 182px;" src="{{ $settings->logo_image_url }}" alt="logo-brand" />
        @endif
    </div>
    <div class="footer__loc-info">
        <p class="text--body-3">
            {{ $settings->address }}
        </p>
        <p class="text--body-3 phone">
            {{ __('phone') }}: {{ $settings->phone }}
        </p>
        <p class="text--body-3 email text-lowercase">
            {{ __('mail') }}: {{ $settings->email }}
        </p>
    </div>
     <div class="mt-4">
        <x-footer.footer-social/>
    </div>
</div>
