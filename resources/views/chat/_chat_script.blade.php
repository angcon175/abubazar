<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

{!! Toastr::message() !!}

<script>
	toastr.options.progressBar = true;
	@if(count($errors) > 0)
		@foreach($errors->all() as $error)
			toastr.error("{{ $error }}");
		@endforeach
	@endif
</script>

<script>

bottomline();


setInterval(function()
{ 
	var pId = $('#postid').val();
	var toId = $('#to_user').val();
   getChatData(pId,toId);
}, 3000);

$(document).on('click', '.clist', function(e){

	$('.clist').removeClass('clist-active');
	$(this).addClass('clist-active');
	var html = $(this)[0].outerHTML;
	var pId = $(this).attr('data-pid');
	var toId = $(this).attr('data-toid');
	getChatData(pId,toId);
	$('#postid').val(pId);
	$('#to_user').val(toId);
	
	$('#to_parti').html(html);
	


});



function bottomline(){
	var box = document.getElementById('msg_card_body');
	box.scrollTop = box.scrollHeight;


}


// $(document).on('click', '.openChat', function(e){
$( "#chatModal" ).on('show.bs.modal', function(){
	var pid = $('#chat_dalal').data('pid');
	var toid = $('#chat_dalal').data('toid');
	getChatData(pid,toid);
	bottomline();
});

function getChatData(pId,toId)
{
	var getUrl = `{{ URL::to('/chat/get') }}/`+pId+'/'+toId;
	$.ajax({
		type :'get',
		data : '',
		url  :getUrl,
		async :true,
		beforeSend: function () 
		{
			$("body").css("cursor", "progress");
		},
		success: function (data) 
		{
			//console.log(data.data);
	
		if(data.status == true ){
			$('#msg_card_body').html(data.data);
			//bottomline();
		} else {
			//toastr.error(data.msg);
		}

		},
		complete: function (data) 
		{
			$("body").css("cursor", "default");
			$('#textSmg').focus();

		}
	});
}





$(document).on('click','#sendSmg',function(e){
	var text = $('#textSmg').val();
	var toId = $('#to_user').val();
	if(text == ''){
		$('#textfg').addClass('error');
		$('#textSmg').focus();
	}else
	{
		var pid = $('#postid').val();
		var postUrl = `{{ URL::to('/chat/store') }}`;
		$.ajax({
			type :'post',
			data : $("#frmSmg").serialize(),
			url  :postUrl,
			async :true,
			beforeSend: function () 
			{
				$("body").css("cursor", "progress");
			},
			success: function (data) 
			{

				if(data.status == true ){
					$('#textSmg').val('');

					getChatData(pid,toId);
					bottomline();
				} else {
				
				}
			},
			complete: function (data) 
			{
				$("body").css("cursor", "default");
				$('#textSmg').val('').focus();


			}
		});
	}


})

			
</script>