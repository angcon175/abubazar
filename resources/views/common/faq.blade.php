@extends('layouts.app')
@section('content')
<section id="main" class="clearfix page">
	<div class="container">
		<div class="faq-page">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="{{url('/')}}">Home</a></li>
					<li>FAQ</li>
				</ol><!-- breadcrumb -->						
				<!-- <h2 class="title">Dalal ads FAQ</h2> -->
			</div>

			<div class="tr-accordion"  id="accordion">
				@foreach($faqs as $row)
				<div class="card">
					<div class="card-header" id="heading-1">
						<button class="<?php if($loop->iteration != 1){echo 'collapsed';}?>" data-toggle="collapse" data-target="#collapse-1{{$loop->iteration }}"
						<?php if($loop->iteration == 1){echo "aria-expanded='true'";}else{echo "aria-expanded='false'";}?>  aria-controls="collapse-1">
						{{$row->question}}
						</button>
					</div>

					<div id="collapse-1{{ $loop->iteration }}" class="collapse <?php if($loop->iteration == 1){echo 'show';}else{echo '';}?>" aria-labelledby="heading-1"  data-parent="#accordion">
						<div class="card-body">
							<p>{{$row->answer}}</p>
						</div>
					</div>
				</div>
				@endforeach
			</div><!-- /.accordion -->	
		</div><!-- faq-page -->
	</div><!-- container -->
	<section id="something-sell" class="clearfix parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h2 class="title">Did Not find your answer yet? Still need help ?</h2>
					<h4>Send us a note to Help Center</h4>
					<a href="{{route('contact-us')}}" class="btn btn-primary">Contact Us</a>
				</div>
			</div><!-- row -->
		</div><!-- contaioner -->
	</section><!-- something-sell -->
</section>


@endsection

@push('custom_footer_script')
   
@endpush