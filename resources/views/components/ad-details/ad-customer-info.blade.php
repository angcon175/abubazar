<div class="product-item__sidebar-item user-details">
    <div class="user" style="position: relative;">
        <div class="img">
            @if ($customer->image)
                <img src="{{ asset($customer->image) }}" alt="{{$customer->name}}">
            @else
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/1024px-User-avatar.svg.png"
                alt="user-photo" />
            @endif
        </div>
        <div class="info">
            <span class="text--body-4">{{ __('added_by') }}:</span>
            <h2 class="text--body-3-600">
                {{ $customer->name }}
                <span class="email_verify"><i class="fa-solid fa-envelope-circle-check"></i></span>
            </h2>
        </div>
    </div>
    <ul class="contact">
        <!-- <input type="checkbox" id="showCustomerInfo" class="from-control">
        <label for="showCustomerInfo" class="mb-2 customerInfo" id="showLableInfo">Show Customer Info</label> -->
        @if($link == 1)
            <div id="infoShow">
                <li class="contact-item">
                    <span class="icon">
                        <x-svg.envelope-icon />
                    </span>
                    <h6 class="text--body-3">{{ $customer->email }}</h6>
                </li>
                <li class="contact-item">
                    <span class="icon">
                        <x-svg.address-icon />
                    </span>
                    <h6 class="text--body-3">{{ $city->name }}, {{ $town->name }}</h6>
                </li>
            </div>
        @endif
    </ul>
</div>
