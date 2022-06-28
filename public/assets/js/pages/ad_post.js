/*Model by Brand*/
$(document).on('change','#brand_id', function(){
    var id      = $(this).val();
    var url     = $(this).attr('data-url');
    var pageurl = url+'/'+id;

    $.ajax({
        type:'get',
        url:pageurl,
        async :true,
        beforeSend: function () {
            $("body").css("cursor", "progress");
        },
        success: function (data) {
            if(data != '' ){
                $('#prod_model').html(data);

            } else {
                $('#prod_model').html("<option value=''>data not found</option>");
            }

        },
        complete: function (data) {
            $("body").css("cursor", "default");

        }
    });

});



$(document).on('change', '#location', function(){
    // alert(1);
   var type         = $(this).find('option:selected').attr('data-type');
   var val          = $(this).val();
   var url          = $(this).data('url');
   var pageurl      = url+'/'+val+'/'+type;

   $.ajax({
       type:'get',
       url:pageurl,
       async :true,
       beforeSend: function () {
           $("body").css("cursor", "progress");
       },
       success: function (data) {
           if(data != '' ){
               $('#area_id').html(data);

           } else {
               $('#area_id').html("<option value=''>data not found</option>");
           }

       },
       complete: function (data) {
           $("body").css("cursor", "default");

       }
   });


})


$(document).on('click','.check_otp',function(){

    var sl            = $(this).data('sl');
    var mobile        = $('#mobile'+sl).val();
    var url           = $(this).data('url');
    var pageurl       = url+'/'+mobile+'/'+sl;
    var counter       = 'counter'+sl;
    var resent_otp    = 'resent_otp'+sl;

    if(mobile.length == 11 ){

        $.ajax({
            type:'get',
            url:pageurl,
            async :true,
            beforeSend: function () {
                $("body").css("cursor", "progress");
            },
            success: function (data) {

                if(data){
                    $('.err_mobile'+sl).text('success');
                    $('.check_div_otp'+sl).hide();
                    $('.verify_div_otp'+sl).show();
                    countdown( counter, 5, 0, resent_otp);
                    $('#number_otp_'+sl).text(data);
                    $('#number_otp_'+sl).text(mobile);

                } else {
                    $('.err_mobile'+sl).text("");
                }

            },
            complete: function (data) {
                $("body").css("cursor", "default");

            }
        });
    }else{
        $('.err_mobile'+sl).text("Your number may incorrect");
    }

})


$(document).on('click','.verify_otp',function(){

    var sl          = $(this).data('sl');
    var url         = $(this).data('url');
    var otp         = $('#otp_'+sl).val();
    var pageurl     = url+'/'+otp+'/'+sl;

    if(otp.length == 4 ){

        $.ajax({
            type:'get',
            url:pageurl,
            async :true,
            beforeSend: function () {
                $("body").css("cursor", "progress");
            },
            success: function (data) {

                if(data == true ){
                    $('.err_mobile'+sl).text('OTP verification success');
                    $('#number_otp_div'+sl).hide();
                    $('.verify_div_otp'+sl).hide();
                    $('.check_div_otp'+sl).show();
                    $('.check_otp_add'+sl).text('Verified');

                } else {
                    $('.err_mobile'+sl).text("something wrong");
                }

            },
            complete: function (data) {
                $("body").css("cursor", "default");

            }
        });
    }else{
        $('.err_mobile'+sl).text("Your OTP may incorrect");
    }

})

$(document).on('click', '#edit_number_otp_1', function(e){
    $('.verify_div_otp1').hide();
    $('#number_otp_div1').hide();
    $('.check_div_otp1').show();


})

$(document).on('click','.edit_mobile1', function(e){

    $('.otp_verified1').hide();
    $('.check_otp_add1').show();
    $('#mobile1').removeAttr('readonly');
})

$(document).on('click','.edit_mobile2', function(e){

    $('.otp_verified2').hide();
    $('.check_otp_add2').show();
    $('#mobile2').removeAttr('readonly');
})


function countdown( elementName, minutes, seconds,resent_id_otp )
{

    var element, endTime, hours, mins, msLeft, time;

    function twoDigits( n )
    {
        return (n <= 9 ? "0" + n : n);
    }

    function updateTimer()
    {
        msLeft = endTime - (+new Date);
        if ( msLeft < 1000 ) {
            element.innerHTML = "OTP is over!";
            $('#edit_number_otp_1').removeAttr('disabled');
            $('#resent_otp1').removeAttr('disabled');
            // document.getElementById(resent_id_otp).removeAttribute("disabled");
            document.getElementById('edit_'+resent_id_otp).removeAttribute("disabled");

        } else {
            time = new Date( msLeft );
            hours = time.getUTCHours();
            mins = time.getUTCMinutes();
            element.innerHTML = (hours ? hours + ':' + twoDigits( mins ) : mins) + ':' + twoDigits( time.getUTCSeconds() );
            setTimeout( updateTimer, time.getUTCMilliseconds() + 500 );
        }
    }

    element = document.getElementById( elementName );
    endTime = (+new Date) + 1000 * (60*minutes + seconds) + 500;
    updateTimer();
}



/*HS code by subcategory*/
/* $(document).on('change','#sub_category', function(){
    var scatId      = $(this).val();
    var url     = $(this).attr('data-url');
    var pageurl = url+'/'+scatId;
    getHscode(scatId, url);

});*/











