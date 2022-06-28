@extends('layouts.app')
@section('content')

<!-- myads-page -->
<section id="main" class="clearfix myads-page">
	<div class="container">

		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Ad Post</li>
			</ol><!-- breadcrumb -->						
		</div><!-- banner -->
		<div class="ads-info profile">
			<div class="row">
				<div class="col-md-4 text-center">
					<!-- header -->
					@include('users._user_dashboard_menu')
					<!-- end header -->
				</div>
				<!-- recommended-cta-->
				<div class="col-md-8">
						<div class="my-ads section">
							<h3>My Membership</h3>
							<hr>
							<div class="ad-item row mt-4 text-center">
								<div class="item-info col-12">
									<!-- ad-info -->
									<div class="ad-info" style="padding: 0px 25px;">
										<h3 class="item-price">You don't have any membership yet !</h3>
										<p>
											Kindy visit our membership package page. <br>Set up your Membership today!
										</p>									
									</div><!-- ad-info -->
									<a href="{{route('packages')}}" class="btn-primary btn">Let's see our packages</a>
									<a href="{{route('get-membership')}}" class="btn-primary btn">Why membership?</a>
								</div><!-- item-info -->
							</div><!-- ad-item -->
						</div>
					</div><!-- my-ads -->
			</div><!-- row -->
		</div><!-- row -->
	</div><!-- container -->
</section><!-- myads-page -->


@endsection

@push('custom_footer_script')
   
@endpush