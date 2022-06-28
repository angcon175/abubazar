@extends('frontend.postad.index')

@section('title')
    {{ __('edit_ad') }} ({{ __('steps02') }}) - {{ $ad->title }}
@endsection

@section('post-ad-content')
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
        <form id="step2_edit_form" action="{{ route('frontend.post.step2.update',$ad->slug) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="input-field__group">
                <div class="input-field">
                    <x-forms.label name="phone_number" for="phoneNumber" required="true" />
                    <input name="phone" id="phoneNumber" type="tel" placeholder="{{ __('phone') }}" value="{{ $ad->phone }}" class="@error('phone') border-danger @enderror"/>
                </div>
                <div class="input-field">
                    <x-forms.label name="backup_phone_number" for="backupPhone" />
                    <input name="phone_2" id="backupPhone" type="tel" class="backupPhone" placeholder="{{ __('phone_number') }}" value="{{ $ad->phone_2 }}"/>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="input-field__group">
                        <div class="input-select">
                            <x-forms.label name="city" for="cityy" />
                            <select name="city_id" id="cityy" class="form-control select-bg @error('city_id') border-danger @enderror">
                                <option class="d-none" value="" selected>{{ __('select_city') }}</option>
                                    @foreach ($citis as $city)
                                        <option {{ $city->id == $ad->city_id ? 'selected':'' }} value="{{ $city->id }}">{{ $city->name }}</option>
                                    @endforeach
                            </select>
                        </div>
                        <div class="input-select">
                            <x-forms.label name="town" for="townn" />
                            <select name="town_id" id="townn" class="form-control select-bg @error('town_id') border-danger @enderror">
                                <option value="" hidden>{{ __('select_town') }}</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dashboard-post__action-btns">
                <a href="{{ route('frontend.post.step1.back', $ad->slug) }}" class="btn btn--lg btn--outline">
                    {{ __('previous') }}
                </a>
                <button type="button" onclick="updateCancelEdit()" class="btn btn--lg bg-warning text-light">
                    {{ __('update_cancel_edit') }}
                    <span class="icon--right">
                        <x-svg.cross-icon />
                    </span>
                </button>
                <button type="submit" class="btn btn--lg">
                    {{ __('update_next_step') }}
                    <span class="icon--right">
                        <x-svg.right-arrow-icon />
                    </span>
                </button>
            </div>
            <input type="hidden" id="cancel_edit_input" name="cancel_edit" value="0">
        </form>
    </div>
</div>
@endsection

@push('post-ad-scripts')
<script>
    // ad update and cancel edit
    function updateCancelEdit(){
        $('#cancel_edit_input').val(1)
        $('#step2_edit_form').submit()
    }
</script>
@endpush
