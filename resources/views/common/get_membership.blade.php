@extends('layouts.app')
@section('content')
<!-- main -->
<section id="main" class="clearfix ad-details-page">
	<div class="container">
		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Get Membership</li>
			</ol><!-- breadcrumb -->						
		</div><!-- banner -->
		<div class="ads-info">
			<div class="row">
				<div class="col-md-8">
					<div class="my-ads section">
						<h3 class="title">Increase your sales with a <strong>Adsclassi.com</strong> Membership!</h3>
						<!-- ad-item -->
						<div class="ad-item row">
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/why-membership.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Why Membership?</h3>
									<p>
										You can easily reach your products  to a large number of proposal customers by doing membership and it will permit your products to a greater extent on Adsclassi.com.
									</p>									
								</div><!-- ad-info -->
							</div><!-- item-info -->
						</div><!-- ad-item -->
						<!-- ad-item -->
						<div class="ad-item row">
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Post more ads</h3>
									<p>
										You will get the facility to post multiple ads under our Membership package. Your sell will be increased if you post more and more.
									</p>									
								</div><!-- ad-info -->
							</div><!-- item-info -->
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/post-more-ad.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
						</div><!-- ad-item -->
						<!-- ad-item -->
						<div class="ad-item row">
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/promote-ad.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Promote Your Ads</h3>
									<p>
										A perfect marketplace in Bangladesh that has many buyers and sellers who can promote their ads for selling their product as soon as possible. While the posting of an ad is free of charge on Adsclassi.com
									</p>									
								</div><!-- ad-info -->
							</div><!-- item-info -->
						</div>
						<!-- ad-item -->
						<div class="ad-item row mt-4 text-center">
							<div class="item-info col-12">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Easy monthly pricing and rewarding long-term contracts</h3>
									<p>
										Set up your Membership today!
									</p>									
								</div><!-- ad-info -->
								<a href="{{route('packages')}}" class="btn-primary btn">Let's see our packages</a>
							</div><!-- item-info -->
						</div><!-- ad-item -->
					</div>
				</div><!-- my-ads -->

				<!-- recommended-cta-->
				<div class="col-md-4 text-center">
					<!-- recommended-cta -->
					<div class="recommended-cta">					
						<div class="cta">
							<!-- single-cta -->						
							<div class="single-cta">
								<!-- cta-icon -->
								<div class="cta-icon icon-secure">
									<img src="{{asset('assets/images/icon/13.png')}}" alt="Icon" class="img-fluid">
								</div><!-- cta-icon -->

								<h4>Secure Trading</h4>
								<p>Adsclassi.com is determined to maintain privacy of users during the time of trading and even users can make a report if someone try to fraud.</p>
							</div><!-- single-cta -->
							<!-- single-cta -->
							<div class="single-cta">
								<!-- cta-icon -->
								<div class="cta-icon icon-support">
									<img src="{{asset('assets/images/icon/14.png')}}" alt="Icon" class="img-fluid">
								</div><!-- cta-icon -->

								<h4>24/7 Support</h4>
								<p>Adsclassi.com provides service 24 hours a day and 7 days a week for reducing wait times and  increasing loyalty of users.</p>
							</div><!-- single-cta -->
						

							<!-- single-cta -->
							<div class="single-cta">
								<!-- cta-icon -->
								<div class="cta-icon icon-trading">
									<img src="{{asset('assets/images/icon/15.png')}}" alt="Icon" class="img-fluid">
								</div><!-- cta-icon -->

								<h4>Easy Trading</h4>
								<p>Adsclassi.com is online marketplace where users can easily sell or purchase almost everything.</p>
							</div><!-- single-cta -->

							<!-- single-cta -->
							<div class="single-cta">
								<h5>Need Help?</h5>
								<p><span>Give a call on</span><a href="tellto:123 456 789"> 123 456 789</a></p>
							</div><!-- single-cta -->
						</div>
					</div><!-- cta -->
				</div><!-- recommended-cta-->				
				
			</div><!-- row -->
		</div><!-- row -->	
	</div><!-- container -->
</section><!-- main -->

@endsection

@push('custom_footer_script')
   
@endpush