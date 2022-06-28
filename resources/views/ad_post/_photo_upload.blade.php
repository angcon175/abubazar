<?php 

$old_photos = $row->allPhotos ?? null ;
// print_r($old_photos[0]->img_path_thumb);
// die();

?>

<div class="row form-group add-image">
   <label class="col-sm-3 label-title">Photos for your ad<span class="required">*</span></label>
   <div class="col-sm-9">
      <div class="row">
         <div class="col-md-3 col-sm-4 col-6">
            <div class="imgbox">
               <div class="fileupload @if(($old_photos != null) && (isset($old_photos[0])) )fileupload-exists @else fileupload-new @endif " data-provides="fileupload" >
                  <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 90px;display: block;">
                  @if($old_photos != null )
                  @if(isset($old_photos[0]))
                  <img src="{{$old_photos[0]->img_path_thumb}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                  @endif
                  @endif
                  </span>
                  <span>
                  <label class="btn btn-rounded btn-file btn-sm">
                  <span class="fileupload-new">
                  <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                  </span>
                  <span class="fileupload-exists">
                  <i class="fa fa-picture-o"></i> Change
                  </span>
                  <input type="file" name="image[]" value="" >
                  </label>
                  <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                  <i class="fa fa-times"></i> Remove
                  </a>
                  </span>
               </div>
            </div>
         </div>
         <div class="col-md-3 col-sm-4 col-6">
            <div class="imgbox">
               <div class="fileupload @if(($old_photos != null) && (isset($old_photos[1])) )fileupload-exists @else fileupload-new @endif" data-provides="fileupload" >
                  <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 90px;display: block;">
                  @if($old_photos != null )
                  @if(isset($old_photos[1]))
                  <img src="{{$old_photos[1]->img_path_thumb}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                  @endif
                  @endif
                  </span>
                  <span>
                  <label class="btn  btn-rounded btn-file btn-sm">
                  <span class="fileupload-new">
                  <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                  </span>
                  <span class="fileupload-exists">
                  <i class="fa fa-picture-o"></i> Change
                  </span>
                  <input type="file" name="image[]">
                  </label>
                  <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                  <i class="fa fa-times"></i> Remove
                  </a>
                  </span>
               </div>
            </div>
         </div>
         <div class="col-md-3 col-sm-4 col-6">
            <div class="imgbox">
               <div class="fileupload @if(($old_photos != null) && (isset($old_photos[2])) )fileupload-exists @else fileupload-new @endif" data-provides="fileupload" >
                  <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 90px;display: block;">
                  @if($old_photos != null )
                  @if(isset($old_photos[2]))
                  <img src="{{$old_photos[2]->img_path_thumb}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                  @endif
                  @endif
                  </span>
                  <span>
                  <label class="btn  btn-rounded btn-file btn-sm">
                  <span class="fileupload-new">
                  <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                  </span>
                  <span class="fileupload-exists">
                  <i class="fa fa-picture-o"></i> Change
                  </span>
                  <input type="file" name="image[]">
                  </label>
                  <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                  <i class="fa fa-times"></i> Remove
                  </a>
                  </span>
               </div>
            </div>
         </div>
         <div class="col-md-3 col-sm-4 col-6">
            <div class="imgbox">
               <div class="fileupload @if(($old_photos != null) && (isset($old_photos[3])) )fileupload-exists @else fileupload-new @endif" data-provides="fileupload" >
                  <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 90px;display: block;">
                 @if($old_photos != null )
                  @if(isset($old_photos[3]))
                  <img src="{{$old_photos[3]->img_path_thumb}}" alt="Article Photo" class="img-fluid" height="100px" width="120px"/>
                  @endif
                  @endif
                  </span>
                  <span>
                  <label class="btn btn-rounded btn-file btn-sm">
                  <span class="fileupload-new">
                  <i class="fa fa-picture-o"></i><br> <span class="fs-14">Select Image</span>
                  </span>
                  <span class="fileupload-exists">
                  <i class="fa fa-picture-o"></i> Change
                  </span>
                  <input type="file" name="image[]">
                  </label>
                  <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-thumbnail">
                  <i class="fa fa-times"></i> Remove
                  </a>
                  </span>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>