<div class="col-md-8 col-lg-6 col-xl-5">
    <div class="registration-form">
        <h2 class="text-center text--heading-1 registration-form__title">{{ __('sign_up') }}</h2>
       {{-- Social Login --}}
       <x-auth.social-login/>

        <div class="registration-form__wrapper">
            <form action="{{ route('customer.register') }}" method="POST">
                @csrf
                <div class="input-field">
                    <input value="{{ old('name') }}" type="text" placeholder="{{ __('full_name') }}" name="name" class="@error('name') is-invalid border-danger @enderror" required />
                    @error('name')<span class="text-danger">{{ $message }}</span>@enderror
                </div>
                <div class="input-field">
                    <input value="{{ old('username') }}" type="text" placeholder="{{ __('username') }}" name="username" class="@error('username') is-invalid border-danger @enderror" required />
                    @error('username')<span class="text-danger">{{ $message }}</span>@enderror
                </div>
                <div class="input-field">
                    <input value="{{ old('email') }}" type="email" placeholder="{{ __('email_address') }}" name="email" class="@error('email') is-invalid border-danger @enderror" required />
                    @error('email')<span class="text-danger">{{ $message }}</span>@enderror
                </div>
                <div class="input-field" title="Do not put any wrong or inactive number for otp verification ">
                    <input value="{{ old('phone') }}" type="tel" placeholder="Ex:554867836" name="phone" class="@error('phone') is-invalid border-danger @enderror" required />
                    @error('phone')<span class="text-danger">{{ $message }}</span>@enderror
                </div>

                <div class="input-field">
                    <input type="password" name="password" placeholder="{{ __('password') }}" id="password" class="@error('password') is-invalid border-danger @enderror" required />
                    <span class="icon icon--eye" onclick="showPassword('password',this)">
                        <x-svg.eye-icon />
                    </span>
                    @error('password') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
                <div class="input-field">
                    <input type="password" name="password_confirmation" placeholder="{{ __('confirm_password') }}" id="cpassword" class="@error('password') is-invalid border-danger @enderror" required />
                    <span class="icon icon--eye" onclick="showPassword('cpassword',this)">
                        <x-svg.eye-icon />
                    </span>
                    @error('password') <span class="text-danger">{{ $message }}</span> @enderror
                </div>
                <div class="input-field">
                    {!! NoCaptcha::renderJs() !!}
                    {!! NoCaptcha::display() !!}
                    @if ($errors->has('g-recaptcha-response'))
                        <span class="help-block">
                            <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                        </span>
                    @endif
                </div>
                <div class="registration-form__option">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="checkme" />
                        <label class="form-check-label" for="checkme">
                            {{ __('read_agree') }} <a href="{{ route('frontend.privacy') }}">{{ __('privacy_policy') }}</a> {{ __('and') }}
                            <a href="{{ route('frontend.terms') }}">
                                {{ __('terms_conditions') }}
                            </a>
                        </label>
                    </div>
                </div>
                <button class="btn btn--lg w-100 registration-form__btns" type="submit">
                    {{ __('sign_up') }}
                    <span class="icon--right">
                        <x-svg.right-arrow-icon stroke="#fff" />
                    </span>
                </button>
                <p class="text--body-3 registration-form__redirect">{{ __('have_account') }} ? <a href="{{ route('customer.login') }}">{{ __('sign_in') }}</a></p>
            </form>
        </div>
    </div>
</div>

