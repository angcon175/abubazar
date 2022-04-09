<div class="product-item__sidebar-item product-price">
    <h2 class="text--heading-2">{{ changeCurrency($price) }}</h2>
    <form action="{{ route('frontend.add.wishlist') }}" method="POST">
        @csrf

        @if (auth('customer')->check())
            <input type="hidden" name="ad_id" value="{{ $id }}">
            <input type="hidden" name="customer_id" value="{{ auth('customer')->user()->id }}">
            <button class="btn--fav" type="submit">
                @if (isWishlisted($id))
                    <x-svg.heart-icon fill="#00AAFF" stroke="#00AAFF" stroke-width="0.5" />
                @else
                    <x-svg.heart-icon />
                @endif
            </button>
        @else
            <a href="{{ route('customer.login') }}" class="btn--fav login_required" type="button">
                <x-svg.heart-icon />
            </a>
        @endif
    </form>
</div>
