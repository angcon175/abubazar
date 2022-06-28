@extends('layouts.app')
@section('content')
<!-- main -->
<section id="main" class="clearfix ad-details-page promotion">
	<div class="container">
		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Promotions</li>
			</ol><!-- breadcrumb -->						
		</div><!-- banner -->
		<div class="ads-info">
			<div class="row">
				<div class="col-md-8">
					<div class="my-ads section">
						<h3 class="title">We have three types of Promotions</h3>
					     <div class="card-body form-layout item-detail post-ad-page">
						    <div id="page-content">
						        <p><b>We have three types of Promotions</b></p>
						        <p>1) Top Ads<br>2) Urgent Ads <br> 3) Featured Ads</p>
						        <p><b>1) Top Ads:</b> You can place your ads at top of listings for 7/15 days. Your ads will randomly display at top of all ads list page also category wise page.</p>
						        <p>&nbsp;Ex:</p>
						        <pre><code class="lang-html"><img src="{{asset('assets/images/topads.png')}}" alt="top" class=""></code></pre>
						        <p><br></p>
						        <p><b>2) Urgent ads:</b>&nbsp;<span style="font-size: 16px;">You can place your ads at Urgent listings for 7/15 days. Your ads will randomly display at Home Page and in listing page with a special tag name.&nbsp;</span>
						        </p>
						        <p><span style="font-size: 16px;"><span style="font-size: 16px;"><b>Home Page Random 10 urgent ads home page get more visitors than others page</b></span></span>
						        </p>
						        <pre><code><img src="{{asset('assets/images/urgent.png')}}" alt="featured-home">
								</code></pre>
								<p><b>3) Featured ads:</b>&nbsp;<span style="font-size: 16px;">You can place your ads at Featured listings for 7/15 days. Your ads will randomly display at Home Page and in listing page with a special tag name.&nbsp;</span>
						        </p>
						        <pre><code><img src="{{asset('assets/images/featured.png')}}" alt="featured-home">
								</code></pre>
						    </div>
			           </div>
				   </div><!-- my-ads -->
				</div>
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