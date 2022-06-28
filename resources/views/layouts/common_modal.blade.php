<?php

$selected_area  = $data['area_query_display'] ?? 'bangladesh' ;
$area_query     = $data['area_query'] ?? 'bangladesh' ;
$get_area_query = $data['get_area_query'] ?? null ;
$get_category_query = $data['get_category_query'] ?? null ;
$category_query = $data['category_query'] ?? null ;

// print_r($area_query);

?>
<!-- category modal -->
<div class="modal all-category-list fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content customized_content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-5 modalcategory">
                        <div class="category-title">
                            <h3><i class="fa fa-tag"></i>Categories</h3>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            @if(isset($data['category']) && count($data['category']) > 0)
                            @foreach($data['category'] as $cat)
                            <a class="nav-link {{ $category_query == $cat->url_slug ? 'active' : '' }}" id="v-pills-{{$cat->url_slug}}-tab" data-toggle="pill" href="#{{$cat->url_slug}}" role="tab" aria-controls="v-pills-{{$cat->url_slug}}" aria-selected="true"><img src="{{$cat->icon_src}}" width="16" height="16">&nbsp; &nbsp;{{ $cat->name }} <i class="fa fa-angle-right float-right"></i></a> 
                            @endforeach
                            @endif
                        </div>
                    </div>
                    <div class="col-md-7 modalsubcategory">
                        <div class="tab-content" id="v-pills-tabContent-category">
                            @if(isset($data['category']) && count($data['category']) > 0)
                            @foreach($data['category'] as $cat)
                            <div class="tab-pane fade {{ $category_query == $cat->url_slug ? 'active show ' : '' }}" id="{{$cat->url_slug}}" role="tabpanel" aria-labelledby="v-pills-{{$cat->url_slug}}-tab">
                                <div class="back-btn backcategory" style="display: none;">
                                    <h5><i class="fa fa-arrow-left"></i>Back</h5>
                                </div>
                                <div class="tabs-cat-list">
                                    <h3><a href="{{route('ads.list', ['area' => $area_query, 'category' => $cat->url_slug])}}"><img src="{{$cat->icon_src}}" width="16" height="16">&nbsp; &nbsp;{{$cat->name}}</a></h3>
                                    <ul>
                                        @if(isset($data['subcategory']) && count($data['subcategory']) > 0)
                                            @foreach($data['subcategory'] as $scat)
                                                @if($cat->pk_no == $scat->parent_id)
                                                <li><a href="{{route('ads.list', ['area' => $area_query, 'category' => $scat->url_slug])}}">{{$scat->name}}</a></li>
                                                @endif
                                            @endforeach
                                        @endif
                                
                                    </ul>
                                </div>
                            </div>
                            @endforeach
                            @endif
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- division and city modal -->
<div class="modal all-category-list fade" id="divisioncitymodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content customized_content">
      <div class="modal-header">
        <h5>Select City or Division | <a href="{{route('ads.list', ['area' => 'bangladesh', 'category' => $get_category_query ])}}" class="" style="font-size: 12px; font-weight: 400;" title="All Bangladesh ">All of Bangladesh</a>
</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
      </button>
  </div>
  <div class="modal-body">
    <div class="row">
      <div class="col-md-5 modalcategory">
        <div class="category-title">

          <h3><i class="fa fa-tag"></i>Cities</h3>
      </div>
      <div class="nav flex-column nav-pills" id="v-pills-tab-city" role="tablist" aria-orientation="vertical">
          @if(isset($data['cities']) && count($data['cities']) > 0 )
          @foreach($data['cities'] as $key => $city)
          <a class="nav-link {{ $data['area_query'] == $city->url_slug ? 'active' : '' }}" id="v-pills-{{$city->url_slug}}-tab" data-toggle="pill" href="#{{$city->url_slug}}" role="tab" aria-controls="v-pills-{{$city->url_slug}}" aria-selected="true">{{$city->name ?? ''}}<i class="fa fa-angle-right float-right"></i></a>
          @endforeach
          @endif
          
      </div>
      <div class="category-title mt-3">
          <h3><i class="fa fa-tag"></i>Division</h3>
      </div>
      <div class="nav flex-column nav-pills" id="v-pills-tab-division" role="tablist" aria-orientation="vertical">
          @if(isset($data['divisions']) && count($data['divisions']) > 0 )
          @foreach($data['divisions'] as $key => $divi)
          <a class="nav-link {{ $data['area_query'] == $divi->url_slug ? 'active' : '' }}" id="v-pills-{{$divi->url_slug}}-tab" data-toggle="pill" href="#{{$divi->url_slug}}" role="tab" aria-controls="v-pills-{{$divi->url_slug}}" aria-selected="true">{{$divi->name}}<i class="fa fa-angle-right float-right"></i></a>
          @endforeach
          @endif

      </div>
  </div>

  <div class="col-md-7 modalsubcategory">
    <div class="tab-content" id="v-pills-tabContent-city">
        @if(isset($data['cities']) && count($data['cities']) > 0 )
        @foreach($data['cities'] as $key => $city)
        <div class="tab-pane fade {{ $data['area_query'] == $city->url_slug ? 'active show' : '' }} " id="{{$city->url_slug}}" role="tabpanel" aria-labelledby="v-pills-{{$city->url_slug}}-tab">
            <div class="back-btn backcategory" style="display: none;">
              <h5><i class="fa fa-arrow-left"></i>Back</h5>
          </div>
          <div class="tabs-cat-list">
              <h3><a href="{{route('ads.list', ['area' => $city->url_slug])}}"><i class="fa fa-map-marker"></i>{{ $city->name }}</a></h3>
              <ul>
                @if(isset($data['areas']) && count($data['areas']) > 0 )
                @foreach($data['areas'] as $ak => $area )
                @if($area->city_pk_no == $city->pk_no)
                <li><a href="{{route('ads.list', ['area' => $area->url_slug, 'category' => $get_category_query ])}}">{{$area->name}}</a></li>
                @endif    
                @endforeach
                @endif
            </ul>
        </div>
    </div>
    @endforeach
    @endif

    @if(isset($data['divisions']) && count($data['divisions']) > 0 )
    @foreach($data['divisions'] as $key => $divi)
    <div class="tab-pane fade" id="{{$divi->url_slug}}" role="tabpanel" aria-labelledby="v-pills-{{$city->url_slug}}-tab">
        <div class="back-btn backcategory" style="display: none;">
          <h5><i class="fa fa-arrow-left"></i>Back</h5>
      </div>
      <div class="tabs-cat-list">
          <h3><a href="{{$divi->url_slug}}"><i class="fa fa-map-marker"></i>{{ $divi->name }}</a></h3>
          <ul>
            @if(isset($data['areas']) && count($data['areas']) > 0 )
            @foreach($data['areas'] as $ak => $area )
            @if($area->division_pk_no == $divi->pk_no)
            <li><a href="{{route('ads.list', ['area' => $divi->url_slug])}}">{{$area->name}}</a></li>
            @endif    
            @endforeach
            @endif
        </ul>
    </div>
</div>
@endforeach
@endif

</div>
</div>
</div>
</div>
</div>
</div>
</div>


<!-- Modal Choose Ads Posting Category-->
<div class="modal fade categoryselectmodal" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <p class="modal-title" id="staticBackdropLabel">Choose any option below</p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
      </button>
  </div>
  <div class="modal-body">
    <div class="section category-ad text-center">
        <div class="row">
            <div class="col-sm-12">
                <a href="{{ route('ad-post',['type' => 'general'])}}">
                    <div class="item">
                        <img src="{{ asset('assets/images/icon/sell.png')}}" alt="images" class="img-fluid">
                        <p>Sell something in Adsclassi</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-12">
                <a href="{{ route('ad-post',['type' => 'jobs'])}}">
                    <div class="item">
                        <img src="{{ asset('assets/images/icon/7.png')}}" alt="images" class="img-fluid">
                        <p>Post a job in Adsclassi</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-12">
                <a href="{{ route('ad-post',['type' => 'property'])}}">
                    <div class="item">
                        <img src="{{ asset('assets/images/icon/3.png')}}" alt="images" class="img-fluid">
                        <p>Property for Rent/Sell</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<!-- End Modal -->
