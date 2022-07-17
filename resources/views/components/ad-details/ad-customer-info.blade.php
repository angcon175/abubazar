<div class="product-item__sidebar-item user-details">
    <div class="user">
        <div class="img">
            @if ($customer->image)
                <img src="{{ asset($customer->image) }}" alt="">
            @else
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/1024px-User-avatar.svg.png"
                alt="user-photo" />
            @endif
        </div>
        <div class="info">
            <span class="text--body-4">{{ __('added_by') }}:</span>
            <h2 class="text--body-3-600"> {{ $customer->name }} </h2>
        </div>
    </div>
    <ul class="contact">
        <input type="checkbox" id="showCustomerInfo" class="from-control">
        <label for="showCustomerInfo" class="mb-2 customerInfo" id="showLableInfo">Show Customer Info</label>
        <div id="infoShow" style="display: none;">
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
            @if (!is_null($link))
                <li class="contact-item">
                    <span class="icon">
                        <x-svg.globe-icon />
                    </span>
                    <a target="_blank" href="{{ $link }}" class="text--body-3">
                        {{ $link }}
                        <span class="icon">
                        <x-svg.target-blank-icon />
                        </span>
                    </a>
                </li>
            @endif
        </div>
    </ul>
</div>
