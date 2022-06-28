<?php $counter = 0 ;?>
@if(Auth::user())
<?php 
$counter =  \DB::table('ss_chat')->where('is_seen','0')->where('to_pk_no',Auth::user()->id)->count();

?>
@endif
<header id="header" class="clearfix">
    @php
        $setting = App\SiteSetting::first();
    @endphp
    <!-- navbar -->
    <nav class="navbar navbar-default navbar-expand-lg">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tr-mainmenu" aria-controls="tr-mainmenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><i class="fa fa-align-justify"></i></span>
            </button>
            @if(!empty($setting))
            <a class="navbar-brand" href="{{route('home')}}"><img class="img-fluid" src="{{ asset($setting->logo) }}" alt="Logo" width="120"></a>
            @else
            <a class="navbar-brand" href="{{route('home')}}"><img class="img-fluid" src="{{ asset('assets/images/logo.png') }}" alt="Logo"></a>
            @endif
            

            <div class="collapse navbar-collapse" id="tr-mainmenu">
                <ul class="nav navbar-nav">
                    <li><a href="{{route('ads.list')}}">All Ads</a></li>
                </ul>
            </div>
            <div class="nav-right">
                <!-- sign-in -->    
                <ul class="chat">
                    <li><a href="{{route('chat')}}"> <i class="fa fa-comments {{ $counter > 0 ? 'has-txt-icon' : '' }} "></i>@if($counter > 0 )<span class="chat-counter has-txt">{{ $counter }}</span> @endif</a></li>
                </ul>               
                <ul class="sign-in">
                    @guest
                    <li><i class="fa fa-user"></i></li>
                    <li><a href="{{route('login')}}">Login</a></li>
                    <li><a href="{{route('register')}}">Register</a></li>
                    @else
                    <li><i class="fa fa-user"></i></li>
                    <li class="hidebackslash"><a href="{{route('my-dashboard')}}">My Account</a></li>
                    @endguest
                </ul><!-- sign-in -->                   
                @guest
                <a href="{{route('login')}}" class="btn">Post Free Ad</a> 
                @else 
                <a href="javascript:void(0)" data-toggle="modal" data-target="#staticBackdrop" class="btn">Post Free Ad</a>               
                @endguest
            </div>

        </div><!-- container -->
    </nav><!-- navbar -->
</header>
