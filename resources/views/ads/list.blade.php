@extends('layouts.app')
<?php
$area_query     		= $data['area_query'] ?? 'bangladesh' ;
$get_area_query 		= $data['get_area_query'] ?? null ;
$get_category_query 	= $data['get_category_query'] ?? null ;

$urgent_ad 				= request()->get('urgent') ?? null;
$featured_ad 			= request()->get('featured') ?? null;
$new_ad 				= request()->get('new') ?? null;
$used_ad 				= request()->get('used') ?? null;
// $short_by 			= request()->get('sort') ?? null;

$sort_by 				= request()->get('sort') ?? 'date';
$order_by 				= request()->get('order') ?? 'desc';
$full_sort_by 			= $sort_by.'_'.$order_by;

?>
@push('custom_css')
<style type="text/css">
	.short-dropdown a{line-height: 20px !important; font-size: 14px; padding: 5px 5px !important;}
	.short-dropdown a:hover{color: #149777;}
	.short-dropdown a.activ{color: #149777;}
</style>
@endpush

@section('content')
<!-- main -->
	<section id="main" class="clearfix category-page main-categories">
		<div class="container">
			@include('ads._topbar',$data)
			<div class="category-info">	
				<div class="row">
					<!-- accordion-->
					<div class="aside_bar col-lg-4 col-md-4">
						<div class="category-accordion tr-accordion" id="accordion">
							<div class="card">
								<div class="card-header">
									<button data-toggle="collapse" data-target="#short_by" aria-expanded="true" aria-controls="short_by">Sort By</button>
								</div>
								<div id="short_by" class="collapse show" aria-labelledby="short_by" data-parent="#accordion">
									<div class="card-body">
										<select class="form-control" name="short_by" style="height: 34px;" id="short_by_select">
											<option value="date_desc" {{ $full_sort_by == 'date_desc' ? 'selected' :'' }}>Date : Newest on top</option>
											<option value="date_asc" {{ $full_sort_by == 'date_asc' ? 'selected' :'' }}>Date : Oldest on top</option>
											<option value="price_desc" {{ $full_sort_by == 'price_desc' ? 'selected' :'' }}>Price : High to low</option>
											<option value="price_asc" {{ $full_sort_by == 'price_asc' ? 'selected' :'' }}>Price : Low to high</option>
										</select>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading-4">
									<button data-toggle="collapse" data-target="#collapse-4" aria-expanded="true" aria-controls="collapse-4">Filter By</button>
								</div>
								<div id="collapse-4" class="collapse show" aria-labelledby="heading-4" data-parent="#accordion">
									<div class="card-body">
										<label for="urgent" class="{{ $urgent_ad == 1 ? 'checked' : '' }}">
											<input type="checkbox" class="filter_by" name="urgent" id="urgent" value="urgent" {{ $urgent_ad == 1 ? 'checked' : '' }}> Urgent</label>
										<label for="featured" class="{{ $featured_ad == 1 ? 'checked' : '' }}">
											<input type="checkbox" class="filter_by" name="featured" id="featured" value="featured" {{ $featured_ad == 1 ? 'checked' : '' }}> Featured</label>
										<label for="new" class="{{ $new_ad == 1 ? 'checked' : '' }}">
											<input type="checkbox" class="filter_by" name="new" id="new" value="new" {{ $new_ad == 1 ? 'checked' : '' }}> New</label>
										<label for="used" class="{{ $used_ad == 1 ? 'checked' : '' }}">
											<input type="checkbox" class="filter_by" name="used" id="used" value="used" {{ $used_ad == 1 ? 'checked' : '' }}> Used</label>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading-1">
									<button data-toggle="collapse" data-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1">All Categories</button>
								</div>
								<div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion">
									<div class="card-body ">
										<ul>
											@if(isset($data['category']) && count($data['category']) > 0)
											@foreach($data['category'] as $cat)
											<li>
												<a href="{{route('ads.list', ['area' => $get_area_query, 'category' => $cat->url_slug ])}}"><img src="{{ $cat->icon_src }}" alt="" width="16" height="16"> {{ $cat->name }}<span>({{ $cat->total_post }})</span></a>
												<a data-toggle="collapse" href="#lf_{{$cat->url_slug}}" role="button" aria-expanded="false" class="float-right" aria-controls="lf_{{$cat->url_slug}}"><i class="fa fa-chevron-down"></i></a>
												<div class="collapse hide" id="lf_{{$cat->url_slug}}">
												  <div class="card">
												    <ul class="subdropdowncss">
												    	@if(isset($data['subcategory']) && count($data['subcategory']) > 0)
												    	    @foreach($data['subcategory'] as $scat)
												    	        @if($cat->pk_no == $scat->parent_id)
												    			<li><a href="{{route('ads.list', ['area' => $get_area_query, 'category' => $scat->url_slug ])}}"><i class="fa fa-chevron-right"></i> {{ $scat->name }} ({{$scat->total_post}})</a></li> 
												    	@endif
												    	@endforeach
												    	@endif
												    </ul>
												  </div>
												</div>
											</li>
											@endforeach
											@endif
											
										</ul>												
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading-1">
									<button class="collapsed" data-toggle="collapse" data-target="#location" aria-expanded="true" aria-controls="collapse-1">Locations</button>
								</div>

								<div id="location" class="collapse" aria-labelledby="heading-1" data-parent="#accordion">
									<div class="card-body">
										<ul>
											@if(isset($data['divisions']) && count($data['divisions']) > 0 )
          									@foreach($data['divisions'] as $key => $divi)
											<li>
												<a href="{{route('ads.list', ['area' => $divi->url_slug, 'category' => $get_category_query ])}}">{{ $divi->name }}<span>( {{ $divi->total_post }} )</span></a>
												<a data-toggle="collapse" href="#lf{{$divi->url_slug}}" role="button" aria-expanded="false" class="float-right" aria-controls="lf{{$divi->url_slug}}"><i class="fa fa-chevron-down"></i></a>
												<div class="collapse" id="lf{{$divi->url_slug}}">
												  <div class="card">
												    <ul class="subdropdowncss">
												    	@if(isset($data['areas']) && count($data['areas']) > 0 )
            											@foreach($data['areas'] as $ak => $area )
            											@if($area->division_pk_no == $divi->pk_no)
												    	<li><a href="{{route('ads.list', ['area' => $area->url_slug, 'category' => $get_category_query ])}}"><i class="fa fa-chevron-right"></i> {{ $area->name }} ({{ $area->total_post }})</a></li>
												    	@endif
												    	@endforeach
												    	@endif
												    </ul>
												  </div>
												</div>
											</li>
											@endforeach
											@endif											
										</ul>												
									</div>
								</div>
							</div>
						</div>
						<!-- accordion-->
					</div>

					<!-- recommended-ads -->
					<div class="col-md-8 col-lg-8">				
						<div class="section recommended-ads">
							<!-- featured-top -->
							<div class="featured-top">
								<h4>Recommended Ads for You</h4>							
							</div>
						
							@if(isset($data['rows']) && count($data['rows']) > 0)
							@foreach($data['rows'] as $pk => $row)
							<?php $row = ( object ) $row; ?>
							<div class="ad-item row {{ $row->promotion == 'Top' ? 'topad' : 'notop' }} "> 
								<div class="item-image-box col-lg-4">
									<div class="item-image">
										<a href="{{ route('ad.details',['pk_no' => $row->pk_no,'url_slug' => $row->url_slug]) }}" title="{{ $row->ad_title }}">
											<img src="{{asset('assets/images/default-load.png')}}"  data-src="{{asset($row->img_path_thumb) }}" alt="{{ $row->ad_title }}" class="img-fluid">
											@if($row->promotion == 'Feature')
											<span class="featured-ad">Featured</span>
											@endif
											@if($row->promotion == 'Urgent')
											<span class="featured-ad">Urgent</span>
											@endif
										</a>
									</div>
								</div>
								<div class="item-info col-lg-8">
									<div class="ad-info">
										<h3 class="item-price">BDT {{ number_format($row->price) }} 
											@if($row->promotion == 'Top') <span class="topadtag">{{ $row->promotion}}</span> @endif
										</h3>
										<h4 class="item-title"><a href="{{route('ad.details',['pk_no' => $row->pk_no,'url_slug' => $row->url_slug])}}">{{ $row->ad_title }}</a></h4>
										<div class="item-cat">
											<span><a href="javascript:void(0)">{{ $row->category->name ?? '' }}</a></span> /
											<span><a href="javascript:void(0)">{{ $row->subcategory->name ?? '' }}</a>&nbsp;&nbsp; </span>
									
											{{--<span class="views">total view: {{ $row->total_view }}</span>--}}
										</div>										
									</div> 
									<div class="ad-meta">
										<div class="meta-content">
											<span class="dated">{{ date('d M, Y H:i A',strtotime($row->created_at)) }}</span>
											@if($row->using_condition)
											<a href="javascript:void(0)" class="tag"><i class="fa fa-tags"></i> {{ $row->using_condition }}</a>
											@endif
										</div>										
									 <div class="user-option pull-right">
											<a href="#" data-toggle="tooltip" data-placement="top" title="{{ $row->area->name ?? '' }}, {{ $row->area->city->name ?? '' }} {{ $row->area->division->name ?? '' }}"><i class="fa fa-map-marker"></i> </a>
											<a class="online" href="#" data-toggle="tooltip" data-placement="top" title="{{ $row->user->seller_type ?? '' }}"><i class="fa fa-user"></i> </a>											
										</div>
									</div>
								</div>
							</div>
							@endforeach
							@else
							<p class="text-center mt-2">Product not available</p>
							@endif

							@if(isset($data['rows']) && count($data['rows']) > 0)
							
								<!-- pagination  -->
							<div class="text-center">
								<ul class="pagination">
									@if(request()->get('page') < 2 )
									<li class="page-item"><a class="page-link" href="{{ request()->fullUrl() }}" style="background-color: #ccc;"  id="pagePrev">« Previous </a></li>
								
									@else
									<li class="page-item"><a class="page-link" href="{{ request()->fullUrl() }}" id="pagePrev">« Previous </a></li>
									@endif

									@if($data['page_count'] == request()->get('page'))
										<li class="page-item"><a class="page-link" href="{{ request()->fullUrl() }}" style="background-color: #ccc;" id="pageNext">Next »</a></li>
									
									@else
										<li class="page-item"><a class="page-link" href="{{ request()->fullUrl() }}" id="pageNext">Next »</a></li>
									@endif
								</ul>
							</div>
							<!-- pagination  -->	
							@endif				
						</div>
					</div>
				</div>	
			</div>
		</div>
	</section>

	<section id="something-sell" class="clearfix parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h2 class="title">Do you have something-sell?</h2>
					<h4>Post your ad for free on Adsclassi.com</h4>
					<a href="#" data-toggle="modal" data-target="#staticBackdrop" class="btn btn-primary">Post Your Ad</a>
				</div>
			</div><!-- row -->
		</div><!-- contaioner -->
	</section><!-- something-sell -->
	    

@endsection
@push('custom_js')
    <script type="text/javascript">
    	$(document).ready(function(e){
    		var currentPage = Number(`{{$data['current_page']}}`);
    		var page_count = Number(`{{$data['page_count']}}`);
    		
    		if (currentPage > 1 ) {
    			var prev_page = currentPage - 1 ;
    		}else{
    			var prev_page = 1 ;
    		}
    		

    		var next_page = currentPage + 1 ;

    		var pagePrev = $('#pagePrev').attr('href');
    		var pageNext = $('#pageNext').attr('href');
    		var prev_url = makeUrl(pagePrev, 'page' , prev_page); 
    		if(currentPage == 1){
    			$('#pagePrev').attr('href','javascript:void(0)');
    		}else{
    			$('#pagePrev').attr('href',prev_url);
    		}
    		

    		var next_url = makeUrl(pageNext, 'page' , next_page); 
    		if(currentPage != page_count){
    			$('#pageNext').attr('href',next_url);
    		}else{
    			$('#pageNext').attr('href','javascript:void(0)');
    		}
    		



    	})

    	$(document).on('click', '#key_search', function(e){

    		var keywords = $('#keywords').val();
    		
    		var new_url = old_url = $(location).attr("href");
    		new_url = makeUrl(new_url, 'keywords' , keywords);
    	
    		window.location.href = new_url;

    	})

    	$(document).on('change', '#short_by_select', function(e){
    		var short_by 	= $(this).val();
    		var new_url 	= old_url = $(location).attr("href");
    		var param 		= $(this).val();
    		var arr 			= param.split('_');
    		var order 		= arr[0];
    		var sort 			= arr[1];
    		var val 			= 0;
    		new_url = makeUrl(old_url, 'sort' , order);
    		new_url = makeUrl(new_url, 'order' , sort);
    		window.location.href = new_url;
    	})
    	$(document).on('click','.filter_by',function(e){
    		var new_url = old_url = $(location).attr("href");
    		var param 	= $(this).val();
    		var val 		= 0;
    		
    		if($(this).is(":checked")){
    			var val = 1;
    			var new_url = makeUrl(old_url, param, val);
    		}	else{
    			var val = 0;
    			var new_url = makeUrl(old_url, param, val);
   			}
   			new_url = makeUrl(new_url, 'page' , 1);
    		window.location.href = new_url;

    	
    	})

    	function makeUrl(old_url,param,val)
    	{
    		var url 					= new URL(old_url);
    		var search_params = url.searchParams;
    		search_params.set(param, val);
    		url.search 				= search_params.toString();
    		return url.toString();
    	}

	  	$(document).on('click', '.fa-chevron-down', function(){
       		$(this).addClass("fa-chevron-up");
       		$(this).removeClass("fa-chevron-down");
	  	});
	  	$(document).on('click', '.fa-chevron-up', function(){
       		$(this).addClass("fa-chevron-down");
       		$(this).removeClass("fa-chevron-up");
	  	});
    </script>
    <script src="{{asset('/assets/js/imagelazy.js')}}"></script>
    <script type="text/javascript">
    jQuery(function($) {
        $.imgLazy({ effect: 'fadeIn', viewport: true, timeout: 20 });
    });
</script>
@endpush
