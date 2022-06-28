@if($data && count($data) > 0 )
	@foreach($data as $key => $txt )


	@if(Auth::user()->id != $txt->created_by)
	<div class="d-flex justify-content-start mb-4">
	<div class="msg_cotainer">
	{{ $txt->message }} {{-- (From-{{ $txt->created_by }})  (To-{{ $txt->to_pk_no }})Prod-{{ $txt->prd_pk_no }}) --}}
	<span class="msg_time_send">{{ date('d M, y, h:i A', strtotime($txt->created_at)) }}</span>
	</div>
	</div>
	@endif

	@if(Auth::user()->id == $txt->created_by)
	<div class="d-flex justify-content-end mb-4">
	<div class="msg_cotainer_send"> 

	{{ $txt->message }} {{-- (From-{{ $txt->created_by }})  (To-{{ $txt->to_pk_no }}) Prod-{{ $txt->prd_pk_no }}) --}}
	<span class="msg_time_send">{{ date('d M, y, h:i A', strtotime($txt->created_at)) }}</span>
	</div>

	</div>
	@endif

@endforeach
@endif