@extends('admin.site-setting.index')

@section('website')

	<div class="card">
        <div class="card-header">
            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="basic-tab" data-toggle="pill" href="#basic" role="tab" aria-controls="basic" aria-selected="true">Basic</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#social_media_links" role="tab" aria-controls="basic" aria-selected="true">Social Media Links</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#logo" role="tab" aria-controls="basic" aria-selected="true">Logo</a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="basic" role="tabpanel" aria-labelledby="basic-tab">
                     <form action="#" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">Site Email</label>
                                    <input type="text" name="email" value="" class="form-control" placeholder="Site email">
                                </div>
                            </div> 
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">Phone Number</label>
                                    <input type="number" name="phone" value="" class="form-control" placeholder="Phone number">
                                </div>
                            </div> 
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">Address</label>
                                    <textarea name="address" value="" class="form-control" placeholder="Address" cols="30" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">Map Address</label>
                                    <textarea name="map_address" value="" placeholder="Map address" class="form-control" cols="30" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">Android App Link</label>
                                    <input type="text" name="android_app_link" value="" placeholder="Addroid app link" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-2">
                                    <label class="form-label">IOS App Link</label>
                                    <input type="text" name="ios_app_link" placeholder="IOS app link" value="" class="form-control">
                                </div>
                            </div>
                            <div class="col-12 text-center mt-2">
                                <button type="submit" class="btn btn-primary">Update Settings</button>
                            </div>
                        </div>
                     </form>
                </div>
                
                <div class="tab-pane fade " id="social_media_links" role="tabpanel" aria-labelledby="basic-tab">
                     <form action="#" method="post">
                         <div class="row">
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Facebook</label>
                                     <input type="text" name="facebook" class="form-control" value="" placeholder="https:://www.facebook.com"> 
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Twitter</label>
                                     <input type="text" name="twitter" class="form-control" value="" placeholder="https:://www.twitter.com"> 
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Instagram</label>
                                     <input type="text" name="instagram" class="form-control" value="" placeholder="https:://www.instagram.com"> 
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Linkedin</label>
                                     <input type="text" name="linkedin" class="form-control" value="" placeholder="https:://www.linkedin.com"> 
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Whatsapp</label>
                                     <input type="text" name="whatsapp" class="form-control" value="" placeholder="https:://www.whatsapp.com"> 
                                 </div>
                             </div>
                             <div class="col-md-6">
                                 <div class="mb-2">
                                     <label class="form-label">Youtube</label>
                                     <input type="text" name="youtube" class="form-control" value="" placeholder="https:://www.youtube.com"> 
                                 </div>
                             </div>
                             <div class="col-12 text-center mt-2">
                                <button type="submit" class="btn btn-primary">Update Settings</button>
                            </div>
                         </div>
                     </form>
                </div>
                
                <div class="tab-pane fade " id="logo" role="tabpanel" aria-labelledby="basic-tab">
                   {!! Form::open([ 'route' => 'admin.site-setting.store', 'method' => 'post', 'class' => 'form-horizontal', 'files' => true , 'novalidate']) !!}
                    <div class="row">
                            <div class="col-md-6">
                                <div class="form-group {!! $errors->has('logo') ? 'error' : '' !!}">
                                    <label class="form-label">Logo</label>
                                    <div class="controls">
                                        <div class="mb-2">
                                             <img src="{{asset($setting->logo)}}" alt="" class="img-thumbnail">
                                        </div>
                                        <input type="file" name="logo" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group {!! $errors->has('favicon') ? 'error' : '' !!}">
                                    <label class="form-label">Favicon</label>
                                    <div class="controls">
                                        <div class="mb-2">
                                             <img src="{{asset($setting->favicon)}}" alt="" class="img-thumbnail">
                                        </div>
                                        <input type="file" name="favicon" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group {!! $errors->has('website_title') ? 'error' : '' !!}">
                                    <label>Website Title</label>
                                    <div class="controls">
                                        {!! Form::text('website_title', $setting->website_title ?? '', [ 'class' => 'form-control mb-1', 'placeholder' => 'Website Title']) !!}
                                        {!! $errors->first('website_title', '<label class="help-block text-danger">:message</label>') !!}
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group {!! $errors->has('meta_description') ? 'error' : '' !!}">
                                    <label>Meta Description</label>
                                    <div class="controls">
                                        {!! Form::text('meta_description', $setting->meta_description ?? '', [ 'class' => 'form-control mb-1', 'placeholder' => 'Meta Description']) !!}
                                        {!! $errors->first('meta_description', '<label class="help-block text-danger">:message</label>') !!}
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group {!! $errors->has('meta_keyword') ? 'error' : '' !!}">
                                    <label>Meta Keyword</label>
                                    <div class="controls">
                                        {!! Form::text('meta_keyword', $setting->meta_keyword ?? '', [ 'class' => 'form-control mb-1', 'placeholder' => 'Meta Keyword', 'tabindex' => 3]) !!}
                                        {!! $errors->first('meta_keyword', '<label class="help-block text-danger">:message</label>') !!}
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 text-center  pb-4">
                                <button type="submit" class="btn btn-primary">Update Settings</button>
                            </div> 
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
    </div>
	
@endsection