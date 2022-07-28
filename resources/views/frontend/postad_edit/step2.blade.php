@extends('frontend.postad.index')

@section('title')
    {{ __('edit_ad') }} ({{ __('steps02') }}) - {{ $ad->title }}
@endsection

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
            <div class="row">
                <div class="col-md-6">
                    <div class="input-field">
                        <x-forms.label name="phone_number" for="phoneNumber" required="true" />
                        <input name="phone" id="phoneNumber" type="tel" placeholder="{{ __('phone') }}" value="{{ $ad->phone }}" class="@error('phone') border-danger @enderror"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-field">
                        <x-forms.label name="backup_phone_number" for="backupPhone" />
                        <input name="phone_2" id="backupPhone" type="tel" class="backupPhone" placeholder="{{ __('phone_number') }}" value="{{ $ad->phone_2 }}"/>
                    </div>
                </div>
                <div class="col-md-12 mb-3">
                    <div class="form-check">
                        <input name="show_customer_info" type="checkbox" class="form-check-input" id="showcustomerinfo" @if($adsInfo->show_customer_info == 1) checked @endif/>
                        @if($adsInfo->show_customer_info == 1)
                            <label class="form-check-label" id="changeText">Visible my phone and email on Ads</label>
                        @else
                            <label class="form-check-label" id="changeText">Invisible my phone and email on Ads</label>
                        @endif
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-select">
                        <x-forms.label required="true" name="city" for="cityy" />
                        <select name="city_id" id="mycityId" class="form-control select-bg @error('city_id') border-danger @enderror">
                            <option class="d-none" value="" selected>{{ __('select_city') }}</option>
                            @foreach ($citis as $city)
                                <option {{ $city->id == $ad->city_id ? 'selected':'' }} value="{{ $city->id }}">{{ $city->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    @php
                        $towns = DB::table('towns')->get();
                    @endphp
                    <div class="input-select">
                        <x-forms.label required="true" name="town" for="townn" />
                        <select name="town_id" id="mytownId" class="form-control select-bg @error('town_id') border-danger @enderror">
                            <option value="" hidden>{{ __('select_town') }}</option>
                            @foreach($towns as $town)
                                <option {{ $town->id == $ad->town_id ? 'selected':'' }} value="{{$town->id}}">{{ $town->name }}</option>
                            @endforeach
                        </select>
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
    <script>
        $("#showcustomerinfo").click(function(){
            if($(this).is(":checked")){
                $("#showcustomerinfo").val(1);
                $("#changeText").text("Visible my phone and email on Ads");
            } else if($(this).is(":not(:checked)")){
                $("#changeText").text("Invisible my phone and email on Ads");
                $("#showcustomerinfo").val(0);
            }
        });
    </script>
    <script>
        $(document).ready(function() {
            $('#mycityId').on('change', function(){
                var city_id = $(this).val();
                // alert(city_id);
                if(city_id) {
                    $.ajax({
                        url: "{{ url('/dashboard/post/city-town/ajax') }}/" + city_id,
                        type:"GET",
                        dataType:"json",
                        success:function(data) {
                            $('#mytownId').html('');
                            var d =$('#mytownId').empty();
                            $('#mytownId').append('<option value="" disabled selected> Select One </option>');
                            $.each(data, function(key, value){
                                $('#mytownId').append('<option value="'+ value.id +'">' + value.name + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });
        });
    </script>
@endpush
