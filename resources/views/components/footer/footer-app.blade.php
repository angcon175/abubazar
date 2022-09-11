<div class="col-xl-4 col-lg-6">
    @if ($settings->android || $settings->ios)
    <h2 class="footer__title text--body-2-600">{{ __('Newsletter') }}</h2>
    @endif

    <div class="subscribe__right">
        <form id="mailForm" action="{{ route('newsletter.subscribe') }}" method="POST">
            @csrf
            <!-- <div class="subscribe__input @error('email') is-invalid border-danger @enderror">
                <span class="icon">
                    <x-svg.envelope-icon />
                </span>
                <input type="email" placeholder="{{ __('email_address') }}" name="email" id="email" />
                <button class="btn" type="submit">{{ __('subscribe') }}</button>
            </div> -->

            <div class="input-group subscribe__input mb-2">
                <!-- <span class="input-group-text"><x-svg.envelope-icon /></span> -->
                <input type="email" class="form-control" placeholder="{{ __('email_address') }}" name="email" id="email" />
                <button class="btn input-group-text" type="submit">{{ __('subscribe') }}</button>
            </div>
            <span class="error" style="color:red"></span>
        </form>
    </div>

    <div class="footer__loc-info">
        <p class="text--body-3">
             {{ __('Address') }}: {{ $settings->address }}
        </p>
        <p class="text--body-3 phone">
            {{ __('phone') }}: {{ $settings->phone }}
        </p>
        <p class="text--body-3 email text-lowercase">
            {{ __('mail') }}: {{ $settings->email }}
        </p>
    </div> 
   
</div>
