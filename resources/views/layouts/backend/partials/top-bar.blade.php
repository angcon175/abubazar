@if (!env('MAIL_MAILER') || !env('MAIL_HOST') || !env('MAIL_PORT') || !env('MAIL_USERNAME') || !env('MAIL_PASSWORD') || !env('MAIL_ENCRYPTION') || !env('MAIL_FROM_ADDRESS') || !env('MAIL_FROM_NAME'))
    <div class="alert bg-warning" role="alert">
        <strong>Mail Configuration Failed!</strong> Please configure your mail setting. <a
            href="{{ route('setting.index', 'mail') }}"
            class="text-dark text-decoration-underline">{{ __('go_to_details') }}</a>
    </div>
@endif

@if ($priceplan_enable)
    @if (!$payment_settings->paypal && !$payment_settings->stripe && !$payment_settings->razorpay && !$payment_settings->paystack && !$payment_settings->ssl_commerz)
        <div class="alert bg-warning" role="alert">
            <strong>Payment Configuration Failed!</strong> Please configure your payment setting. <a
                href="{{ route('setting.index', 'payment') }}"
                class="text-dark text-decoration-underline">{{ __('go_to_details') }}</a>
        </div>
    @endif
@endif
