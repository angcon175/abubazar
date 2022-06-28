
    <div class="container">
        <div class="section category-ad text-center">
            <div class="row">
                <div class="col-sm-12">
                    <div class="featured-top">
                        <h1>Popular Categories</h1> 
                    </div>
                </div>
            </div>
            <ul class="category-list">  
                @if($data['top_categories'] && count($data['top_categories']) > 0 )
                @foreach($data['top_categories'] as $key => $cat )
                <li class="category-item">
                    <div class="{{$cat->url_slug}}">
                       <a href="{{route('ads.list', ['area' => 'bangladesh', 'category' => $cat->url_slug])}}">
                            <div class="category-icon"><img src="{{ asset($cat->icon_src)}}" alt="images" class="img-fluid" ></div>
                            <span class="category-title" style="color:#000000;">
                            @if($cat->url_slug == 'property')
                                Property
                            @elseif($cat->url_slug == 'electronics-gedgets')
                                Electronics
                            @else
                                {{$cat->name}}
                            @endif
                            </span>
                        <span class="category-quantity" style="color:#000000;">({{$cat->total_post}})</span>
                        </a>    
                    </div>
                </li>
                @endforeach
                @endif
        </ul>               
    </div> 
    </div>