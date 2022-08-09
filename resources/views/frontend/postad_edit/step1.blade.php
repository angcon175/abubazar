@extends('frontend.postad.index')

@section('title')
    {{ __('edit_ad') }} ({{ __('steps01') }}) - {{ $ad->title }}
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
                                        <select name="businessfunction" class="form-control">
                                            <option value="">Select one</option>
                                            <option @if($myads->businessfunction == 'administration') selected @endif value="administration">Administration</option>
                                            <option @if($myads->businessfunction == 'accounting_finance') selected @endif value="accounting_finance">Accounting &amp; Finance</option>
                                            <option @if($myads->businessfunction == 'contractual') selected @endif value="contractual">Contractual</option>
                                            <option @if($myads->businessfunction == 'customer_support') selected @endif value="customer_support">Customer Support</option>
                                            <option @if($myads->businessfunction == 'data_entry_analysis') selected @endif value="data_entry_analysis">Data Entry &amp; Analysis</option>
                                            <option @if($myads->businessfunction == 'creative_design_architecture') selected @endif value="creative_design_architecture">Creative, Design &amp; Architecture</option>
                                            <option @if($myads->businessfunction == 'education_training') selected @endif value="education_training">Education &amp; Training</option>
                                            <option @if($myads->businessfunction == 'hospitality') selected @endif value="hospitality">Hospitality</option>
                                            <option @if($myads->businessfunction == 'human_resources') selected @endif value="human_resources">Human Resources</option>
                                            <option @if($myads->businessfunction == 'it_telecom') selected @endif value="it_telecom">IT &amp; Telecom</option>
                                            <option @if($myads->businessfunction == 'legel') selected @endif value="legel">Legal</option>
                                            <option @if($myads->businessfunction == 'logistics') selected @endif value="logistics">Logistics</option>
                                            <option @if($myads->businessfunction == 'management') selected @endif value="management">Management</option>
                                            <option @if($myads->businessfunction == 'manufacturing') selected @endif value="manufacturing">Manufacturing</option>
                                            <option @if($myads->businessfunction == 'marketing_salse') selected @endif value="marketing_salse">Marketing &amp; Sales</option>
                                            <option @if($myads->businessfunction == 'operations') selected @endif value="operations">Operations</option>
                                            <option @if($myads->businessfunction == 'quality_assurance') selected @endif value="quality_assurance">Quality Assurance</option>
                                            <option @if($myads->businessfunction == 'research_technical') selected @endif value="research_technical">Research &amp; Technical</option>
                                            <option @if($myads->businessfunction == 'security') selected @endif value="security">Security</option>
                                            <option @if($myads->businessfunction == 'others') selected @endif value="others">Others</option>
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
                                        <input type="date" name="application_deadline" value="{{$myads->application_deadline}}" class="form-control" placeholder="Application Deadline">
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
                                        <select name="minimum_qualification" class="form-control">
                                            <option value="">Select one</option>
                                            <option @if($myads->minimum_qualification == 'primary_school') selected @endif value="primary_school">Primary School</option>
                                            <option @if($myads->minimum_qualification == 'high_school') selected @endif value="high_school">High School</option>
                                            <option @if($myads->minimum_qualification == 'ssc') selected @endif value="ssc">SSC / O Level</option>
                                            <option @if($myads->minimum_qualification == 'hsc') selected @endif value="hsc">HSC / A Level</option>
                                            <option @if($myads->minimum_qualification == 'diploma') selected @endif value="diploma">Diploma</option>
                                            <option @if($myads->minimum_qualification == 'graduate') selected @endif value="graduate">Bachelor / Honors</option>
                                            <option @if($myads->minimum_qualification == 'post_graduate') selected @endif value="post_graduate">Masters</option>
                                            <option @if($myads->minimum_qualification == 'doctorate') selected @endif value="doctorate">PhD / Doctorate</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Educational specialization</label>
                                        <select name="educational_specialization" class="form-control">
                                            <option value="">Select one</option>
                                            <option @if($myads->educational_specialization == 'art_humanities') selected @endif value="art_humanities">Art and Humanities</option>
                                            <option @if($myads->educational_specialization == 'business_management') selected @endif value="business_management">Business and Management</option>
                                            <option @if($myads->educational_specialization == 'accounting') selected @endif value="accounting">Accounting</option>
                                            <option @if($myads->educational_specialization == 'design_fashion') selected @endif value="design_fashion">Design and Fashion</option>
                                            <option @if($myads->educational_specialization == 'engineering') selected @endif value="engineering">Engineering</option>
                                            <option @if($myads->educational_specialization == 'events_hospitality') selected @endif value="events_hospitality">Events and Hospitality</option>
                                            <option @if($myads->educational_specialization == 'finance_commerce') selected @endif value="finance_commerce">Finance and Commerce</option>
                                            <option @if($myads->educational_specialization == 'human_resources') selected @endif value="human_resources">Resources</option>
                                            <option @if($myads->educational_specialization == 'info_technology') selected @endif value="info_technology">Information Technology</option>
                                            <option @if($myads->educational_specialization == 'law') selected @endif value="law">Law</option>
                                            <option @if($myads->educational_specialization == 'marketing_sales') selected @endif value="marketing_sales">Marketing and Sales</option>
                                            <option @if($myads->educational_specialization == 'mass_comm') selected @endif value="mass_comm">Mass Communication</option>
                                            <option @if($myads->educational_specialization == 'medicine') selected @endif value="medicine">Medicine</option>
                                            <option @if($myads->educational_specialization == 'sciences') selected @endif value="sciences">Sciences</option>
                                            <option @if($myads->educational_specialization == 'vocational') selected @endif value="vocational">Vocational and Technical</option>
                                            <option @if($myads->educational_specialization == 'others') selected @endif value="others">Others</option>
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
                                        <select name="businessfunction" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            <option value="administration">Administration</option>
                                            <option value="accounting_finance">Accounting &amp; Finance</option>
                                            <option value="contractual">Contractual</option>
                                            <option value="customer_support">Customer Support</option>
                                            <option value="data_entry_analysis">Data Entry &amp; Analysis</option>
                                            <option value="creative_design_architecture">Creative, Design &amp; Architecture</option>
                                            <option value="education_training">Education &amp; Training</option>
                                            <option value="hospitality">Hospitality</option>
                                            <option value="human_resources">Human Resources</option>
                                            <option value="it_telecom">IT &amp; Telecom</option>
                                            <option value="legel">Legal</option>
                                            <option value="logistics">Logistics</option>
                                            <option value="management">Management</option>
                                            <option value="manufacturing">Manufacturing</option>
                                            <option value="marketing_salse">Marketing &amp; Sales</option>
                                            <option value="operations">Operations</option>
                                            <option value="quality_assurance">Quality Assurance</option>
                                            <option value="research_technical">Research &amp; Technical</option>
                                            <option value="security">Security</option>
                                            <option value="others">Others</option>
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
                                        <input type="date" name="application_deadline" class="form-control" placeholder="Application Deadline">
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
                                        <select name="minimum_qualification" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            <option value="primary_school">Primary School</option>
                                            <option value="high_school">High School</option>
                                            <option value="ssc">SSC / O Level</option>
                                            <option value="hsc">HSC / A Level</option>
                                            <option value="diploma">Diploma</option>
                                            <option value="graduate">Bachelor / Honors</option>
                                            <option value="post_graduate">Masters</option>
                                            <option value="doctorate">PhD / Doctorate</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-field">
                                        <label>Educational specialization</label>
                                        <select name="educational_specialization" class="form-control">
                                            <option selected="selected" value="">Select one</option>
                                            <option value="art_humanities">Art and Humanities</option>
                                            <option value="business_management">Business and Management</option>
                                            <option value="accounting">Accounting</option>
                                            <option value="design_fashion">Design and Fashion</option>
                                            <option value="engineering">Engineering</option>
                                            <option value="events_hospitality">Events and Hospitality</option>
                                            <option value="finance_commerce">Finance and Commerce</option>
                                            <option value="human_resources">Resources</option>
                                            <option value="info_technology">Information Technology</option>
                                            <option value="law">Law</option>
                                            <option value="marketing_sales">Marketing and Sales</option>
                                            <option value="mass_comm">Mass Communication</option>
                                            <option value="medicine">Medicine</option>
                                            <option value="sciences">Sciences</option>
                                            <option value="vocational">Vocational and Technical</option>
                                            <option value="others">Others</option>
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
                        <div class="col-md-6" id="brandShowHide">
                            <div class="input-select">
                                <x-forms.label name="brand" for="brand" required="true" />
                                <select required name="brand_id" id="brandd" class="form-control select-bg @error('brand_id') border-danger @enderror">
                                    <option value="" hidden>{{ __('select_brand') }}</option>
                                        @foreach ($brands as $brand)
                                            <option {{ $brand->id == $ad->brand_id ? 'selected':'' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6" id="modelShowHide">
                            <div class="input-field">
                                <x-forms.label name="model" for="modell" required="true" />
                                <input required value="{{ $ad->model ?? '' }}" name="model" type="text" placeholder="{{ __('model') }}" id="modell" class="@error('model') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-md-6" id="conditionShowHide">
                            <div class="input-select">
                                <x-forms.label name="condition" for="conditionss" required="true" />
                                <select required name="condition" id="conditionss" class="form-control select-bg @error('condition') border-danger @enderror">
                                        <option {{ $ad->condition == 'new' ? 'selected':'' }} value="new">{{ __('new') }}</option>
                                        <option {{ $ad->condition == 'used' ? 'selected':'' }} value="used">{{ __('used') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6" id="authenticityShowHide">
                            <div class="input-select">
                                <x-forms.label name="authenticity" for="authenticityy" required="true" />
                                <select required name="authenticity" id="authenticityy" class="form-control select-bg @error('authenticity') border-danger @enderror">
                                        <option {{ $ad->authenticity == 'original'? 'selected':'' }} value="original">{{ __('original') }}</option>
                                        <option {{ $ad->authenticity == 'refurbished'? 'selected':'' }} value="refurbished">{{ __('refurbished') }}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
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
<script>
    // ad update and cancel edit
    function updateCancelEdit(){
        $('#cancel_edit_input').val(1)
        $('#step1_edit_form').submit()
    }
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
                $('#brandd').attr('required', 'required');
                $('#modell').attr('required', 'required');
            }
        });
    </script>
@endpush
