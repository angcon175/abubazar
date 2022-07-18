@extends('frontend.postad.index')

@section('title', __('step2'))

@section('post-ad-content')
<style>
    select {
        height: 48px;
        padding: 12px 18px;
        border-radius: 5px;
        border: 1px solid #edeff5;
        outline: none !important;
        box-shadow: none !important;
    }
    select:focus {
        border-color: #d32323 !important;
    }
</style>
 <!-- Step 02 -->
 <div class="tab-pane fade show active" id="pills-post" role="tabpanel" aria-labelledby="pills-post-tab">
    <div class="dashboard-post__ads step-information">
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
        <form action="{{ route('frontend.post.step2.store') }}" method="POST">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="input-field">
                        <x-forms.label name="phone_number" required="true" for="phoneNumber" />
                        <input required name="phone" id="phoneNumber" type="tel" placeholder="{{ __('phone') }}" value="{{ $ad->phone ?? '' }}" class="@error('phone') border-danger @enderror"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-field">
                        <x-forms.label name="backup_phone_number" for="backupPhone" />
                        <input name="phone_2" id="backupPhone" type="tel" class="backupPhone" placeholder="{{ __('phone_number') }}" value="{{ $ad->phone_2 ?? '' }}"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-select">
                        <x-forms.label name="city" required="true" for="cityy" />
                        <select required name="city_id" id="cityy" class="form-control select-bg @error('city_id') border-danger @enderror">
                            <option class="d-none" value="" selected>{{ __('select_city') }}</option>
                            @isset($ad->brand_id)
                                @foreach ($citis as $city)
                                    <option {{ $city->id == $ad->city_id ? 'selected':'' }} value="{{ $city->id }}">{{ $city->name }}</option>
                                @endforeach
                            @else
                                @foreach ($citis as $city)
                                    <option value="{{ $city->id }}">{{ $city->name }}</option>
                                @endforeach
                            @endisset
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-select">
                        <x-forms.label  required="true" name="town" for="townn" />
                        <select required name="town_id" id="townn" class="form-control select-bg @error('town_id') border-danger @enderror">
                            <option value="" hidden>{{ __('select_town') }}</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="dashboard-post__action-btns">
                <a href="{{ route('frontend.post.step1.back') }}" class="btn btn--lg btn--outline">
                    {{ __('previous') }}
                </a>
                <button type="submit" class="btn btn--lg">
                    {{ __('next_step') }}
                    <span class="icon--right">
                        <x-svg.right-arrow-icon />
                    </span>
                </button>
            </div>
        </form>
    </div>
</div>
@endsection
