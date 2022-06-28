@extends('admin.site-setting.index')
@section('payment')

<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<div class="card">
	<div class="card-header">
		<h4>Payment Settings</h4>
	</div>
	<div class="card-body">
		<form action="#" method="post">
			<div class="row mb-2">
				<!-- Paypal -->
				<div class="col-md-6">
					<div class="card pt-2 pb-2">
						<div class="col-12">
							<div class="card_title">
								<h4>Paypal Settings</h4>
							</div><hr>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Live Mode</label> <br/>
								<input type="checkbox" name="live_mode" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Client Id</label>
								<input type="text" name="client_id" value="" class="form-control" value="" placeholder="Client id">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Client Secret</label>
								<input type="text" name="client_secret" value="" class="form-control" value="" placeholder="Client secret">
							</div>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Status</label> <br/>
								<input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
		                	<button type="submit" class="btn btn-primary">Update</button>
		            	</div>
					</div>
				</div>
				<!-- Paystack -->
				<div class="col-md-6">
					<div class="card pt-2 pb-2">
						<div class="col-12">
							<div class="card_title">
								<h4>Paystack Settings</h4>
							</div><hr>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Client Id</label>
								<input type="text" name="client_id" value="" class="form-control" value="" placeholder="Client id">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Client Secret</label>
								<input type="text" name="client_secret" value="" class="form-control" value="" placeholder="Client secret">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Merchant Email</label>
								<input type="text" name="merchant_email" value="" class="form-control" value="" placeholder="Merchant email">
							</div>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Status</label> <br/>
								<input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
		                	<button type="submit" class="btn btn-primary">Update</button>
		            	</div>
					</div>
				</div>
				<!-- Stripe -->
				<div class="col-md-6">
					<div class="card pt-2 pb-2">
						<div class="col-12">
							<div class="card_title">
								<h4>Stripe Settings</h4>
							</div><hr>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Secret Key</label>
								<input type="text" name="secret_key" value="" class="form-control" value="" placeholder="Secret Key">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Publisher Key</label>
								<input type="text" name="publisher_key" value="" class="form-control" value="" placeholder="Publisher Key">
							</div>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Status</label> <br/>
								<input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
		                	<button type="submit" class="btn btn-primary">Update</button>
		            	</div>
					</div>
				</div>

				<!-- Razorpay  -->
				<div class="col-md-6">
					<div class="card pt-2 pb-2">
						<div class="col-12">
							<div class="card_title">
								<h4>Razorpay Settings</h4>
							</div><hr>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Secret Key</label>
								<input type="text" name="secret_key" value="" class="form-control" value="" placeholder="Secret Key">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Publisher Key</label>
								<input type="text" name="publisher_key" value="" class="form-control" value="" placeholder="Publisher Key">
							</div>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Status</label> <br/>
								<input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
		                	<button type="submit" class="btn btn-primary">Update</button>
		            	</div>
					</div>
				</div>

				<!-- SSL Commerz -->
				<div class="col-md-6">
					<div class="card pt-2 pb-2">
						<div class="col-12">
							<div class="card_title">
								<h4>SSL Commerz Settings</h4>
							</div><hr>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Store ID</label>
								<input type="text" name="store_id" value="" class="form-control" value="" placeholder="Store id">
							</div>
						</div>
						<div class="col-12">
							<div class="mb-2">
								<label class="form-label">Store Password</label>
								<input type="text" name="store_password" value="" class="form-control" value="" placeholder="Store password">
							</div>
						</div>
						<div class="col-md-6">
							<div class="mb-2">
								<label class="form-label">Status</label> <br/>
								<input type="checkbox" name="status" data-toggle="toggle" data-onstyle="primary">
							</div>
						</div>
						<div class="col-12">
		                	<button type="submit" class="btn btn-primary">Update</button>
		            	</div>
					</div>
				</div>

			</div>
		</form>
	</div>
</div>

<script>
	$('.selectbox').select2();
</script>

@endsection