<div class="product-item__badge">
    @if ($status == 'pending')
    <div class="badge badge--warning">
        <x-svg.pending-icon width="20" height="20" stroke="#d32323"/>
        <div class="badge badge--warning">
            {{ __('pending') }}
        </div>
    </div>
    @endif
    @if ($featured)
    <div class="badge badge--warning">
        {{ __('featured') }}
        {{-- <x-svg.check-icon width="16" height="16" stroke="#d32323" />
        <div>
            {{ __('featured') }}
        </div> --}}
    </div>
    @endif
    @if (hasMemberBadge($customerid))
        <div class="badge badge--danger">
            <span class="icon">
                <x-svg.membership-badge-icon />
            </span>
            {{ __('member') }}
        </div>
    @endif
    @if ($verifiedseller)
        <div class="badge badge--success">
            <span class="icon">
                <x-svg.verified-seller-badge-icon/>
            </span>
            {{ __('verified_seller') }}
        </div>
    @endif
</div>
