@extends('layouts.app')
<?php 

	$rows = $data['rows'] ?? null;
?>
@section('content')
<!-- myads-page -->
<section id="main" class="clearfix myads-page">
	<div class="container"> 
		<div class="breadcrumb-section">
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Ad Post</li>
			</ol>						
		</div>
		<div class="ads-info profile">
			<div class="row">
				<div class="col-md-4 text-center">
					<!-- header -->
					@include('users._user_dashboard_menu')
					<!-- end header -->

				</div>
				<div class="col-md-8">
					<div class="my-ads section">
						<h2>Favourite ads</h2>
						@if( $rows && count($rows) > 0 )
						@foreach($rows as $key => $row)

						<div class="ad-item row">
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="{{ route('ad.details',['pk_no' => $row->pk_no,'url_slug' => $row->url_slug]) }}"><img src="{{ $row->img_path_thumb ?? '' }}" alt="Image" class="img-fluid" style="width: 100%; height: 150px;"></a>
								</div>
							</div>
							
							<div class="item-info col-lg-8">
								<div class="ad-info">
									<h3 class="item-price">TK {{ number_format($row->price,2) }}</h3>
									@if($row->is_active == 0 )
									<a href="javascript:void(0)"  class="pull-right c-btn"> Pending</a>
									@elseif($row->promotion == 'Basic')
									{{-- <a href="{{ route('promoted-ads.create',['id' => $row->pk_no]) }}"  class="pull-right c-btn"> Promote this ad</a> --}}
									@else
									<a href="javascript:void(0)"  class="pull-right c-btn">{{ $row->promotion }}</a>
									@endif

									<h4 class="item-title"><a href="{{ route('ad.details',['pk_no' => $row->pk_no,'url_slug' => $row->url_slug]) }}">{{$row->ad_title ?? '' }}</a></h4>
									<div class="item-cat">
										<span><a href="javascript:void(0)">{{ $row->category->name ?? '' }}</a></span> /
										<span><a href="javascript:void(0)">{{ $row->subcategory->name ?? '' }}</a></span>
									</div>										
								</div>
								<div class="ad-meta">
									<div class="meta-content">
										<span class="dated" style="">Posted On: <a href="#">{{date('d M Y, H:i A ', strtotime($row->created_at))}}</a></span>
										<span class="visitors">Visitors: {{ $row->total_view ?? '0' }}</span> 
									</div>										
									
									<div class="user-option pull-right">
										<a class="edit-item" href="{{route('edit-post',['id' => $row->pk_no, 'subcategory' => $row->subcategory->url_slug,'type' => $row->main_category, 'category' => $row->f_scat_pk_no])}}" data-toggle="tooltip" data-placement="top" title="Edit this ad"><i class="fa fa-pencil"></i></a>
										<a class="delete-item" href="{{route('my-ads.delete',[$row->pk_no])}}" data-toggle="tooltip" data-placement="top" title="Delete this ad" onclick="return confirm('Are you sure ?')"><i class="fa fa-times"></i></a>
									</div>
								</div>
							</div>
						</div>
						@endforeach

						<div class="row">
							<div class="col-lg-12">
								<div class="text-center">
									{{$rows->appends(request()->query())->links()}}
								</div>
							</div>
						</div>	
						@endif	

					</div>
				</div>
			</div>
		</div>
	</div>
</section>


@endsection

@push('custom_footer_script')
   
@endpush