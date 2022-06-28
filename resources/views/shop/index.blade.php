@extends('layouts.app')
@section('content')

<!-- myads-page -->
<section id="main" class="clearfix myads-page">
	<div class="container"> 
		<div class="breadcrumb-section">
			<ol class="breadcrumb">
				<li><a href="{{ route('home') }}">Home</a></li>
				<li>Create Shop</li>
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
						<h3>Your Shop</h3>
						<hr>
						<div class="ad-item row mt-4 text-center">
							<div class="item-info col-12">

								@if( !empty( $data['shop_data'] ) ) 
									<div class="ad-info" style="padding: 0px 25px;"> 
										<h3>Now you can visit your shop page or update !</h3> 
									</div>

									<a href="{{route('shop_page_details',['id' => $data['shop_data']->pk_no, 'url_slug' => $data['shop_data']->url_slug ])}}" class="btn-primary btn">Let's go to your Shop</a> 
									<a href="{{route('modify-shop')}}" class="btn-primary btn">Update Your Shop</a>
									
								@else

								<div class="ad-info" style="padding: 0px 25px;"> 
									<h3 class="item-price">You don't have any shop page yet !</h3>
									<p>Kindy hit the Create Your Shop button and create now. It's won't take more than 2 minutes !</p>
								</div>
								<a href="{{route('create-shop')}}" class="btn-primary btn">Create Your Shop</a>

								@endif

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


@endsection

@push('custom_footer_script')

@endpush