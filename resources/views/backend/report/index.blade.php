@extends('layouts.backend.admin')
@section('title')
{{ __('website_setting') }}
@endsection
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title" style="line-height: 36px;">Ads Reports</h3>
				</div>
				<div class="card-body table-responsive p-0">
					<table class="table table-hover text-nowrap">
						<thead>
							<tr>
								<th>SL</th>
								<th>Ads Name</th>
								<th>Report</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							@if(count($reports))
                                 @foreach($reports as $key=> $row)
                                  <tr>
                                  	<td>{{ ++$key }}</td>
                                  	<td><a target="_blank" href="{{ route('frontend.addetails',$row->slug) }}">{{ $row->title }}</a></td>
                                  	<td>{{ $row->report_field }}</td>
                                  	<td>{{ Str::limit($row->description, 50) }}</td>
                                  	<td>
                                  		<a href="{{ route('admin.reports.view', $row->id) }}" class="btn bg-info"><i class="fas fa-eye"></i></a>
                                  		<a href="{{ route('admin.reports.destroy', $row->id) }}" onclick="return confirm('Are you sure want to delete this item?')" class="btn bg-danger"><i class="fas fa-trash"></i></a>
                                  	</td>
                                  </tr>
                                 @endforeach
                             @else
                        		<td colspan="4" class="text-center">Reports not found!</td>
                        	@endif
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection