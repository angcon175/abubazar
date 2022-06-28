@extends('admin.site-setting.index')
@section('seo')

<div class="card">
	<div class="card-header">
		<h4>Seo Settings</h4>
	</div>
	<div class="card-body">
		<form action="#" method="post">
			<div class="row">
				<div class="col-12">
					<div class="mb-2">
						<label class="form-label">Seo Meta Title</label>
						<input type="text" name="seo_meta_title" value="" class="form-control" placeholder="Seo title">
					</div>
				</div>
				<div class="col-12">
					<div class="mb-2">
						<label class="form-label">Seo Meta Description</label>
						<textarea name="seo_meta_des" value="" class="form-control" cols="30" rows="5" placeholder="Seo meta description"></textarea>
					</div>
				</div>
				<div class="col-12">
					<div class="mb-2">
						<label class="form-label">Seo Meta Keywords</label>
						<textarea name="seo_meta_keyword" value="" class="form-control" cols="30" rows="5" placeholder="Seo meta keywords"></textarea>
					</div>
				</div>
				<div class="col-12">
                	<button type="submit" class="btn btn-primary">Update</button>
            	</div>
			</div>
		</form>
	</div>
</div>




@endsection