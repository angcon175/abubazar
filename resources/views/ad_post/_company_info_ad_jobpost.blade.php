<?php 

$jobInfo = $row ?? null ;
// echo "<pre>";
// print_r($jobInfo->logo_path);
// die();

?>

<h4>About the company / employer</h4>
    <div class="row form-group {!! $errors->has('company_name') ? 'error' : '' !!}">
        <label class="col-sm-3 label-title">Company / Employer<span class="required">*</span></label>
        <div class="col-sm-9">
            <div class="controls">
                {!! Form::text('company_name', $row->company_name ?? old('company_name'), [ 'class' => 'form-control', 'data-validation-required-message' => 'This field is required', 'maxlength' => '60', 'data-validation-maxlength-message' => 'Maxlength 60 characters', 'placeholder' => 'Enter company name', 'tabindex' => 18]) !!}
                {!! $errors->first('company_name', '<label class="help-block text-danger">:message</label>') !!}
            </div>
        </div>
    </div>
    <div class="row form-group {!! $errors->has('company_logo') ? 'error' : '' !!}">
        <label class="col-sm-3 label-title">Company Logo</label>
        <div class="col-sm-9">
            <div class="controls">
                <div class="row">
                   <div class="col-md-3 col-sm-4">
                      <div class="imgbox">
                         <div class="fileupload @if(($jobInfo != null) && (!empty($jobInfo->logo)) )fileupload-exists @else fileupload-new @endif " data-provides="fileupload" >
                            <span class="fileupload-preview fileupload-exists thumbnail" style="max-width: 120px; max-height: 150px;">
                            @if(!empty($jobInfo->logo))
                            <img src="{{$jobInfo->logo_path}}" alt="Logo" class="img-fluid" height="100px" width="120px"/>
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
                            <input type="file" name="company_logo">
                            </label>
                            <a href="#" class="btn fileupload-exists btn-default btn-rounded  btn-sm" data-dismiss="fileupload" id="remove-company_logo">
                            <i class="fa fa-times"></i> Remove
                            </a>
                            </span>
                         </div>
                      </div>
                   </div>
                   
                </div>
            </div>
        </div>
    </div>