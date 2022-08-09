@extends('frontend.postad.index')

@section('title', __('step1'))

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
            <form action="{{ route('frontend.post.store') }}" method="POST">
                @csrf
                <div class="dashboard-post__information-form">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-field">
                                <x-forms.label name="ad_name" required="true" for="adname" />
                                <input required value="{{ $ad->title ?? '' }}" name="title" type="text" placeholder="{{ __('ad_name') }}" id="adname"  class="@error('title') border-danger @enderror"/>
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
                                <x-forms.label name="category" required="true" for="allCategory" />
                                <select required name="category_id" id="categoryId" class="form-control select-bg @error('category_id') border-danger @enderror">
                                    <option value="" hidden>{{ __('select_category') }}</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-select">
                                <label id="month">Sub Category <span class="text-danger">*</span></label>
                                <select required name="subcategory_id" id="subcategory" class="form-control select-bg @error('subcategory_id') border-danger @enderror">
                                </select>
                            </div>
                        </div>
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
                        <div class="col-md-6" id="brandShowHide">
                            <div class="input-select">
                                <x-forms.label name="brand" for="brand" />
                                <select required name="brand_id" id="brandd" class="form-control select-bg @error('brand_id') border-danger @enderror">
                                    <option value="" hidden>{{ __('select_brand') }}</option>
                                    @isset($ad->brand_id)
                                        @foreach ($brands as $brand)
                                            <option {{ $brand->id == $ad->brand_id ? 'selected':'' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                    @else
                                        @foreach ($brands as $brand)
                                            <option {{ old('brand_id') == $brand->id ? 'selected':'' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                    @endisset
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6" id="modelShowHide">
                            <div class="input-field">
                                <x-forms.label name="model" for="modell" />
                                <input required value="{{ $ad->model ?? '' }}" name="model" type="text" placeholder="{{ __('model') }}" id="modell" class="@error('model') border-danger @enderror" />
                            </div>
                        </div>
                        <div class="col-md-6" id="conditionShowHide">
                            <div class="input-select">
                                <x-forms.label name="condition" for="conditionss" />
                                <select required name="condition" id="conditionss" class="form-control select-bg @error('condition') border-danger @enderror">
                                    @isset($ad->condition)
                                        <option {{ $ad->condition == 'new' ? 'selected':'' }} value="new">{{ __('new') }}</option>
                                        <option {{ $ad->condition == 'used' ? 'selected':'' }} value="used">{{ __('used') }}</option>
                                    @else
                                        <option value="new">{{ __('new') }}</option>
                                        <option value="used">{{ __('used') }}</option>
                                    @endisset
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6" id="authenticityShowHide">
                            <div class="input-select">
                                <x-forms.label name="authenticity" for="authenticityy" />
                                <select required name="authenticity" id="authenticityy" class="form-control select-bg @error('authenticity') border-danger @enderror">
                                    @isset($ad->condition)
                                        <option {{ $ad->authenticity == 'original'? 'selected':'' }} value="original">{{ __('original') }}</option>
                                        <option {{ $ad->authenticity == 'refurbished'? 'selected':'' }} value="refurbished">{{ __('refurbished') }}</option>
                                    @else
                                        <option value="original">{{ __('original') }}</option>
                                        <option value="refurbished">{{ __('refurbished') }}</option>
                                    @endisset
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-check">
                                <input name="negotiable" type="hidden" value="0">
                                @isset($ad->negotiable)
                                    <input {{ $ad->negotiable == 1 ? 'checked':'' }} value="1" name="negotiable" type="checkbox" class="form-check-input" id="checkme" />
                                @else
                                    <input value="1" name="negotiable" type="checkbox" class="form-check-input" id="checkme"/>
                                @endisset
                                <x-forms.label name="negotiable"  class="form-check-label" for="checkme" />
                            </div>
                        </div>
                        @if (session('user_plan')->featured_limit)
                            <div class="col-lg-3" id="featuredShowHide">
                                <div class="form-check">
                                    <input name="featured" type="hidden" value="0">
                                    @isset($ad->featured)
                                        <input {{ $ad->featured == 1 ? 'checked':'' }} value="1" name="featured" type="checkbox" class="form-check-input" id="featured" />
                                    @else
                                        <input value="1" name="featured" type="checkbox" class="form-check-input" id="featured" />
                                    @endisset
                                    <x-forms.label name="featured"  class="form-check-label" for="featured" />
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
                <div class="dashboard-post__action-btns">
                    <a href="{{ route('frontend.post.rules') }}" class="btn btn--lg btn--outline">
                        {{ __('view_posting_rules') }}
                    </a>
                    <button type="submit" class="btn btn--lg">
                        {{ __('next_steps') }}
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
    </script><script type="text/javascript">
        $(document).ready(function() {
            $('#categoryId').on('change', function(){
                var category_id = $(this).val();
                // alert(category_id);
                if(category_id) {
                    $.ajax({
                        url: "{{ url('/dashboard/post/category/ajax') }}/" + category_id,
                        type:"GET",
                        dataType:"json",
                        success:function(data) {
                            $('#subcategory').html('');
                            var d =$('#subcategory').empty();
                            $('#subcategory').append('<option value="" disabled selected> Select One </option>');
                            $.each(data, function(key, value){
                                $('#subcategory').append('<option value="'+ value.id +'">' + value.name + '</option>');
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
