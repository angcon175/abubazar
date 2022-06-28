<?php 
$selected_area  		= $data['area_query_display'] == null ? 'Bangladesh' : $data['area_query_display'] ;
?>
<div class="breadcrumb-section">
	<ol class="breadcrumb">
		<li><a href="{{ route('home') }}">Home</a></li>
		<li><a href="{{ route('ads.list') }}">All Ads</a></li>
		@if(isset($data['category_name']) && ($data['category_name'] != null))
		<li>{{ $data['category_name'] }}</li>
		@endif
	</ol>					
</div>
<div class="banner">

	<div class="banner-form banner-form-full">
		<form onsubmit="event.preventDefault()">
			<i class="fa fa-map-marker"></i>
			<div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#divisioncitymodal">
				<span>{{ $selected_area }}</span>
			</div>
			<i class="fa fa-tag"></i>
			<div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#exampleModal">
				<span>{{ $data['category_query_display'] ?? 'Select Category' }}</span>
			</div>
			<input type="text" class="form-control banner_search" placeholder="Type Your key word" id="keywords" value="{{ request()->get('keywords') }}">
			<button type="button" class="form-control" value="Search" id="key_search">Search</button>
		</form>
	</div>
</div>

