@extends('layouts.backend.admin')
@section('title')
    {{ __('edit_ad') }}
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title" style="line-height: 36px;">{{ __('edit_ad') }}</h3>
                        <a href="{{ route('module.ad.index') }}"
                            class="btn bg-primary float-right d-flex align-items-center justify-content-center"><i
                                class="fas fa-arrow-left"></i>&nbsp; {{ __('back') }}</a>
                    </div>
                    <div class="row pt-3 pb-4">
                        <div class="col-12 px-5">
                            <form class="form-horizontal" action="{{ route('module.ad.update', $ad->id) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('put')

                                <div class="row">
                                    <div class="col-md-8">

                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <x-forms.label name="title" required="true" />
                                                <input type="text" name="title"
                                                    class="form-control @error('title') is-invalid @enderror"
                                                    value="{{ $ad->title }}" placeholder="{{ __('enter_ad_title') }}}">
                                                @error('title')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="customer" required="true" />
                                                <select name="customer_id"
                                                    class="form-control @error('customer_id') is-invalid @enderror">
                                                    @foreach ($customers as $customer)
                                                        <option {{ $ad->customer_id == $customer->id ? 'selected' : '' }}
                                                            value="{{ $customer->id }}">{{ $customer->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('customer_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="price" required="true" />
                                                <input type="number" name="price"
                                                    class="form-control @error('price') is-invalid @enderror"
                                                    value="{{ $ad->price }}"
                                                    placeholder="{{ __('enter_ad_price') }}">
                                                @error('price')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="category" required="true" />
                                                <select name="category_id" id="ad_category"
                                                    class="form-control @error('category_id') border-danger @enderror">
                                                    @foreach ($categories as $category)
                                                        <option {{ $category->id == $ad->category_id ? 'selected' : '' }}
                                                            value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('category_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="subcategory" required="true" />
                                                <select name="subcategory_id" id="ad_subcategory"
                                                    class="form-control @error('subcategory_id') border-danger @enderror">
                                                    @foreach ($subcategories as $subcategory)
                                                        <option
                                                            {{ $subcategory->id == $ad->subcategory_id ? 'selected' : '' }}
                                                            value="{{ $subcategory->id }}">{{ $subcategory->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                @error('subcategory_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="brand" required="true" />
                                                <select name="brand_id"
                                                    class="form-control @error('brand_id') is-invalid @enderror">
                                                    @foreach ($brands as $brand)
                                                        <option {{ $ad->brand_id == $brand->id ? 'selected' : '' }}
                                                            value="{{ $brand->id }}">{{ $brand->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('brand_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="model" required="true" />
                                                <input type="text" name="model"
                                                    class="form-control @error('model') is-invalid @enderror"
                                                    value="{{ $ad->model }}"
                                                    placeholder="{{ __('enter_ad_model') }}">
                                                @error('model')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="city" required="true" />
                                                <select name="city_id" id="ad_city"
                                                    class="form-control @error('city_id') border-danger @enderror">
                                                    @foreach ($cities as $city)
                                                        <option {{ $city->id == $ad->city_id ? 'selected' : '' }}
                                                            value="{{ $city->id }}">{{ $city->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('city_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="town" required="true" />
                                                <select name="town_id" id="ad_town"
                                                    class="form-control @error('town_id') border-danger @enderror">
                                                    @foreach ($towns as $town)
                                                        <option {{ $town->id == $ad->town_id ? 'selected' : '' }}
                                                            value="{{ $town->id }}">{{ $town->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('town_id')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="authenticity" required="true" />
                                                <select name="authenticity"
                                                    class="form-control @error('authenticity') is-invalid @enderror">
                                                    <option {{ $ad->authenticity == 'original' ? 'selected' : '' }}
                                                        value="original">{{ __('original') }}</option>
                                                    <option {{ $ad->authenticity == 'refurbished' ? 'selected' : '' }}
                                                        value="refurbished">{{ __('refurbished') }}</option>
                                                </select>
                                                @error('authenticity')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="condition" required="true" />
                                                <select name="condition"
                                                    class="form-control @error('condition') is-invalid @enderror">
                                                    <option {{ $ad->authenticity == 'new' ? 'selected' : '' }}
                                                        value="new">{{ __('new') }}</option>
                                                    <option {{ $ad->authenticity == 'used' ? 'selected' : '' }}
                                                        value="used">{{ __('used') }}</option>
                                                </select>
                                                @error('condition')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="phone_number" required="true" />
                                                <input type="text" name="phone"
                                                    class="form-control @error('phone') is-invalid @enderror"
                                                    value="{{ $ad->phone }}"
                                                    placeholder="{{ __('enter_customer_phone_number') }}">
                                                @error('phone')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>


                                            <div class="col-md-6 mb-3">
                                                <x-forms.label name="optional_phone_number" />
                                                <input type="text" name="phone_2"
                                                    class="form-control @error('phone_2') is-invalid @enderror"
                                                    value="{{ $ad->phone_2 }}"
                                                    placeholder="{{ __('enter_another_phone_number') }}">
                                                @error('phone_2')
                                                    <span class="invalid-feedback">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-md-3">
                                                <div class="icheck-success d-inline">
                                                    <input value="1" name="negotiable" type="checkbox"
                                                        class="form-check-input" id="checkme"
                                                        {{ $ad->negotiable == 1 ? 'checked' : '' }} />
                                                    <x-forms.label name="negotiable" class="form-check-label mr-5"
                                                        for="checkme" />
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="icheck-success d-inline">
                                                    <input value="1" name="featured" type="checkbox"
                                                        class="form-check-input" id="featured"
                                                        {{ $ad->featured == 1 ? 'checked' : '' }} />
                                                    <x-forms.label name="featured" class="form-check-label"
                                                        for="featured" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <x-forms.label name="upload_thumbnail" required="true" />
                                                <input name="thumbnail" type="file"
                                                    accept="image/png, image/jpg, image/jpeg"
                                                    class="form-control dropify @error('thumbnail') is-invalid @enderror"
                                                    style="border:none;padding-left:0;" data-max-file-size="3M"
                                                    data-show-errors="true"
                                                    data-allowed-file-extensions='["jpg", "jpeg","png"]'
                                                    data-default-file="{{ $ad->image_url }}" />
                                                @error('thumbnail')
                                                    <span
                                                        class="invalid-feedback d-block"><strong>{{ $message }}</strong></span>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <div class="input-field--textarea">
                                                    <x-forms.label name="features" />
                                                    <div id="multiple_feature_part">
                                                        <div class="row">
                                                            <div class="col-10">
                                                                <div class="input-field mb-3">
                                                                    <input name="features[]" type="text"
                                                                        placeholder="{{ __('feature') }}" id="adname"
                                                                        class="form-control @error('title') border-danger @enderror" />
                                                                </div>
                                                            </div>
                                                            <div class="col-2 mt-10">
                                                                <a role="button" onclick="add_features_field()"
                                                                    class="btn bg-primary btn-sm text-light"><i
                                                                        class="fas fa-plus"></i></a>
                                                            </div>
                                                        </div>
                                                        @foreach ($ad->adFeatures as $feature)
                                                            <div class="row">
                                                                <div class="col-10">
                                                                    <div class="input-field mb-3">
                                                                        <input name="features[]"
                                                                            value="{{ $feature->name }}" type="text"
                                                                            placeholder="{{ __('feature') }}" id="adname"
                                                                            class="form-control @error('features') border-danger @enderror" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-2 mt-10">
                                                                    <button onclick="remove_single_field()" id="remove_item"
                                                                        class="btn btn-sm bg-danger text-light"><i
                                                                            class="fas fa-times"></i></button>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 mb-3">
                                        <x-forms.label name="description" required="true" />
                                        <textarea id="editor2" name="description" class="form-control @error('description') is-invalid @enderror"
                                            placeholder="{{ __('write_description_of_ad') }}">
                                            {{ $ad->description }}
                                        </textarea>
                                        @error('description')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-12 text-center">
                                        <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i>&nbsp;
                                            {{ __('update') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('backend') }}/css/dropify.min.css" />
    <link rel="stylesheet" href="{{ asset('backend') }}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <style>
        .ck-editor__editable_inline {
            min-height: 300px;
        }

    </style>
@endsection

@section('script')
    <script src="{{ asset('frontend') }}/js/axios.min.js"></script>
    <script src="{{ asset('backend') }}/js/dropify.min.js"></script>
    <script src="{{ asset('backend') }}/dist/js/ckeditor.js"></script>

    {{-- ck-editor --}}
    <script>
        ClassicEditor
            .create(document.querySelector('#editor2'))
            .catch(error => {
                console.error(error);
            });
    </script>


    {{-- category-subcategory dropdown --}}
    <script>
        // category wise subcategory function
        function cat_wise_subcat(categoryID) {
            axios.get('/get_subcategory/' + categoryID).then((res => {
                console.log(res);
                if (res.data) {
                    $('#ad_subcategory').empty();
                    $.each(res.data, function(key, subcat) {
                        $('select[name="subcategory_id"]').append('<option value="' + subcat.id + '">' +
                            subcat.name + '</option>');
                    });
                } else {
                    $('#ad_subcategory').empty();
                }
            }))
        }

        // Category wise subcategories dropdown
        $('#ad_category').on('change', function() {
            var categoryID = $(this).val();
            if (categoryID) {
                cat_wise_subcat(categoryID);
            }
        });
    </script>

    {{-- city-town dropdown --}}
    <script>
        // city wise town function
        function city_wise_town(cityID) {
            axios.get('/get_town/' + cityID).then((res => {
                console.log(res);
                if (res.data) {
                    $('#ad_town').empty();
                    $.each(res.data, function(key, town) {
                        $('select[name="town_id"]').append('<option value="' + town.id + '">' + town
                            .name + '</option>');
                    });
                } else {
                    $('#ad_town').empty();
                }
            }))
        }

        // Category wise subcategories dropdown
        $('#ad_city').on('change', function() {
            var cityID = $(this).val();
            if (cityID) {
                city_wise_town(cityID);
            }
        });
    </script>

    {{-- Featured inputs --}}
    <script>
        function add_features_field() {
            $("#multiple_feature_part").append(`
                <div class="row">
                    <div class="col-lg-10">
                            <div class="input-field mb-3">
                                <input name="features[]" type="text" placeholder="Feature" id="adname" class="form-control @error('features') border-danger @enderror"/>
                            </div>
                    </div>
                    <div class="col-lg-2 mt-10">
                        <button onclick="remove_single_field()" id="remove_item" class="btn btn-sm bg-danger text-light"><i class="fas fa-times"></i></button>
                    </div>
                </div>
            `);
        }

        $(document).on("click", "#remove_item", function() {
            $(this).parent().parent('div').remove();
        });
    </script>

    {{-- Dropify image upload --}}
    <script>
        var drEvent = $('.dropify').dropify();

        drEvent.on('dropify.error.fileSize', function(event, element) {
            alert('Filesize error message!');
        });
        drEvent.on('dropify.error.imageFormat', function(event, element) {
            alert('Image format error message!');
        });
    </script>
@endsection
