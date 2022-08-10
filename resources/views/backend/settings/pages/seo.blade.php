@extends('backend.settings.setting-layout')
@section('title') {{ __('website_setting') }} @endsection

@section('seo-setting')
    <div class="card">
        <div class="card-header">
            <h3 class="card-title" style="line-height: 36px;">{{ __('seo_settings') }}</h3>
        </div>
        <div class="row pt-3 pb-4">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('admin.seo.update') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <x-forms.label name="seo_meta_title" for="seo_meta_title" />
                                <input id="seo_meta_title" name="seo_meta_title" class="form-control @error('seo_meta_title') is-invalid @enderror" value="{{ $setting->seo_meta_title }}" />
                                @error('seo_meta_title')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <x-forms.label name="seo_meta_description" for="seo_meta_description" />
                                <textarea id="seo_meta_description" name="seo_meta_description" class="form-control @error('seo_meta_description') is-invalid @enderror" rows="3">{{ $setting->seo_meta_description }}</textarea>
                                @error('seo_meta_description')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <x-forms.label name="seo_meta_keywords" for="seo_meta_keywords" />
                                <textarea id="seo_meta_keywords" name="seo_meta_keywords" class="form-control @error('seo_meta_keywords') is-invalid @enderror" rows="3">{{ $setting->seo_meta_keywords }}</textarea>
                                @error('seo_meta_keywords')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>


                            <div class="form-group">
                                <x-forms.label name="og_title" for="og_title" />
                                <input id="og_title" name="og_title" class="form-control @error('og_title') is-invalid @enderror" rows="3" value="{{ $setting->og_title }}">
                                @error('og_title')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>

                            <div class="form-group">
                                <x-forms.label name="og_description" for="og_description" />
                                <textarea id="og_description" name="og_description" class="form-control @error('og_description') is-invalid @enderror" rows="3">{{ $setting->og_description }}</textarea>
                                @error('og_description')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>


                            <div class="col-3 mx-2">
                                <div class="form-group">
                                    <x-forms.label name="og_image" />
                                    <div class="row">
                                        <input type="file" class="form-control dropify"
                                            data-default-file="{{asset('/').$setting->og_Image}}" name="og_image"
                                            autocomplete="image" accept="image/png, image/jpg, image/jpeg"
                                            data-allowed-file-extensions='["jpg", "jpeg","png"]' data-max-file-size="3M">
                                    </div>
                                </div>
                            </div>



                            @if (userCan('setting.update'))
                            <div class="form-group">
                                <button type="submit" class="btn btn-success"><i class="fas fa-sync"></i> {{ __('update') }}</button>
                            </div>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('backend') }}/css/dropify.min.css" />
    <style>
        .ck-editor__editable_inline {
            min-height: 170px;
        }

    </style>
@endsection

@section('script')
    <script src="{{ asset('backend') }}/js/dropify.min.js"></script>
    <script src="{{ asset('backend') }}/dist/js/ckeditor.js"></script>
    <script>
        $('.dropify').dropify();
    </script>
@endsection

