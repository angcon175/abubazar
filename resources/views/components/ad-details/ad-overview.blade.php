<div>
    <h2 class="text--body-1">{{ __('overview') }}</h2>
    <ul class="overview-details">
        @if($ad->category_id == 11)
            @php
                $businessfunction = DB::table('business_functions')->where('id', $ad->businessfunction_id)->first();
                $minimumqualification = DB::table('minimum_qualifications')->where('id', $ad->minimum_qualification_id)->first();
                $educationalspecialization = DB::table('educational_specializations')->where('id', $ad->educational_specialization_id)->first();
            @endphp
            <li class="overview-details__item">
                <span class="text--body-3 title">Role Designation:</span>
                <span class="text--body-3 info">{{ $ad->role_designation }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">Business Function :</span>
                <span class="text--body-3 info">{{ $businessfunction->name ?? '' }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">Minimum Qualification :</span>
                <span class="text--body-3 info">{{ $minimumqualification->name ?? '' }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">Educational Specialization :</span>
                <span class="text--body-3 info">{{ $educationalspecialization->name ?? '' }}</span>
            </li>
            @if($ad->required_experience)
                <li class="overview-details__item">
                    <span class="text--body-3 title">Required Experience :</span>
                    <span class="text--body-3 info">{{ $ad->required_experience }} Years</span>
                </li>
            @endif
            <li class="overview-details__item">
                <span class="text--body-3 title">Skills :</span>
                <span class="text--body-3 info">{{ $ad->skills }}</span>
            </li>
            @if($ad->mixium_age)
                <li class="overview-details__item">
                    <span class="text--body-3 title">Mixium Age :</span>
                    <span class="text--body-3 info">{{ $ad->mixium_age }}</span>
                </li>
            @endif
            <li class="overview-details__item">
                <span class="text--body-3 title">Application Deadline :</span>
                <span class="text--body-3 info">{{ $ad->application_deadline }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">Reciver Employeer Name :</span>
                <span class="text--body-3 info">{{ $ad->company_employeer_name }}</span>
            </li>
            @if($ad->receive_response)
                <li class="overview-details__item">
                    <span class="text--body-3 title">Receive Response :</span>
                    <span class="text--body-3 info">{{ $ad->receive_response}}</span>
                </li>
            @endif
        @else
            <li class="overview-details__item">
                <span class="text--body-3 title">{{ __('conditions') }}:</span>
                <span class="text--body-3 info">{{ $ad->condition ?? '' }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">{{ __('brand') }}:</span>
                <span class="text--body-3 info">{{ $ad->brand->name  ?? '' }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">{{ __('model') }}:</span>
                <span class="text--body-3 info">{{ $ad->model ?? '' }}</span>
            </li>
            <li class="overview-details__item">
                <span class="text--body-3 title">{{ __('authenticity') }}:</span>
                <span
                    class="text--body-3 info">{{ $ad->authenticity ? "Orginal":"Refurbished"  }}</span>
            </li>
        @endif
    </ul>
</div>