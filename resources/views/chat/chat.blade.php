@extends('layouts.app')
@section('content')


<section id="main" class="clearfix page chatbox">
	<div class="container">
		<div class="faq-page">
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Chat</li>
				</ol><!-- breadcrumb -->            
			</div>
			<div class="row justify-content-center chatinterface  mt-15">
				@if($data['rows'] && count($data['rows']) > 0 )
				<div class="col-md-4 chat">
					<div class="card card-list mb-sm-3 mb-md-0 contacts_card">
						<div class="card-body contacts_body">
							<ul class="contacts">
								@if($data['rows'] && count($data['rows']) > 0 )
								@foreach($data['rows'] as $key => $row )

								@if($row->to_pk_no == Auth::user()->id)
								@php
								$parti = $row->from_name ;
								$toId  = $row->from_pk_no;
								@endphp
								@endif
								
								@if($row->from_pk_no == Auth::user()->id)
								@php
								$parti = $row->to_name ; 
								$toId  = $row->to_pk_no;
								@endphp
								
								@endif
								
								<li class="contacts-list clist {{ $key == 0 ? 'clist-active' : '' }} " data-pid="{{ $row->prd_pk_no }}" data-toid="{{ $toId ?? '' }}" style="cursor: pointer;">
									<div class="media p-1">
										<img src="{{ $row->img_path_thumb }}" alt="John Doe" class="mr-1" style="height:60px;">
										<div class="media-body">
											<h5 style="font-size: 16px; color: #000; margin-bottom: 2px; margin-top: 3px;">

												{{ $parti ?? '' }}
												<br>
												{{-- (To-{{ $row->to_pk_no }}) <br>
												(From-{{ $row->from_pk_no }})<br>
												(Prod-{{ $row->prd_pk_no }}) --}}
											</h5>
											<p class="mb-0" style="font-size: 12px; line-height: 16px;">{{ $row->ad_title }} {{-- ({{$row->owner_pk_no}}) --}}</p>
											<p class="mb-0 text-success" style="font-size: 12px; line-height: 16px;">BDT {{ number_format($row->price,2)  }} {{-- 'Chat_pk-'({{ $row->row_pk}}) --}}</p>
											<br>
											{{-- {{$row->created_at}} --}}
										</div>
									</div>
								</li>

								@endforeach
								@endif
								
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-8 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								@if($data['rows'] && count($data['rows']) > 0 )
								<?php $firstRow = $data['rows'][0];  ?>

								@if($firstRow->to_pk_no == Auth::user()->id)
									@php
									$parti = $firstRow->from_name ;
									$toId  = $firstRow->from_pk_no;
									@endphp
								@endif
								
								@if($firstRow->from_pk_no == Auth::user()->id)
									@php
									$parti = $firstRow->to_name ; 
									$toId  = $firstRow->to_pk_no;
									@endphp
								@endif

								<ul id="to_parti">
									<li class="contacts-list clist  " data-pid="{{ $firstRow->prd_pk_no }}" data-toid="{{ $toId ?? '' }}" style="cursor: pointer;">
										<div class="media p-1">
											<img src="{{ $firstRow->img_path_thumb }}" alt="{{ $firstRow->from_name }}" class="mr-1" style="height:60px;">
											<div class="media-body">
												<h5 style="font-size: 16px; color: #000; margin-bottom: 2px; margin-top: 3px;">
													{{ $parti ?? '' }}
													</h5>
												<p class="mb-0" style="font-size: 12px; line-height: 16px;">{{ $firstRow->ad_title }} </p>
												<p class="mb-0 text-success" style="font-size: 12px; line-height: 16px;">BDT {{ number_format($firstRow->price,2)  }} </p>
												<br>

											</div>
										</div>
									</li>
								</ul>
								
								@endif
							</div>
						</div>
						<div class="card-body msg_card_body" id="msg_card_body">

							@if($data['first_text'] && count($data['first_text']) > 0 )
							@foreach($data['first_text'] as $key => $txt )
							
							
							@if(Auth::user()->id != $txt->created_by)
							<div class="d-flex justify-content-start mb-4">
								<div class="msg_cotainer">
									{{ $txt->message }} {{-- (From-{{ $txt->created_by }}) (To-{{ $txt->to_pk_no }})Prod-{{ $txt->prd_pk_no }}) --}}
									<span class="msg_time_send">{{ date('d M, y, h:i A', strtotime($txt->created_at)) }}</span>
								</div>
							</div>
							@endif

							@if(Auth::user()->id == $txt->created_by)
							<div class="d-flex justify-content-end mb-4">
								<div class="msg_cotainer_send"> 

									{{ $txt->message }} {{-- (From-{{ $txt->created_by }}) (To-{{ $txt->to_pk_no }})Prod-{{ $txt->prd_pk_no }}) --}}
									<span class="msg_time_send">{{ date('d M, y, h:i A', strtotime($txt->created_at)) }}</span>
								</div>

							</div>
							@endif

							@endforeach
							@endif

							

						</div>
						<div class="card-footer">
							{!! Form::open([ 'route' => 'chat.store', 'method' => 'post', 'class' => 'form-horizontal', 'id' => 'frmSmg','files' => true , 'novalidate', 'autocomplete' => 'off']) !!}

							@if($data['rows'] && count($data['rows']) > 0 )
							<?php $firstRow = $data['rows'][0];   ?>
							<input type="hidden" name="postid" value="{{ $firstRow->prd_pk_no }}" id="postid" />
							<input type="hidden" name="to_user" value="{{ $firstRow->from_pk_no == Auth::user()->id ? $firstRow->to_pk_no : $firstRow->from_pk_no }}" id="to_user" />
							@endif
							<div class="form-group" id="textfg">
								<div class="input-group">
									<textarea name="message" class="form-control type_msg" placeholder="Type your message..." id="textSmg"></textarea>
									<div class="input-group-append">
										<span class="input-group-text send_btn" id="sendSmg"><i class="fa fa-location-arrow"></i></span>
									</div>
								</div>
							</div>
							{{-- Auth::user()->name .' | '. Auth::user()->id --}}
							{!! Form::close() !!}
						</div>
						
					</div>
				</div>

				@else
				<p>You have no conversition</p>
				@endif
			</div>
		</div><!-- faq-page -->
	</div><!-- container -->

</section>




@endsection

@push('custom_js')
@include('chat._chat_script')

@endpush