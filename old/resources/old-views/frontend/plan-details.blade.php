@extends('layouts.frontend.layout_one')

@section('title')
    {{ __('plan_details') }} ({{ $plan->label }})
@endsection

@section('content')
<!-- breedcrumb section start  -->
<x-frontend.breedcrumb-component :background="$cms->pricing_plan_background_path">
    {{ __('overview') }}
    <x-slot name="items">
        <li class="breedcrumb__page-item">
            <a href="{{ route('frontend.priceplan') }}"
                class="breedcrumb__page-link text--body-3">{{ __('plan_details') }}</a>
        </li>
        <li class="breedcrumb__page-item">
            <a class="breedcrumb__page-link text--body-3">/</a>
        </li>
        <li class="breedcrumb__page-item">
            <a class="breedcrumb__page-link text--body-3">{{ __('plan_details') }}</a>
        </li>
    </x-slot>
</x-frontend.breedcrumb-component>
<!-- breedcrumb section end  -->
<section class="section benefits bgcolor--gray-10">
    <div class="container">
        <h2 class="text--heading-1 section__title">{{ __('plan_details_and_benefits') }} </h2>
        <div class="row justify-content-center my-3">
            <div class="col-lg-12">
                <div class="dashboard-card dashboard-card--benefits">
                    <h2 class="dashboard-card__title">{{ __('current_plan_benefits') }}</h2>
                    <ul class="dashboard__benefits">
                        <li class="dashboard__benefits-left">
                            <ul>
                                <li class="dashboard__benefits-item">
                                    <span class="icon">
                                        <x-svg.check-icon width="12" height="12" stroke="#D32323" />
                                    </span>
                                    <p class="text--body-4">{{ __('post') }} {{ $plan->ad_limit }}
                                        {{ __('ads') }}</p>
                                </li>
                                @if ($plan->featured_limit)
                                <li class="dashboard__benefits-item">
                                    <span class="icon">
                                        <x-svg.check-icon width="12" height="12" stroke="#D32323" />
                                    </span>
                                    <p class="text--body-4">{{ __('featured_on_homepage') }}
                                        {{ $plan->featured_limit }} {{ __('ads') }}</p>
                                </li>
                                @endif
                                @if ($plan->badge)
                                <li class="dashboard__benefits-item">
                                    <span class="icon">
                                        <x-svg.check-icon width="12" height="12" stroke="#D32323" />
                                    </span>
                                    <p class="text--body-4">{{ __('special_membership_badge') }}</p>
                                </li>
                                @endif
                            </ul>
                        </li>
                        <li class="dashboard__benefits-right">
                            <ul>
                                <li class="dashboard__benefits-item">
                                    <span class="icon">
                                        <x-svg.check-icon width="12" height="12" stroke="#D32323" />
                                    </span>
                                    <p class="text--body-4">{{ __('ad_multiple_images') }}</p>
                                </li>
                                @if ($plan->customer_support)
                                <li class="dashboard__benefits-item">
                                    <span class="icon">
                                        <x-svg.check-icon width="12" height="12" stroke="#D32323" />
                                    </span>
                                    <p class="text--body-4">{{ __('standard_customer_support') }}</p>
                                </li>
                                @endif
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            {{-- Paypal payment  --}}
            @if (env('PAYPAL_MODE') == 'sandbox')
                @if ($payment_setting->paypal && env('PAYPAL_SANDBOX_CLIENT_ID') && env('PAYPAL_SANDBOX_CLIENT_SECRET'))
                    <div class="col-xl-6">
                        <div class="membership-card">
                            <div class="membership-card__icon" style="background-color: #e8f7ff">
                                <x-svg.paypal-icon />
                            </div>
                            <div class="membership-card__info">
                                <h2 class="membership-card__title text--body-1">{{ __('paypal_payment') }}</h2>
                                <button id="paypal_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                                    {{ __('pay_now') }}
                                </button>
                            </div>
                        </div>
                    </div>
                @endif
            @else
                @if ($payment_setting->paypal && env('PAYPAL_LIVE_CLIENT_ID') && env('PAYPAL_LIVE_CLIENT_SECRET'))
                    <div class="col-xl-6">
                        <div class="membership-card">
                            <div class="membership-card__icon" style="background-color: #e8f7ff">
                                <x-svg.paypal-icon />
                            </div>
                            <div class="membership-card__info">
                                <h2 class="membership-card__title text--body-1">{{ __('paypal_payment') }}</h2>
                                <button id="paypal_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                                    {{ __('pay_now') }}
                                </button>
                            </div>
                        </div>
                    </div>
                @endif
            @endif

            {{-- Stripe payment  --}}
            @if ($payment_setting->stripe && env('STRIPE_KEY') && env('STRIPE_SECRET'))
            <div class="col-xl-6">
                <div class="membership-card">
                    <div class="membership-card__icon" style="background-color: #e8f7ff">
                        <x-svg.stripe-icon />
                    </div>
                    <div class="membership-card__info">
                        <h2 class="membership-card__title text--body-1">{{ __('stripe_payment') }}</h2>
                        <button id="stripe_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                            {{ __('pay_now') }}
                        </button>
                    </div>
                </div>
            </div>
            @endif

            {{-- Razorpay payment  --}}
            @if ($payment_setting->razorpay && env('RAZORPAY_KEY') && env('RAZORPAY_SECRET'))
            <div class="col-xl-6">
                <div class="membership-card">
                    <div class="membership-card__icon" style="background-color: #e8f7ff">
                        <img src="{{ asset('frontend/images/payment/razorpay.svg') }}" alt="">
                    </div>
                    <div class="membership-card__info">
                        <h2 class="membership-card__title text--body-1">{{ __('razor_payment') }}</h2>
                        <button id="razorpay_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                            {{ __('pay_now') }}
                        </button>
                    </div>
                </div>
            </div>
            @endif

            {{-- SSl Commerz payment  --}}
            @if ($payment_setting->ssl_commerz && env('STORE_ID') && env('STORE_PASSWORD'))
            <div class="col-xl-6">
                <div class="membership-card">
                    <div class="membership-card__icon" style="background-color: #e8f7ff">
                        <img src="{{ asset('frontend/images/payment/ssl.jpeg') }}" alt="">
                    </div>
                    <div class="membership-card__info">
                        <h2 class="membership-card__title text--body-1">{{ __('sslcommerz_payment') }}</h2>
                        <button type="button" id="ssl_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                            {{ __('pay_now') }}
                        </button>
                    </div>
                </div>
            </div>
            @endif

            {{-- Paystack payment  --}}
            @if ($payment_setting->paystack && env('PAYSTACK_PUBLIC_KEY') && env('PAYSTACK_SECRET_KEY'))
            <div class="col-xl-6">
                <div class="membership-card">
                    <div class="membership-card__icon" style="background-color: #e8f7ff">
                        <img src="{{ asset('frontend/images/payment/paystack.png') }}" alt="">
                    </div>
                    <div class="membership-card__info">
                        <h2 class="membership-card__title text--body-1">{{ __('paystack_payment') }}</h2>
                        @if (config('adlisting.currency') == 'USD')
                            <button id="paystack_btn" class="mt-3 btn btn--lg price-plan__checkout-btn">
                                {{ __('pay_now') }}
                            </button>
                        @else
                            <p class="text-danger">{{ __('paystack_does_not_support') }} {{ config('adlisting.currency') }}</p>
                        @endif
                    </div>
                </div>
            </div>
            @endif
        </div>
    </div>
    {{-- Paypal Form  --}}
    <form action="{{ route('paypal.post') }}" method="POST" class="d-none" id="paypal-form">
        @csrf
        <input type="hidden" name="amount" value="{{ $plan->price }}">
        <input type="hidden" name="plan_id" value="{{ $plan->id }}">
    </form>

    {{-- Stripe Form  --}}
    <form action="{{ route('stripe.post') }}" method="POST" class="d-none">
        @csrf
        <input type="hidden" name="amount" value="{{ $plan->price }}">
        <input type="hidden" name="plan_id" value="{{ $plan->id }}">

        <script id="stripe_script" src="https://checkout.stripe.com/checkout.js" class="stripe-button"
            data-key="{{ env('STRIPE_KEY') }}" data-amount="{{ $plan->price*100 }}" data-name="{{ env('APP_NAME') }}"
            data-description="Money pay with stripe" data-locale="{{ app()->getLocale() }}" data-currency="{{ config('adlisting.currency') }}">
        </script>
    </form>

    {{-- Razorpay Form  --}}
    <form action="{{ route('razorpay.post') }}" method="POST" class="d-none">
        @csrf
        <input type="hidden" name="amount" value="{{ $plan->price }}">
        <input type="hidden" name="plan_id" value="{{ $plan->id }}">

        <script id="razor_script" src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="{{ env('RAZORPAY_KEY') }}" data-amount="{{ $plan->price*100 }}"
            data-buttontext="Pay with Razorpay" data-name="{{ env('APP_NAME') }}"
            data-description="Money pay with razorpay" data-prefill.name="{{ auth('customer')->user()->name }}"
            data-prefill.email="{{ auth('customer')->user()->email }}" data-theme.color="#2980b9" data-currency="{{ config('adlisting.currency') }}">
        </script>
    </form>

    {{-- paystack_btn Form  --}}
    <form action="{{ route('paystack.post') }}" method="POST" class="d-none" id="paystack-form">
        @csrf
        <input type="hidden" name="amount" value="{{ $plan->price }}">
        <input type="hidden" name="plan_id" value="{{ $plan->id }}">
    </form>

    {{-- SSL Form  --}}
    <form method="POST" class="needs-validation d-none" novalidate>
        <input type="hidden" value="{{ $plan->price }}" name="amount" id="total_amount" />
        <input id="ssl_plan_id" type="hidden" name="plan_id" value="{{ $plan->id }}">
        <button class="btn btn-primary" id="sslczPayBtn" token="if you have any token validation"
            postdata="your javascript arrays or objects which requires in backend"
            order="If you already have the transaction generated for current order"
            endpoint="{{ route('ssl.pay') }}"> {{ __('pay_now') }}
        </button>
    </form>
</section>
@endsection

@section('frontend_script')
<script>
    $('#paypal_btn').on('click', function (e) {
        e.preventDefault();
        $('#paypal-form').submit();
    });

    $('#stripe_btn').on('click', function (e) {
        e.preventDefault();
        $('.stripe-button-el').click();
    });

    $('#razorpay_btn').on('click', function (e) {
        e.preventDefault();
        $('.razorpay-payment-button').click();
    });

    $('#paystack_btn').on('click', function (e) {
        e.preventDefault();
        $('#paystack-form').submit();
    });
    $('#ssl_btn').on('click', function (e) {
        e.preventDefault();
        $('#sslczPayBtn').click();
    });
    var obj = {};
    obj.amount = $('#total_amount').val();
    obj.plan_id = $('#ssl_plan_id').val();

    $('#sslczPayBtn').prop('postdata', obj);

    (function (window, document) {
        var loader = function () {
            var script = document.createElement("script"),
                tag = document.getElementsByTagName("script")[0];
            // script.src = "https://seamless-epay.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7); // USE THIS FOR LIVE
            script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7); // USE THIS FOR SANDBOX
            tag.parentNode.insertBefore(script, tag);
        };

        window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload",
            loader);
    })(window, document);
</script>
@endsection
