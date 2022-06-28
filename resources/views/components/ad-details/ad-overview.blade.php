<div>
    <h2 class="text--body-1">{{ __('overview') }}</h2>
    <ul class="overview-details">
        <li class="overview-details__item">
            <span class="text--body-3 title">{{ __('conditions') }}:</span>
            <span class="text--body-3 info">{{ $ad->condition }}</span>
        </li>
        <li class="overview-details__item">
            <span class="text--body-3 title">{{ __('brand') }}:</span>
            <span class="text--body-3 info">{{ $ad->brand->name }}</span>
        </li>
        <li class="overview-details__item">
            <span class="text--body-3 title">{{ __('model') }}:</span>
            <span class="text--body-3 info">{{ $ad->model }}</span>
        </li>
        <li class="overview-details__item">
            <span class="text--body-3 title">{{ __('authenticity') }}:</span>
            <span
                class="text--body-3 info">{{ $ad->authenticity ? "Orginal":"Refurbished"  }}</span>
        </li>
    </ul>
</div>
