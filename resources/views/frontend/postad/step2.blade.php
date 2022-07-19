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
                <div class="col-md-12 mb-3">
                    <div class="form-check">
                        <input value="1" name="show_customer_info" type="checkbox" class="form-check-input" id="showcustomerinfo" checked/>
                        <label class="form-check-label" id="changeText">Visible my phone and email on Ads</label>
                    </div>
                </div>
                <div class="col-md-6">
<<<<<<< HEAD
                    <div class="input-select">
                        <x-forms.label name="city" required="true" for="cityy" />
                        <select required name="city_id" id="mycityId" class="form-control select-bg @error('city_id') border-danger @enderror">
                            <option class="d-none" value="" selected>{{ __('select_city') }}</option>
                            @foreach ($citis as $city)
                                <option value="{{ $city->id }}">{{ $city->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-select">
                        <x-forms.label  required="true" name="town" for="townn" />
                        <select required name="town_id" id="mytownId" class="form-control select-bg @error('town_id') border-danger @enderror">
                            <option value="" hidden>{{ __('select_town') }}</option>
                        </select>
=======
                    <div class="input-field__group">
                        <div class="mb-3 w-100">
                            <x-forms.label name="city" required="true" class="form-label" for="city" />
                            <select required name="city_id" id="city" class="form-control select-bg @error('city_id') border-danger @enderror">
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
                </div>
                <div class="col-md-6">
                    <div class="mb-3 w-100">
                        <div class="input-select">
                            <x-forms.label name="town" class="form-label" for="townn" />
                            <select required name="town_id" id="town" class="form-control select-bg @error('town_id') border-danger @enderror">
                                <option value="" hidden>{{ __('select_town') }}</option>
                            </select>
                        </div>
>>>>>>> 5e1599d7d18d48da5040baffb021dc3a57697446
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

@section('frontend_script')
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
@endsection