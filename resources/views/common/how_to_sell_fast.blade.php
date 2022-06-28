@extends('layouts.app')
@section('content')
<!-- main -->
<section id="main" class="clearfix ad-details-page">
	<div class="container">
	
		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>How to Sell Fast</li>
			</ol><!-- breadcrumb -->						
<!-- 			<h2 class="title">How to Sell Fast</h2> -->		
       </div><!-- banner -->
		<div class="ads-info">
			<div class="row">
				<div class="col-md-8">
					<div class="my-ads section">
						<h3 class="title">How to Sell Fast</h3>
						<!-- ad-item -->
						<div class="ad-item row">
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/how-to-sell-fast.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Set the appropriate price </h3>
										<ul class="howtosell">
											<li>Set a competitive price after analyzing the market’s overall price</li>
											<li>Browse similar ads and pick a competitive price.</li>
											<li>Think about how much buyers are willing to pay. The lower the price, the higher the demand.</li>
										</ul>
								</div><!-- ad-info -->
							</div><!-- item-info -->
						</div><!-- ad-item -->
						<!-- ad-item -->
						<div class="ad-item row">
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Use good and transparent photos</h3>
									<ul class="howtosell">
										<li>Use genuine photos on your ads so that the interested buyers can see your product clearly.</li>
										<li>Take photos of your product from different angles.</li>
									</ul>
								</div><!-- ad-info -->
							</div><!-- item-info -->
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/great-photos.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
						</div><!-- ad-item -->
						<!-- ad-item -->
						<div class="ad-item row">
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/clear-details.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Give understandable features in your ad</h3>
									<ul class="howtosell">
										<li>Provide main feature or information of your product.</li>
										<li>Provide explicit and actual description of your product.</li>
										<li>Buyers will be willing to buy your product if there are details information on your ad.</li>
									</ul>									
								</div><!-- ad-info -->
							</div><!-- item-info -->
						</div>
						<!-- ad-item -->
						<!-- ad-item -->
						<div class="ad-item row">
							<div class="item-info col-lg-8">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Promote your ad!</h3>
									<ul class="howtosell">
										<li>Promote ads of your product for increasing the number of viewers.</li>
										<li>Many buyers will be interested to buy your product if you promote your ads.</li>
									</ul>
								</div><!-- ad-info -->
							</div><!-- item-info -->
							<!-- item-image -->
							<div class="item-image-box col-lg-4">
								<div class="item-image">
									<a href="details.html"><img src="{{asset('assets/images/about-us/promote-ad.jpg')}}" alt="Image" class="img-fluid"></a>
								</div><!-- item-image -->
							</div>
						</div><!-- ad-item -->
						<div class="ad-item row mt-4 text-center">
							<div class="item-info col-12">
								<!-- ad-info -->
								<div class="ad-info" style="padding: 0px 25px;">
									<h3 class="item-price">Easy monthly pricing and rewarding long-term contracts</h3>
									<p>
										Choose between our Business Plus and Business Premium Membership packages.Set up your Membership today!
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
								<p><span>Email us:</span><a style="font-weight: bold;" href="mailto: info@Adsclassi.com" target="_blank">info@Adsclassi.com</a></p>
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