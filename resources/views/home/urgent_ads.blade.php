 <div class="container">
            <!-- featureds -->
            <div class="section featureds">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="featured-top">
                            <h1>Urgent Ads</h1>
                        </div>
                    </div>
                </div>
                <!-- featured-slider -->
                <div class="featured-slider urgent">
                    <div id="featured-slider-two" >
                        @if($data['urgent_ads'] && count($data['urgent_ads']) > 0 )
                        @foreach($data['urgent_ads'] as $key => $ad)
                        <div class="featured">
                            <div class="featured-image">
                                <a href="{{route('ad.details',['pk_no' => $ad->pk_no, 'url_slug' => $ad->url_slug])}}"><img src="{{ asset('assets/images/default-load.png')}}"  data-src="{{ asset($ad->img_path_thumb)}}" alt="{{$ad->ad_title}}" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            <div class="ad-info">
                                <h3 class="item-price">TK {{number_format($ad->price,2)}}</h3>
                                <h4 class="item-title"><a href="{{route('ad.details',['pk_no' => $ad->pk_no, 'url_slug' => $ad->url_slug])}}">{{ $ad->ad_title }}</a></h4>
                                <div class="item-cat">
                                    <span><a href="{{route('ad.details',['pk_no' => $ad->pk_no, 'url_slug' => $ad->url_slug])}}">{{ $ad->subcategory->name ?? '' }}</a></span> 
                                </div>
                            </div>
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="{{route('ad.details',['pk_no' => $ad->pk_no, 'url_slug' => $ad->url_slug])}}">{{date('d M Y h:i A',strtotime($ad->created_at))}} </a></span>
                                </div>                                  
                                
                                <div class="user-option pull-right">
                                    <a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" title="{{$ad->area->name }}, {{ $ad->city_division == 'city' ? $ad->area->city->name : '' }} {{ $ad->city_division == 'division' ? $ad->area->division->name : '' }}"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="{{$ad->user->seller_type ?? ''}}"><i class="fa fa-user"></i> </a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>