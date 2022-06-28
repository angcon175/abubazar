@extends('admin.site-setting.index')
@section('mail')

<div class="card">
	<div class="card-header">
		<h4>Mail Settings</h4>
	</div>
	<div class="card-body">
		<form action="#" method="post">
			<div class="row">
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Driver</label>
						<input type="text" name="mail_driver" value="" class="form-control" placeholder="Enter mail driver">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Host</label>
						<input type="text" name="mail_host" value="" class="form-control" placeholder="Enter mail host">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Port</label>
						<input type="text" name="mail_port" value="" class="form-control" placeholder="Enter port">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Username</label>
						<input type="text" name="mail_username" value="" class="form-control" placeholder="Enter mail username">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Password</label>
						<input type="password" name="mail_password" value="" class="form-control" placeholder="Enter mail password">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail Encryption</label>
						<input type="text" name="mail_encryption" value="" class="form-control" placeholder="Enter mail encryption">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail From Address</label>
						<input type="text" name="mail_form_address" value="" class="form-control" placeholder="Enter mail form address">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Mail From Name</label>
						<input type="text" name="mail_form_name" value="" class="form-control" placeholder="Enter mail form name">
					</div>
				</div>
				<div class="col-12 text-center mt-2">
                	<button type="submit" class="btn btn-primary">Update</button>
            	</div>
			</div>
		</form>
	</div>
</div>

<div class="card">
	<div class="card-header">
		<h4>Send Test Mail</h4>
	</div>
	<div class="card-body">
		<form action="#" method="post">
			<div class="row mb-2">
				<div class="col-md-6">
					<div class="mb-2">
						<label class="form-label">Email Address</label>
						<input type="text" name="mail_driver" class="form-control" placeholder="Enter email address" required="">
					</div>
				</div>
				<div class="col-12">
                	<button type="submit" class="btn btn-primary">Send</button>
            	</div>
			</div>
		</form>
	</div>
</div>



@endsection