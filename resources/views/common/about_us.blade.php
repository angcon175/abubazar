@extends('layouts.app')
@section('content')
<!-- main -->
<section id="main" class="clearfix about-us page">
	<div class="container">

		<div class="breadcrumb-section">
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>About</li> 
			</ol><!-- breadcrumb -->						
			<!-- <h2 class="title">About Us</h2>	 -->
		</div><!-- banner -->

		<div class="section about">
			<div class="about-info">
				<div class="row">
					<!-- about-us-images -->
					<div class="col-lg-6">
						<div class="about-us-images">
							<img src="{{asset('assets/images/about-us/about.jpg')}}" alt="About us Image" class="img-fluid">
						</div>
					</div><!-- about-us-images -->
					
					<!-- about-text -->
					<div class="col-lg-6">
						<div class="about-text">
							<h3>About Adsclassi</h3>
							<!-- description-paragraph -->
							<div class="description-paragraph">
								<p>Adsclassi, an e-commerce and ad-posting corporation based in Dhaka, Bangladesh, is created in the intend to facilitate business-to-business and business-to-customer sales. This multivendor website not only allows you to order trendy products from all over Bangladesh but also enables sellers to advertise their unique collection of goods. </p>
								<p></p>
							</div><!-- description-paragraph -->
							<!-- description-paragraph -->
							<div class="description-paragraph"><p>Create a buyer account in just few simple steps and enjoy the luxury of buying from the widest pool of product varieties or organize your own little virtual shop by signing up as a seller. We offer all this while putting our customers in top priority list and providing them with excellent customer service and cordial support.</p></div> 
						</div><!-- description-paragraph -->
					</div><!-- about-text -->
				</div>
			</div><!-- about-info -->
			

			<div class="approach">
				<div class="row">
					<div class="col-md-4 text-center">
						<div class="our-approach">
							<h3>Mission</h3>
							<p>We aspire to provide buyers budget-friendly picks and to provide sellers the finest categories to showcase their inventory with absolute convenience.</p>
						</div>
					</div><!-- about-text -->

					<!-- about-text -->
					<div class="col-md-4 text-center">
						<div class="our-approach">
							<h3>Vission</h3>
							<p>We aim to be this country’s best customer-centric business that offers customers to find and buy almost anything they want to shop online.</p>
						</div>
					</div><!-- about-text -->

					<!-- about-text -->
					<div class="col-md-4 text-center">
						<div class="our-approach">
							<h3>Why choose us</h3>
							<p>We are always looking for ways to improve every aspects of our business. Thus, we whole-heartedly welcome any feedback so we can act upon them to suit our customers’ best need.</p>
						</div>
					</div><!-- about-text -->
				</div>
			</div>

			{{--<div class="team-section">
				<h3>Adsclassi.com Team Member</h3>
				<div class="team-members">
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Leaf Corcoran</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Mike Lewis</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Julie MacKay</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Christine Marquardt</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Loren Heiman</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Chris Taylor</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Alex Posey</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">

							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Teddy Newell</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Eli Amesefe</h4>
					</div><!-- team-member -->

					<!-- team-member -->
					<div class="team-member">
						<!-- team-member-image -->
						<div class="team-member-image">
							<img src="{{asset('assets/images/man.webp')}}" alt="Team Member" class="img-fluid">
							<!-- social -->
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
								</ul><!-- social -->
							</div>
						</div><!-- team-member-image -->
						<h4>Andrei Patru</h4>
					</div><!-- team-member -->
					
				</div><!-- team-members -->
			</div><!-- team-members --> --}}
		</div><!-- about -->
		
		{{--<div class="section testimonials text-center">
			<div class="testimonial-carousel">
				<div class="testimonial">
					<img src="{{asset('assets/images/man.webp')}}" alt="about Image" class="img-fluid">
					<h3 class="client-name">Karol Cichoń</h3>
					<h4 class="client-company">Founder, Leo Inc</h4>
					<!-- client-pragrap -->
					<div class="client-pragrap">
						<p>“Wow!! It's really awesome. Nice and Clean design.It's really impressive. I am<br> really appreciate your project.”</p>
					</div><!-- client-pragrap -->
				</div>

				<div class="testimonial">
					<img src="{{asset('assets/images/man.webp')}}" alt="Image" class="img-fluid">
					<h3 class="client-name">Hena Rio</h3>
					<h4 class="client-company">CEO, Leo Inc</h4>
					<!-- client-pragrap -->
					<div class="client-pragrap">
						<p>“Wow!! It's really awesome. Nice and Clean design.It's really impressive. I am<br> really appreciate your project.”</p>
					</div><!-- client-pragrap -->
				</div>

				<div class="testimonial">
					<img src="{{asset('assets/images/man.webp')}}" alt="" class="img-fluid">
					<h3 class="client-name">Jhon Mark</h3>
					<h4 class="client-company">Founder, Mark Ltd.</h4>
					<!-- client-pragrap -->
					<div class="client-pragrap">
						<p>“Wow!! It's really awesome. Nice and Clean design.It's really impressive. I am <br> really appreciate your project.”</p>
					</div><!-- client-pragrap -->
				</div><!-- testimonial -->					
			</div><!-- testimonial -->
		</div><!-- testimonial-carousel -->	 --}}

	</div><!-- container -->
</section><!-- main -->



@endsection

@push('custom_footer_script')
   
@endpush