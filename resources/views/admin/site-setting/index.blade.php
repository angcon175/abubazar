@extends('admin.layout.master')
@section('Web Setting','open')
@section('site-setting','active')
@section('title') Settings @endsection
@section('page-name') Settings @endsection
@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">@lang('admin.dashboard')  </a></li>
<li class="breadcrumb-item active">Settings</li>
@endsection
@section('content')
<section>
    <div class="row mt-3">
        <div class="col-sm-2">
            <div class="card setting_menu">
                <div class="card-body">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link {{ Request::routeIs('site.website') ? 'active' : '' }}" href="{{ route('site.website') }}">Website</a>
                        <a class="nav-link {{ Request::routeIs('site.system') ? 'active' : '' }}" href="{{ route('site.system') }}">System</a>
                        <a class="nav-link {{ Request::routeIs('site.mail') ? 'active' : '' }}" href="{{ route('site.mail') }}">Mail</a>
                        <a class="nav-link {{ Request::routeIs('site.payment') ? 'active' : '' }}" href="{{ route('site.payment') }}">Payment</a>
                        <a class="nav-link {{ Request::routeIs('site.seo') ? 'active' : '' }}" href="{{ route('site.seo') }}">SEO</a>
                        <a class="nav-link {{ Request::routeIs('site.cms') ? 'active' : '' }}" href="{{ route('site.cms') }}">CMS</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-10 setting_content" style="padding:0px;">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade {{ Request::routeIs('site.website') ? 'show active' : '' }}">
                    @yield('website')
                </div>
            </div>
            <div class="tab-pane fade {{ Request::routeIs('site.system') ? 'show active' : '' }}" id="system"
                role="tabpanel" aria-labelledby="homee">
                  @yield('system')
            </div>
            <div class="tab-pane fade {{ Request::routeIs('site.mail') ? 'show active' : '' }}" id="mail"
                role="tabpanel" aria-labelledby="homee">
                  @yield('mail')
            </div>
            <div class="tab-pane fade {{ Request::routeIs('site.payment') ? 'show active' : '' }}" id="payment"
                role="tabpanel" aria-labelledby="homee">
                  @yield('payment')
            </div>
            <div class="tab-pane fade {{ Request::routeIs('site.seo') ? 'show active' : '' }}" id="seo"
                role="tabpanel" aria-labelledby="homee">
                  @yield('seo')
            </div>
            <div class="tab-pane fade {{ Request::routeIs('site.cms') ? 'show active' : '' }}" id="cms"
                role="tabpanel" aria-labelledby="homee">
                  @yield('cms')
            </div>
        </div>
    </div>
</section>
@endsection