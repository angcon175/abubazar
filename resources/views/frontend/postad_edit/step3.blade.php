@extends('frontend.postad.index')

@section('title')
    {{ __('edit_ad') }} ({{ __('steps03') }}) - {{ $ad->title }}
@endsection

@section('post-ad-content')
 <!-- Steop 03 -->
 <div class="tab-pane fade show active" id="pills-advance" role="tabpanel" aria-labelledby="pills-advance-tab">
    <div class="dashboard-post__step02 step-information">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{ route('frontend.post.step3.update',$ad->slug) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="input-field--textarea">
                <x-forms.label name="ad_description" for="description" />
                <textarea name="description" placeholder="{{ __('your_thought') }}..." id="description" class="@error('description') border-danger @enderror">{{ $ad->description }}</textarea>
            </div>
            <div class="input-field--textarea">
                <x-forms.label name="feature" for="feature" />
                <div id="multiple_feature_part">
                    <div class="row">
                        <div class="col-lg-10">
                             <div class="input-field">
                                 <input name="features[]" type="text" placeholder="{{ __('feature') }}" id="adname" class="@error('title') border-danger @enderror"/>
                             </div>
                        </div>
                        <div class="col-lg-2 mt-10">
                         <a role="button" onclick="add_features_field()"
                         class="btn bg-primary btn-sm text-light"><i class="fas fa-plus"></i></a>
                        </div>
                     </div>
                    @foreach ($ad->features as $feature)
                        <div class="row">
                            <div class="col-lg-10">
                                    <div class="input-field">
                                        <input value="{{ $feature->name }}" name="features[]" type="text" placeholder="{{ __('feature') }}" id="adname" class="@error('title') border-danger @enderror"/>
                                    </div>
                            </div>
                            <div class="col-lg-2 mt-10">
                                <button onclick="remove_single_field()" id="remove_item" class="btn btn-sm bg-danger text-light"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="input-field--textarea">
                <img src="{{ asset($ad->thumbnail ?? '') }}" alt="product" style="width: 200px;" />
                <x-forms.label name="thumbnail" for="thumbnail" />
                <input value="" name="thumbnail" type="file" id="thumbnail" class="form-control @error('thumbnail') border-danger @enderror"/>
            </div>

            {{-- <div class="upload-wrapper">
                <h3>{{ __('upload_photos') }}</h3>
                <input id="file-1" type="file" name="images[]" multiple class="file" data-overwrite-initial="false" >
            </div> --}}
            <div class="col-12 mb-4 mt-4">
                <div class="row">
                    <label class="active mb-2">{{ __('Photos') }}</label>
                    @foreach ($ad->galleries as $gallery)
                        <div class="col-md-3" id="photo_div_{{ $gallery->id }}" class="gallery_sec">
                            <div class="form-group">
                                <div id="image-box" class="img-box" style="border: 2px solid #ccc; display: inline-block;">
                                    <img src="{{ asset($gallery->image) }}" class="img-fluid" style="width: 200px; height: 200px;">
                                    <div class="img-box-child">
                                        <a href="javascript:void(0)" class="text-danger delete_image h4" data-url="{{ route('frontend.ad.gallery.delete',$gallery->id) }}" data-id="{{$gallery->id}}"><i class="fa fa-trash"></i></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="input-field">
                <label class="active">{{ __('upload_photos') }}</label>
                <div id="multiple_image_upload" class="input_image" style="padding-top: .5rem;" ></div>
            </div>
            <div class="dashboard-post__ads-bottom">
                <div class="form-check">
                </div>
                <div class="dashboard-post__action-btns">
                    <a onclick="return confirm('Do you really want to go previous page? If you go then your step 3 data wont save!')" href="{{ route('frontend.post.step2.back',$ad->slug) }}" class="btn btn--lg btn--outline">
                        {{ __('previous') }}
                    </a>
                    <button type="submit" class="btn btn--lg">
                        {{ __('finish_update') }}
                        <span class="icon--right">
                            <x-svg.right-arrow-icon />
                        </span>
                    </button>
                </div>
            </div>

        </form>
    </div>
</div>
@endsection


@section('frontend_style')
{{-- <link href="{{ asset('backend/plugins/bootstrap-fileinput/css/fileinput.min.css') }}" rel="stylesheet"> --}}
<link rel="stylesheet" href="{{ asset('image_uploader/image-uploader.css') }}">
<link rel="stylesheet" href="{{ asset('image_uploader/style.css') }}">
@endsection

@section('frontend_script')
<script src="{{ asset('image_uploader/image-uploader.min.js') }}"></script>
<script>
    $('.input_image').imageUploader({
        maxSize: 2 * 1024 * 1024,
        maxFiles: 10,
        multiple: true,
    });

</script>
{{-- <script src="{{ asset('backend/plugins/bootstrap-fileinput/js/fileinput.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('backend/plugins/bootstrap-fileinput/themes/fas/theme.js') }}" type="text/javascript"></script> --}}

<script type="text/javascript">
    // ads post
    // $("#file-1").fileinput({
    //     theme: 'fas',
    //     showUpload: false,
    //     allowedFileExtensions: ['jpg', 'png', 'gif','jpeg'],
    //     previewFileIcon: '<i class="fas fa-file"></i>',
    //     overwriteInitial: false,
    //     maxFileSize:2000,
    //     maxFilesNum: 10,
    //     validateInitialCount: true,
    //     showPreview: true,
    //     showRemove: true,
    //     showCancel: true,
    //     showCaption: false,
    //     showBrowse: true,
    //     browseOnZoneClick: true,
    //     minFileCount: 0,
    //     maxFileCount: 10,
    //     validateInitialCount: true,
	// 	initialPreviewAsData: true,
    //     initialPreview: [
    //         @foreach ($ad->galleries as $gallery)
    //             @if(checkFileExit($gallery->image))
    //             "{{ $gallery->image ? str_replace('adds_multiple\\', 'adds_multiple/',$gallery->image_url) : '' }}",
    //             @endif
    //         @endforeach
    //     ],
    //     initialPreviewConfig: [
    //         @foreach ($ad->galleries as $gallery)
    //         @if(checkFileExit($gallery->image))
    //                 {
    //                     caption: "{{ str_replace('adds_multiple\\', 'adds_multiple/',$gallery->image_url) }}",
    //                     size: {{ getFileSize($gallery->image) }},
    //                     width: "20px",
    //                     url: "{{ route('frontend.ad.gallery.delete', $gallery->id) }}",
    //                     key: {{ $gallery->id }}
    //                 },
    //         @endif
    //         @endforeach

    //     ]
    // });

    // feature field
    function add_features_field() {
        $("#multiple_feature_part").append(`
            <div class="row">
                <div class="col-lg-10">
                        <div class="input-field">
                            <input name="features[]" type="text" placeholder="Feature" id="adname" class="@error('title') border-danger @enderror"/>
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

    $('.kv-file-remove').on('click', function() {
        window.location.reload();
    });
</script>
<script>
    $(document).on('click','.delete_image', function(e){
        var id = $(this).data('id');
        var div = '#photo_div_'+id;
        var url = $(this).data('url');
        if (!confirm('Are you sure you want to delete the photo')) {
            return false;
        }
        if ('' != id) {
            $.ajax({
                type:'get',
                url:url,
                async :true,
                data: {},
                success: function (response) {
                    if(response.status == 'success'){
                        $(div).hide();
                        toastr.success(response.message);
                    }
                },
            });
        }
    })
</script>
@endsection
