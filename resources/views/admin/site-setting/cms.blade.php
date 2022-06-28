@extends('admin.site-setting.index')
@section('cms')
	<div class="card">
        <div class="card-header">
            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="basic-tab" data-toggle="pill" href="#home" role="tab" aria-controls="basic" aria-selected="true">Home</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#about" role="tab" aria-controls="basic" aria-selected="true">About</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#terms" role="tab" aria-controls="basic" aria-selected="true">Terms & Condition</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#privacy" role="tab" aria-controls="basic" aria-selected="true">Privacy Policy</a>
                </li>
                 <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#faq" role="tab" aria-controls="basic" aria-selected="true">Faqs</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#posting" role="tab" aria-controls="basic" aria-selected="true">Posting Rules</a>
                </li>
                 <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#promotion" role="tab" aria-controls="basic" aria-selected="true">Promotions</a>
                </li>
                 <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#membership" role="tab" aria-controls="basic" aria-selected="true">Membership</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link " id="basic-tab" data-toggle="pill" href="#sell_fast" role="tab" aria-controls="basic" aria-selected="true">How To Sell Fast</a>
                </li>
                
            </ul>
        </div>
        <div class="card-body">
            <div class="tab-content" id="pills-tabContent">

                <!-- Home -->
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="basic-tab">
                      <form action="#" method="post">
                          <div class="row">
                               <div class="col-md-6 mb-2">
                                   <label class="form-label">Banner Title One</label>
                                   <textarea name="" class="form-control" cols="30" rows="3" placeholder="Adsclassi.com The Online Mega Mall"></textarea>
                               </div>
                               <div class="col-md-6 mb-2">
                                   <label class="form-label">Banner Title Two</label>
                                   <textarea name="" class="form-control" cols="30" rows="3" placeholder="Find Everything for Buy and Sell Ex. "></textarea>
                               </div>
                               <div class="col-md-6 mb-2">
                                   <label class="form-label">Footer Banner Title</label>
                                   <textarea name="" class="form-control" cols="30" rows="3" placeholder="Do you have something to sell?"></textarea>
                               </div>
                                <div class="col-md-6 mb-2">
                                   <label class="form-label">Footer Banner Subtitle</label>
                                   <textarea name="" class="form-control" cols="30" rows="3" placeholder="Post your ad for free on Adsclassi.com"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Home Setting</button>
                               </div>
                          </div>
                      </form>
                </div>
                
                <!-- About -->
                <div class="tab-pane fade " id="about" role="tabpanel" aria-labelledby="basic-tab">
                      <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">About Body</label>
                                   <textarea name="" id="about_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update About Setting</button>
                               </div>
                          </div>
                      </form>
                </div>
                
                <!-- Terms & Condition -->
                <div class="tab-pane fade " id="terms" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">Terms & Condition Body</label>
                                   <textarea name="" id="terms_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Terms Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- Privacy Policy -->
                <div class="tab-pane fade " id="privacy" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">Privacy Body</label>
                                   <textarea name="" id="privacy_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Privacy Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- Faq -->
                <div class="tab-pane fade " id="faq" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-md-8 mb-2">
                                   <label class="form-label">FAQ Content</label>
                                   <textarea name="" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Faqs Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- Faq -->
                <div class="tab-pane fade " id="posting" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">Posting Rules Body</label>
                                   <textarea name="" id="posting_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Posting Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- Promotion -->
                <div class="tab-pane fade " id="promotion" role="tabpanel" aria-labelledby="basic-tab">
                     <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">Promotion Body</label>
                                   <textarea name="" id="promotion_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Promotion Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- Membership -->
                <div class="tab-pane fade " id="membership" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">Membership Body</label>
                                   <textarea name="" id="membership_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Membership Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

                <!-- How to sell fast -->
                <div class="tab-pane fade " id="sell_fast" role="tabpanel" aria-labelledby="basic-tab">
                    <form action="#" method="post">
                          <div class="row">
                               <div class="col-12 mb-2">
                                   <label class="form-label">How To Sell Fast</label>
                                   <textarea name="" id="sell_fast_ck" class="form-control"></textarea>
                               </div>
                               <div class="col-12">
                                   <button type="submit" class="btn btn-primary">Update Setting</button>
                               </div>
                          </div>
                      </form>
                </div>

            </div>
    </div>
	

<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('about_ck')
    CKEDITOR.replace('terms_ck')
    CKEDITOR.replace('privacy_ck')
    CKEDITOR.replace('posting_ck')
    CKEDITOR.replace('promotion_ck')
    CKEDITOR.replace('membership_ck')
    CKEDITOR.replace('sell_fast_ck')
</script>
@endsection