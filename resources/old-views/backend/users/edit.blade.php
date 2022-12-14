@extends('layouts.backend.admin')
@section('title') {{ __('edit_user') }} @endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title" style="line-height: 36px;">{{ __('edit_user') }}</h3>
                        <a href="{{ route('user.index') }}"
                            class="btn bg-primary float-right d-flex align-items-center justify-content-center"><i
                                class="fas fa-arrow-left"></i>&nbsp; {{ __('back') }}</a>
                    </div>
                    <div class="row">

                        <div class="col-md-6 offset-md-3">
                            <div class="text-center mb-4 pt-2">
                                <img width="150px" height="150px" id="image" class="img-circle"
                                        src="{{ $user->image_url }}" alt="User profile picture"
                                        style="border: 3px solid #adb5bd;margin: 0 auto;padding: 3px;">
                            </div>
                            <form class="form-horizontal" action="{{ route('user.update', $user->id) }}" method="POST"
                                enctype="multipart/form-data">
                                @method('PUT')
                                @csrf
                                <div class="form-group row">
                                    <x-forms.label name="name" required="true" class="col-sm-3 col-form-label" />
                                    <div class="col-sm-9">
                                        <input value="{{ $user->name }}" name="name" type="text"
                                            class="form-control @error('name') is-invalid @enderror"
                                            placeholder="{{ __('enter_new_name') }}">
                                        @error('name') <span class="invalid-feedback"
                                            role="alert"><strong>{{ $message }}</strong></span> @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <x-forms.label name="email" required="true" class="col-sm-3 col-form-label" />
                                    <div class="col-sm-9">
                                        <input value="{{ $user->email }}" name="email" type="email"
                                            class="form-control @error('email') is-invalid @enderror"
                                            placeholder="{{ __('enter_new_email') }}">
                                        @error('email') <span class="invalid-feedback"
                                            role="alert"><strong>{{ $message }}</strong></span> @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <x-forms.label name="image" class="col-sm-3 col-form-label" />
                                    <div class="col-sm-9">
                                        <div class="custom-file">
                                            <input name="image" autocomplete="image"
                                                onchange="document.getElementById('image').src = window.URL.createObjectURL(this.files[0])"
                                                type="file" class="custom-file-input" id="customFile">
                                            <x-forms.label name="choose_file" class="custom-file-label" for="customFile" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <x-forms.label name="change_password" class="col-sm-3 col-form-label" />
                                    <div class="col-sm-9">
                                        <input value="{{ old('password') }}" name="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror"
                                            placeholder="{{ __('enter_new_password') }}">
                                        @error('password') <span class="invalid-feedback"
                                            role="alert"><strong>{{ $message }}</strong></span> @enderror

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <x-forms.label name="assign_roles" required="true" class="col-sm-3 col-form-label" />
                                    <div class="col-sm-9">
                                        <select name="roles[]" class="select2bs4 @error('roles') is-invalid @enderror"
                                            multiple="multiple" data-placeholder="{{ __('select_roles') }}" style="width: 100%;">
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->id }}"
                                                    {{ $user->hasRole($role->name) ? 'selected' : '' }}>
                                                    {{ $role->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('roles') <span class="invalid-feedback"
                                            role="alert"><strong>{{ $message }}</strong></span> @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="offset-sm-3 col-sm-9">
                                        <button type="submit" class="btn btn-primary"><i class="fas fa-sync"></i>
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
    <link rel="stylesheet" href="{{ asset('backend') }}/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="{{ asset('backend') }}/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <style>
        .select2-results__option[aria-selected=true] {
            display: none;
        }

        .select2-container--bootstrap4 .select2-selection--multiple .select2-selection__choice {
            color: #fff;
            border: 1px solid #fff;
            background: #007bff;
            border-radius: 30px;
        }

        .select2-container--bootstrap4 .select2-selection--multiple .select2-selection__choice__remove {
            color: #fff;
        }

    </style>
@endsection

@section('script')
    <script src="{{ asset('backend') }}/plugins/select2/js/select2.full.min.js"></script>
    <script>
        //Initialize Select2 Elements
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })
    </script>
@endsection
