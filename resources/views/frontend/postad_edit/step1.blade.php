@extends('frontend.postad.index')

@section('title')
    {{ __('edit_ad') }} ({{ __('steps01') }}) - {{ $ad->title }}
@endsection

@section('adlisting_style')
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
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
    @php
        $businessfunctions = DB::table('business_functions')->orderBy('name')->get();
        $educational = DB::table('educational_specializations')->orderBy('name')->get();
        $minimum = DB::table('minimum_qualifications')->orderBy('name')->get();
    @endphp
    <!-- Step 01 -->
    <div class="tab-pane fade show active" id="pills-basic" role="tabpanel" aria-labelledby="pills-basic-tab">
        <div class="dashboard-post__information step-information">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form id="step1_edit_form" action="{{ route('frontend.post.update',$ad->slug) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="dashboard-post__information-form">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-field">
                                <x-forms.label name="ad_name" for="adname" required="true" />
                                <input required value="{{ $ad->title }}" name="title" type="text" placeholder="{{ __('ad_name') }}" id="adname"  class="@error('title') border-danger @enderror"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-field">
                                <label id="month">Price <span class="text-danger">*</span></label>
                                <label id="permonth" style="display:none;">Price Per Month <span class="text-danger">*</span></label>
                                <input required value="{{ $ad->price ?? '' }}" name="price" type="number" min="1" placeholder="{{ __('price') }}" id="price"  class="@error('price') border-danger @enderror"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-select">
                                <x-forms.label name="category" for="allCategory" required="true" />
                                <select required name="category_id" id="categoryId" class="form-control select-bg @error('category_id') border-danger @enderror">
                                    <option value="" hidden>{{ __('select_category') }}</option>
                                    @foreach ($categories as $category)
                                        <option {{ $category->id == $ad->category_id ? 'selected':'' }} value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            @php
                                $subcategories = DB::table('sub_categories')->where('status', 1)->get();
                            @endphp
                            <div class="input-select">
                                <x-forms.label name="subcategory" for="subcategory" required="true" />
                                <select required name="subcategory_id" id="subcategory" class="form-control select-bg @error('subcategory_id') border-danger @enderror">
                                    <option value="" selected>{{ __('select_subcategory') }}</option>
                                    @foreach($subcategories as $subcate)
                                        <option {{ $subcate->id == $ad->subcategory_id ? 'selected':'' }} value="{{$subcate->id}}" >{{ $subcate->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        @if($ad->category_id == 11)
                            @php
                                $myads = DB::table('ads')->where('id', $ad->id)->first();
                            @endphp
                            <div class="row" id="showAlInfo">
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Business Function <span class="text-danger">*</span></label>
                                        <select name="businessfunction_id" class="form-control">
                                            <option value="">Select one</option>
                                            @foreach($businessfunctions as $business)
                                                <option @if($business->id == $myads->businessfunction_id) selected @endif value="{{$business->id}}">{{$business->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Role / Designation<span class="text-danger">*</span></label>
                                        <input type="text" name="role_designation" value="{{$myads->role_designation}}" class="form-control" placeholder="Role / Designation">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Receive Response<span class="text-danger">*</span></label>
                                        <select name="receive_response" class="form-control">
                                            <option value="">Select One</option>
                                            <option @if($myads->total_vacancies == 'Employer Dashboard') selected @endif value="Employer Dashboard">Employer Dashboard</option>
                                            <option @if($myads->total_vacancies == 'Phone') selected @endif value="Phone">Phone</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Total vacancies<span class="text-danger">*</span></label>
                                        <input type="number" name="total_vacancies" value="{{$myads->total_vacancies}}" class="form-control" placeholder="Total vacancies">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2 mb-3">
                                    <h4>About the company / Employer</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Company / Employeer<span class="text-danger">*</span></label>
                                        <input type="text" value="{{$myads->company_employeer_name}}" name="company_employeer_name" class="form-control" placeholder="Company / Employeer name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Company Logo</label>
                                        <input type="file" name="company_logo" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Application Deadline<span class="text-danger">*</span></label>
                                        <input type="text" name="application_deadline" id="datepicker" value="{{$myads->application_deadline}}" class="form-control" placeholder="Application Deadline">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Required experience (years)</label>
                                        <input type="text" name="required_experience" value="{{$myads->required_experience}}" class="form-control" placeholder="Required experience (years)">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2 mb-3">
                                    <h4>Candidate preferences</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Minimum qualification<span class="text-danger">*</span></label>
                                        <select name="minimum_qualification_id" class="form-control">
                                            <option value="">Select one</option>
                                            @foreach($minimum as $min)
                                                <option @if($min->id == $myads->minimum_qualification_id) selected @endif value="{{$min->id}}">{{$min->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Educational specialization</label>
                                        <select name="educational_specialization_id" class="form-control">
                                            <option value="">Select one</option>
                                            @foreach($educational as $educationa)
                                                <option @if($educationa->id == $myads->educational_specialization_id) selected @endif value="{{$educationa->id}}">{{$educationa->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-field">
                                        <label>Skills</label>
                                        <input type="text" name="skills" value="{{$myads->skills}}" class="form-control" placeholder="skills">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Maximum age</label>
                                        <input type="number" name="mixium_age" value="{{$myads->mixium_age}}" class="form-control" placeholder="Maximum age">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Gender preference</label>
                                        <select name="gender_preference" class="form-control">
                                            <option value="">Select one</option>
                                            <option @if($myads->gender_preference == 'Male') selected @endif value="Male">Male</option>
                                            <option @if($myads->gender_preference == 'Female') selected @endif value="Female">Female</option>
                                            <option @if($myads->gender_preference == 'Other') selected @endif value="Other">Other</option>
                                            <option @if($myads->gender_preference == 'Any') selected @endif value="Any">Any</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="row" id="showAlInfo" style="display:none;">
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Business Function <span class="text-danger">*</span></label>
                                        <select name="businessfunction_id" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            @foreach($businessfunctions as $business)
                                                <option value="{{$business->id}}">{{$business->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Role / Designation<span class="text-danger">*</span></label>
                                        <input type="text" name="role_designation" class="form-control" placeholder="Role / Designation">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Receive Response<span class="text-danger">*</span></label>
                                        <select name="receive_response" class="form-control">
                                            <option value="" selected>Select One</option>
                                            <option value="Employer Dashboard">Employer Dashboard</option>
                                            <option value="Phone">Phone</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Total vacancies<span class="text-danger">*</span></label>
                                        <input type="number" name="total_vacancies" class="form-control" placeholder="Total vacancies">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2 mb-3">
                                    <h4>About the company / Employer</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Company / Employeer<span class="text-danger">*</span></label>
                                        <input type="text" name="company_employeer_name" class="form-control" placeholder="Company / Employeer name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Company Logo</label>
                                        <input type="file" name="company_logo" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Application Deadline<span class="text-danger">*</span></label>
                                        <input type="text" name="application_deadline" id="datepicker" class="form-control" placeholder="Application Deadline">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Required experience (years)</label>
                                        <input type="text" name="required_experience" class="form-control" placeholder="Required experience (years)">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2 mb-3">
                                    <h4>Candidate preferences</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Minimum qualification<span class="text-danger">*</span></label>
                                        <select name="minimum_qualification_id" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            @foreach($minimum as $min)
                                                <option value="{{$min->id}}">{{$min->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Educational specialization</label>
                                        <select name="educational_specialization_id" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                                @foreach($educational as $educationa)
                                                    <option value="{{$educationa->id}}">{{$educationa->name}}</option>
                                                @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-field">
                                        <label>Skills</label>
                                        <input type="text" name="skills" class="form-control" placeholder="skills">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Maximum age</label>
                                        <input type="number" name="mixium_age" class="form-control" placeholder="Maximum age">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Gender preference</label>
                                        <select name="gender_preference" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="Other">Other</option>
                                            <option value="Any">Any</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        @endif

                        @if($ad->category_id != 11)
                            <div class="col-md-6" id="brandShowHide">
                                <div class="input-select">
                                    <x-forms.label name="brand" for="brand"/>
                                    <select name="brand_id" id="brandd" class="form-control select-bg @error('brand_id') border-danger @enderror">
                                        <option value="" hidden>{{ __('select_brand') }}</option>
                                            @foreach ($brands as $brand)
                                                <option {{ $brand->id == $ad->brand_id ? 'selected':'' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                            @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6" id="modelShowHide">
                                <div class="input-field">
                                    <x-forms.label name="model" for="modell"/>
                                    <input value="{{ $ad->model ?? '' }}" name="model" type="text" placeholder="{{ __('model') }}" id="modell" class="@error('model') border-danger @enderror" />
                                </div>
                            </div>
                            <div class="col-md-6" id="conditionShowHide">
                                <div class="input-select">
                                    <x-forms.label name="condition" for="conditionss"/>
                                    <select name="condition" id="conditionss" class="form-control select-bg @error('condition') border-danger @enderror">
                                            <option {{ $ad->condition == 'new' ? 'selected':'' }} value="new">{{ __('new') }}</option>
                                            <option {{ $ad->condition == 'used' ? 'selected':'' }} value="used">{{ __('used') }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6" id="authenticityShowHide">
                                <div class="input-select">
                                    <x-forms.label name="authenticity" for="authenticityy"/>
                                    <select required name="authenticity" id="authenticityy" class="form-control select-bg @error('authenticity') border-danger @enderror">
                                            <option {{ $ad->authenticity == 'original'? 'selected':'' }} value="original">{{ __('original') }}</option>
                                            <option {{ $ad->authenticity == 'refurbished'? 'selected':'' }} value="refurbished">{{ __('refurbished') }}</option>
                                    </select>
                                </div>
                            </div>
                        @else
                            <div class="col-md-6" id="brandShowHide" style="display:none;">
                                <div class="input-select">
                                    <x-forms.label name="brand" for="brand"/>
                                    <select name="brand_id" id="brandd" class="form-control select-bg @error('brand_id') border-danger @enderror">
                                        <option value="" hidden>{{ __('select_brand') }}</option>
                                            @foreach ($brands as $brand)
                                                <option {{ $brand->id == $ad->brand_id ? 'selected':'' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                            @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6" id="modelShowHide" style="display:none;">
                                <div class="input-field">
                                    <x-forms.label name="model" for="modell"/>
                                    <input value="{{ $ad->model ?? '' }}" name="model" type="text" placeholder="{{ __('model') }}" id="modell" class="@error('model') border-danger @enderror" />
                                </div>
                            </div>
                            <div class="col-md-6" id="conditionShowHide" style="display:none;">
                                <div class="input-select">
                                    <x-forms.label name="condition" for="conditionss"/>
                                    <select name="condition" id="conditionss" class="form-control select-bg @error('condition') border-danger @enderror">
                                            <option {{ $ad->condition == 'new' ? 'selected':'' }} value="new">{{ __('new') }}</option>
                                            <option {{ $ad->condition == 'used' ? 'selected':'' }} value="used">{{ __('used') }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6" id="authenticityShowHide" style="display:none;">
                                <div class="input-select">
                                    <x-forms.label name="authenticity" for="authenticityy"/>
                                    <select required name="authenticity" id="authenticityy" class="form-control select-bg @error('authenticity') border-danger @enderror">
                                            <option {{ $ad->authenticity == 'original'? 'selected':'' }} value="original">{{ __('original') }}</option>
                                            <option {{ $ad->authenticity == 'refurbished'? 'selected':'' }} value="refurbished">{{ __('refurbished') }}</option>
                                    </select>
                                </div>
                            </div>
                        @endif
                    </div>
                    @if($ad->category_id != 11)
                        <div class="row">
                            <div class="col-lg-3" id="negotiableShowHide">
                                <div class="form-check">
                                    <input name="negotiable" type="hidden" value="0">
                                    <input {{ $ad->negotiable == 1 ? 'checked':'' }} value="1" name="negotiable" type="checkbox" class="form-check-input" id="checkme" />
                                    <x-forms.label name="negotiable" for="checkme" class="form-check-label" />
                                </div>
                            </div>
                            @if ($ad->featured)
                                <div class="col-lg-3" id="featuredShowHide">
                                    <div class="form-check">
                                        <input name="featured" type="hidden" value="0">
                                        <input {{ $ad->featured == 1 ? 'checked':'' }} value="1" name="featured" type="checkbox" class="form-check-input" id="featured" />
                                        <x-forms.label name="featured" for="featured" class="form-check-label" />
                                    </div>
                                </div>
                            @else
                                <input name="featured" type="hidden" value="0">
                            @endif
                        </div>
                    @else
                        <div class="row" id="negotiableShowHide" style="display:none;"> 
                            <div class="col-lg-3">
                                <div class="form-check">
                                    <input name="negotiable" type="hidden" value="0">
                                    <input {{ $ad->negotiable == 1 ? 'checked':'' }} value="1" name="negotiable" type="checkbox" class="form-check-input" id="checkme" />
                                    <x-forms.label name="negotiable" for="checkme" class="form-check-label" />
                                </div>
                            </div>
                            @if ($ad->featured)
                                <div class="col-lg-3" id="featuredShowHide">
                                    <div class="form-check">
                                        <input name="featured" type="hidden" value="0">
                                        <input {{ $ad->featured == 1 ? 'checked':'' }} value="1" name="featured" type="checkbox" class="form-check-input" id="featured" />
                                        <x-forms.label name="featured" for="featured" class="form-check-label" />
                                    </div>
                                </div>
                            @else
                                <input name="featured" type="hidden" value="0">
                            @endif
                        </div>
                    @endif
                </div>
                <div class="dashboard-post__action-btns">
                    <a href="{{ route('frontend.post.cancel.edit') }}" class="btn btn--lg bg-danger text-light">
                       {{ __('cancel_edit') }}
                        <span class="icon--right">
                            <x-svg.cross-icon />
                        </span>
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
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
    // ad update and cancel edit
    function updateCancelEdit(){
        $('#cancel_edit_input').val(1)
        $('#step1_edit_form').submit()
    }
    $("#datepicker").datepicker();
    </script>
    <script>
        $("#categoryId").on('change', function() {
            let id = $(this).val();
            if(id == 11) {
                // alert(id);
                $("#permonth").show();
                $("#month").hide();
                $("#brandShowHide").hide();
                $("#modelShowHide").hide();
                $("#conditionShowHide").hide();
                $("#authenticityShowHide").hide();
                $("#featuredShowHide").hide();
                $("#showAlInfo").show();
                $("#negotiableShowHide").hide();
                $('#brandd').removeAttr('required');
                $('#modell').removeAttr('required');
            }else {
                // alert('work');
                $("#permonth").hide();
                $("#month").show();
                $("#brandShowHide").show();
                $("#modelShowHide").show();
                $("#authenticityShowHide").show();
                $("#conditionShowHide").show();
                $("#featuredShowHide").show();
                $("#showAlInfo").hide();
                $("#negotiableShowHide").show();
                $('#brandd').attr('required', 'required');
                $('#modell').attr('required', 'required');
            }
        });
    </script>
@endpush
