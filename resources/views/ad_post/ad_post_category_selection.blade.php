@extends('layouts.app')
@section('content')

<?php 
$category  = $data['category'] ?? null;
$subcategory  = $data['subcategory'] ?? null;

?>	

@push('custom_css')
<style type="text/css">
	 html {
	  scroll-behavior: smooth;
	}
</style>
@endpush
<!-- post-page -->
<section id="main" class="clearfix ad-post-page">
	<div class="container">

		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li>Ad Post</li>
			</ol><!-- breadcrumb -->						
		</div><!-- banner -->
		<div id="ad-post">
			<div class="row category-tab">	
				<div class="col-lg-4 col-md-6">
					<div class="section cat-option select-category post-option">
						<h4>Select a Category</h4>
						<ul role="tablist" class="nav nav-tabs">
							@if(($category) && $category->count() > 0 )
								@foreach($category as $key => $row )
									
									<li class="{{ request()->get('type') == $row->url_slug  ? 'link-active' : ''}}" ><a onclick="scrollToTop()" href="#cat_{{$row->pk_no}}" aria-controls="cat_{{$row->pk_no}}" role="tab" data-toggle="tab" title="{{$row->name}}" class="{{ request()->get('type') == $row->url_slug  ? 'active' : ''}}" aria-selected="{{ request()->get('type') == $row->url_slug  ? 'true' : ''}}">
										<span class="select">
											<img src="{{ $row->icon_src }}" alt="{{$row->name}}" class="img-responsive" style="width: 42px;">
										</span>
										{{$row->name}}
									</a></li>
									
								@endforeach
							@endif

								
							</ul>
						</div>
					</div>
					
					<!-- Tab panes -->
					<div class="col-lg-4 col-md-6">
						<div class="section tab-content subcategory post-option" id="subcat">
							<h4>Select a subcategory</h4>
							@if(($category) && $category->count() > 0 )
								@foreach($category as $key => $row )
									
									<div role="tabpanel " class="tab-pane {{ request()->get('type') == $row->url_slug  ? 'active' : ''}}" id="cat_{{$row->pk_no}}">
										<ul>
											@if(($subcategory) && $subcategory->count() > 0 )
											@foreach($subcategory as $skey => $srow )
												@if($row->pk_no == $srow->parent_id )
													@php
													$type = null;
													
													if($row->url_slug == 'property'){
														$type = 'property';
													
													}elseif($row->url_slug == 'jobs'){
													
													$type = $row->url_slug;
													
													}else{
														$type = $row->url_slug ?? request()->type ;
													}
												@endphp

												<li><a href="{{route('ad-post',[$srow->url_slug,'type' => $type, 'category' => $srow->pk_no])}}">{{$srow->name}}  </a></li>
												@endif
											@endforeach
											@endif
										</ul>	
									</div>
									
								@endforeach
							@endif
							
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="section next-stap post-option">
							<h2>Post an Ad in just <span>30 seconds</span></h2>
							<p>Please DO NOT post multiple ads for the same items or service. All duplicate, spam and wrongly categorized ads will be deleted.</p>
						</div>
					</div><!-- next-stap -->
				</div>
			</div>				
		</div><!-- container -->
	</section><!-- post-page -->
	
	@endsection

	@push('custom_js')
	 <script> 
        
        if ($(window).width() >= 768) {
        	function scrollToTop() { 
              $(window).scrollTop(0); 
           }
        }else if($(window).width() <= 767){
           function scrollToTop() { 
		        $('html, body').animate({
			        scrollTop: $("#subcat").offset().top
			    }, 1000);
           }
        }

    </script> 
	@endpush