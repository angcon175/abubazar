@extends('layouts.app')
@section('content')
<!-- main -->
<section id="main" class="clearfix ad-details-page">
	<div class="container">
		<div class="breadcrumb-section">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Privacy Policy</li>
			</ol><!-- breadcrumb -->						
			<!-- <h2 class="title">Privacy Policy</h2> -->
		</div><!-- banner -->
		<div class="adpost-details privacy-policy">
			<div class="row">	
				<div class="col-lg-8">
					<div class="section postdetails">
						<h4>Privacy Policy</h4>
							<div id="page-content">
							    <p>Prior to posting an ad on Adsclassi.com, users must need to know the privacy policy of Adsclassi.com that describes how we collect and utilize their personal information.  For providing a safe and efficient service, Adsclassi.com must collect and use personal information.</p>
							    <p><b>Collection</b></p>
							    <p>
							        When users give their private information to Adsclassi.com, users successfully assent to shifting and storing the information to Adsclassi.com servers. Besides the posted information on Adsclassi.com is available to the public. Adsclassi.com collects and stores the following information:
							    </p>
							    <ul>
							        <li>Contact information, email address, mobile no and sometimes financial information depending on the service.</li>
							        <li>Computer sign-on data, traffic to and from Adsclassi.com, statistics on page views, and response to advertisements</li>
							        <li>Other information, such as a user's standard web log information and IP address.</li>
							    </ul>
							    <p>
							        <b><br /></b>
							    </p>
							    <p><b>Usage of your Information</b></p>
							    <p>Adsclassi.com uses of your personal information in order to:</p>
							    <ul>
							        <li>Render our services</li>
							        <li>Collect fees, settle disputes and resolve problems </li>
							        <li>Promote safe trading and implement our policies</li>
							        <li>Inform users of our services and enhance our services </li>
							        <li>Update users concerning the services</li>
							        <li>Communicate the marketing as well as promotional offers provided by Adsclassi.com</li>
							    </ul>
							    <p>
							        <b><br /></b>
							    </p>
							    <p><b>Disclosure of your Information</b></p>
							    <p>
							        Adsclassi.com doesn't give users' confidential information to any external parties for marketing purposes except taking the users' direct approval. Generally user’s private information can’t be revealed. But it may be published regarding lawful requirements and implementation of our strategy.
							    </p>
							    <p><b>Communication and Email Tools</b><br /></p>
							    <p>
							        By using Adsclassi.com, you consent to receive marketing communications regarding consumer products and services for our third-party advertising partners except if you inform us that you don't want to receive such communications. If you don't prefer to receive marketing communications from us, just indicate your preference by adhering to the directions offered with the communications.
							        <p>You aren't allowed to use our website or communication tools to send spam, derive addresses, or otherwise violate our terms of use or privacy policy. We may scan and filter email messages for ill-intended activity by using our communication tools If you utilize our tools in sending content to a friend, we don't store their address permanently or disclose them for marketing purposes. Please contact our customer support to report spam.</p>
							    </p>
							    <p>
							        You aren't allowed to use our website or communication tools to send spam, derive addresses, or otherwise violate our terms of use or privacy policy. We may scan and filter email messages sent using our communication tools for
							        ill-intended or prohibited content or activity. If you utilize our tools in sending content to a friend, we don't store their address permanently or disclose them for marketing purposes. Please contact our customer support to report
							        spam from other users.
							    </p>
							    <p><b>Security</b></p>
							    <p>We use many tools including passwords, encryption, and physical security to protect your private information against illicit use of your information from offenders.</p>
							    <p>It is inappropriate and unethical to disclose the contact information of others through the service. We employ many different security techniques to protect such data from unauthorized access by users inside and outside the company. All personal electronic details rendered in the service will remain private except for those that you want to disclose.</p>
							    <p><b>Contact Details</b></p>
							    <p>Contact our customer support via email on&nbsp;<a href="mailto: info@Adsclassi.com" target="_blank">info@Adsclassi.com</a>.</p>
							    <p>&nbsp;<b>Unsubscribe Information</b></p>
							    <p>
							        If you want to review or remove your posted information from our website, please contact us at&nbsp;<a href="mailto:info@Adsclassi.com" target="_blank">info@Adsclassi.com</a>. Alternatively, you can unsubscribe anytime by clicking on the unsubscribe link that we include at the bottom of all our email communications.
							    </p>
							</div>
					</div><!-- section -->
				</div>
				<!-- quick-rules -->	
				<div class="col-lg-4">
					<div class="section quick-rules">
						<h4>Quick rules</h4>
						<p class="lead">Posting an ad on <a href="#">Adsclassi.com</a> is free! However, all ads must follow our rules:</p>

						<ul>
							<li>Make sure you post in the correct category.</li>
							<li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
							<li>Do not upload pictures with watermarks.</li>
							<li>Do not post ads containing multiple items unless it's a package deal.</li>
							<li>Do not put your email or phone numbers in the title or description.</li>
						</ul>
					</div>
				</div><!-- quick-rules -->	
			</div><!-- photos-ad -->				
		</div>	
	</div><!-- container -->
</section><!-- main -->


@endsection

@push('custom_footer_script')
   
@endpush