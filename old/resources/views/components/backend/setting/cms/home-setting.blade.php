<form class="form-horizontal" action="{{ route('admin.home.update') }}" method="POST"
    enctype="multipart/form-data">
    @method('PUT')
    @csrf
   <!--  <div class="row justify-content-between">
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index1_main_banner" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index1_main_banner_path }}" name="index1_main_banner"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index1_counter_background" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index1_counter_background_path }}" name="index1_counter_background"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index1_mobile_app_banner" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index1_mobile_app_banner_path }}" name="index1_mobile_app_banner"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
    </div> -->
    <!-- <div class="row justify-content-between">
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index2_search_filter_background" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index2_search_filter_background_path }}" name="index2_search_filter_background"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index2_get_membership_background" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index2_get_membership_background_path }}" name="index2_get_membership_background"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <x-forms.label name="index3_search_filter_background" />
                <div class="row">
                    <input type="file" class="form-control dropify"
                        data-default-file="{{ $cms->index3_search_filter_background_path }}" name="index3_search_filter_background"
                        autocomplete="image" data-allowed-file-extensions="jpg png jpeg" accept="image/png, image/jpg, image/jpeg">
                </div>
            </div>
        </div>
    </div> -->
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="index1_title" />
                <textarea class="form-control" name="index1_title" rows="4">{{ $cms->index1_title }}</textarea>
                @error('index1_title')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="index1_description" />
                <div class="row">
                    <textarea class="form-control" name="index1_description" rows="4">{{ $cms->index1_description }}</textarea>
                    @error('index1_description')
                        <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                    @enderror
                </div>
            </div>
        </div>
        <!-- <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="index3_title" />
                <textarea class="form-control" name="index3_title" rows="4">{{ $cms->index3_title }}</textarea>
                @error('index3_title')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
        <!-- <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="download_app_content" />
                <textarea class="form-control" name="download_app" rows="4">{{ $cms->download_app }}</textarea>
                @error('download_app')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
        <!-- <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="newsletter_content" />
                <textarea class="form-control" name="newsletter_content" rows="4">{{ $cms->newsletter_content }}</textarea>
                @error('newsletter_content')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="membership_content" />
                <textarea class="form-control" name="membership_content" rows="4">{{ $cms->membership_content }}</textarea>
                @error('membership_content')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <!-- <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="create_account_content" />
                <textarea class="form-control" name="create_account" rows="4">{{ $cms->create_account }}</textarea>
                @error('create_account')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
        <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="post_ads_content" />
                <textarea class="form-control" name="post_ads" rows="4">{{ $cms->post_ads }}</textarea>
                @error('post_ads')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div>
        <!-- <div class="col-md-6">
            <div class="form-group">
                <x-forms.label name="start_earning_content" />
                <textarea class="form-control" name="start_earning" rows="4">{{ $cms->start_earning }}</textarea>
                @error('start_earning')
                    <span class="text-danger" style="font-size: 13px;">{{ $message }}</span>
                @enderror
            </div>
        </div> -->
    </div>

    <div class="row mt-3">
        <div class="col-8 ">
            <button type="submit" class="btn btn-success">
                <i class="fas fa-sync"></i> {{ __('update_home_settings') }}
            </button>
        </div>
    </div>
</form>

