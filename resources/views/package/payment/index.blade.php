@extends('layouts.app')
@section('content')


	<!-- main -->
	<section id="main" class="clearfix contact-us">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="{{url('/')}}">Home</a></li>
				<li>Payment Gateway</li>
			</ol>						
			<div class="pricing-section">
				<div class="row">
                    <form action="{{route('payment.create')}}" method="get">
                        <label>
                            <div class="col-md-4">
                                <button type="submit" class="btn">
                                    <div class="pric" style="text-align: center;">
                                        <h2 style="padding: 16px">SSLCommerze</h2>
                                        
                                            <input type="hidden" value="ssl_commerze" name="payment_gateway">
                                            <img src="{{asset('assets/images/sslcommerz.png')}}" width="120px" alt="">
                                    </div>
                                    
                                </button>
                            </div>
                        </label>
                    </form>
                    <form action="{{route('payment.create')}}" method="get">
                    <label>
                        <div class="col-md-4">
                            <button type="submit" class="btn">
                                <div class="pric" style="text-align: center;">
                                    <h2 style="padding: 16px">Stripe</h2>
                                        <input type="hidden" value="stripe" name="payment_gateway">
                                        <img src="{{asset('assets/images/stripe.png')}}" width="120px" alt="">
                                </div>
                            </button>
                        </div>
                    </label>
                    </form>
                    <form action="{{route('payment.create')}}" method="get">
                        <label>
                            <div class="col-md-4">
                                <button type="submit" class="btn">
                                    <div class="pric" style="text-align: center; height: 151px;">
                                        <h2 style="padding: 16px">Paypal</h2>
                                            <input type="hidden" value="paypal" name="payment_gateway">
                                            <img src="{{asset('assets/images/PayPal.png')}}" width="120px" alt="">
                                    </div>
                                </button>
                            </div>
                        </label>
                    </form>
				</div><!-- row -->
			</div><!-- pricing section -->
		</div><!-- container -->
	</section><!-- main -->
@endsection

@push('custom_footer_script')
   
@endpush