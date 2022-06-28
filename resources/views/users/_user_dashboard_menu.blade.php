<?php 
	$curent_route = request()->route()->getName();
?>
<div class="recommended-cta">					
	<div class="cta">
		<div class="ad-profile section">	
			<div class="user-profile">
				<div class="user">
					<h2>Hello, <a href="#">{{Auth::user()->name ?? '' }}</a></h2>
					<h5>{{Auth::user()->email ?? '' }}</h5>
					<hr>
				</div>
				<div class="favorites-user">
					<div class="my-ads">
						<a href="{{ route('my-ads') }}">{{Auth::user()->total_post ?? 0}}<small>My ADS</small></a>
					</div>
					<div class="favorites">
						<a href="{{ route('favorite-ads')}}">{{Auth::user()->total_favorite ?? 0}}<small>Favorites</small></a>
					</div>
				</div>								
			</div><!-- user-profile -->

			<ul class="user-menu">
				<li class="{{ $curent_route == 'my-dashboard' ? 'active' : '' }} "><a href="{{ route('my-dashboard') }}"><i class="fa fa-chevron-right"></i> My Profile</a></li>
				<li class="{{ $curent_route == 'my-ads' ? 'active' : '' }}"><a href="{{ route('my-ads')}}"><i class="fa fa-chevron-right"></i> My ads</a></li>
				@if(Auth::user()->package_id > 1)
				<li class="{{ $curent_route == 'my-shop' ? 'active' : '' }}"><a href="{{ route('my-shop')}}"><i class="fa fa-chevron-right"></i> My shop</a></li>
				@endif
				<li class="{{ $curent_route == 'favorite-ads' ? 'active' : '' }}"><a href="{{ route('favorite-ads')}}"><i class="fa fa-chevron-right"></i> Favourite ads</a></li>
				<li class="{{ $curent_route == 'promoted-ads' ? 'active' : '' }}"><a href="{{ route('promoted-ads')}}"><i class="fa fa-chevron-right"></i> Promoted Ads</a></li>
				<li class="{{ $curent_route == 'my-membership' ? 'active' : '' }}"><a href="{{ route('my-membership')}}"><i class="fa fa-chevron-right"></i> Membership</a></li>
			
				<li>
					<a class="logoutbtn" href="{{ route('logout') }}"
					onclick="event.preventDefault();
					document.getElementById('logout-form').submit();">
					{{ __('Logout') }}
				</a>
				<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
					@csrf
				</form>
			</li>
		</ul>
	</div>
	<!-- ad-profile -->
</div>
					</div><!-- cta -->