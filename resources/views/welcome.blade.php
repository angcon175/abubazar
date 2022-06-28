<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Theme Region">
    <meta name="description" content="">
    <title>Adsclassi.com | The Online Mega Mall in Bangladesh</title>
   <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('/assets/css/bootstrap.min.css') }}" >
    <link rel="stylesheet" href="{{ asset('/assets/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/icofont.css') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/owl.carousel.css') }}">  
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('/assets/css/slidr.css') }}">     
    <link rel="stylesheet" href="{{ asset('/assets/css/main.css') }}">  
    <link rel="stylesheet" href="{{ asset('/assets/css/responsive.css') }}">
    <!-- font -->
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Signika+Negative:400,300,600,700' rel='stylesheet' type='text/css'>
    <!-- icons -->
    <link rel="icon" href="images/ico/favicon.ico"> 
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset('assets/images/ico/apple-touch-icon-144-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{ asset('assets/images/ico/apple-touch-icon-114-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{ asset('assets/images/ico/apple-touch-icon-72-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="{{ asset('assets/images/ico/apple-touch-icon-57-precomposed.png')}}">
    <!-- icons -->
  </head>
  <body>
    <!-- header -->
    <header id="header" class="clearfix">
        <!-- navbar -->
        <nav class="navbar navbar-default navbar-expand-lg">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tr-mainmenu" aria-controls="tr-mainmenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fa fa-align-justify"></i></span>
                </button>
                <a class="navbar-brand" href="index.html"><img class="img-fluid" src="{{ asset('assets/images/logo.png') }}" alt="Logo"></a>

                <div class="collapse navbar-collapse" id="tr-mainmenu">
                    <ul class="nav navbar-nav">
                        <li><a href="categories.html">All Ads</a></li>
                    </ul>
                </div>
                <div class="nav-right">
                    <!-- sign-in -->    
                    <ul class="chat">
                        <li><a href="chat.html"><i class="fa fa-comments"></i>Chat</a></li>
                    </ul>               
                    <ul class="sign-in">
                        <li><i class="fa fa-user"></i></li>
                        <li><a href="signin.html">Login</a></li>
                        <li><a href="signup.html">Register</a></li>
                    </ul><!-- sign-in -->                   

                    <a href="#" data-toggle="modal" data-target="#staticBackdrop" class="btn">Post Free Ad</a>                  
                </div>

            </div><!-- container -->
        </nav><!-- navbar -->
    </header><!-- header -->
    <!-- home-one-info -->
    <section id="home-one-info" class="clearfix home-one">
        <!-- world -->
        <div id="banner-two" class="parallax-section">
            <div class="row text-center">
                <!-- banner -->
                <div class="col-sm-12 ">
                    <div class="banner">
                        <h1 class="title"><span style="color:#fff;">Dalalbd.com</span> The Perfect Marketplace</h1>
                        <h3>
                            <span id="break">Find Everything for Buy and Sell</span> Ex.
                            <span class="typewrite" data-period="2000" data-type='[ "Cars, Phones", "Computers, Printers", "Property, Houses", "Job and more" ]'> <span class="wrap"></span></span>
                        </h3>
                        <!-- banner-form -->
                        <div class="banner-form">
                            <form action="#">
                                <i class="fa fa-map-marker"></i>
                                <div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#divisioncitymodal">
                                <span>Select Location</span>
                                </div>
                                <i class="fa fa-tag"></i>
                                <div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#exampleModal">
                                <span>Select Category</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Type Your key word">
                                <button type="submit" class="form-control" value="Search">Search</button>
                            </form>
                        </div><!-- banner-form -->
                    </div>
                </div><!-- banner -->
            </div><!-- row -->
        </div><!-- world -->
        <!-- Brand-logo  -->
        <div class="container brand-sec">
            <!-- featureds -->
            <div class="section featureds">
                <!-- featured-slider -->
                <div class="featured-slider">
                    <div id="featured-slider-three" >
                        <div class="featured shadow-sm rounded">
                             <a href="#"><img src="{{ asset('assets/images/category/dalal-food.png')}}" alt="images"></a>
                        </div>
                        <div class="featured shadow-sm rounded">
                            <a href="#"><img src="{{ asset('assets/images/category/dalal-ride.png')}}" alt="images"></a>
                        </div>
                        <div class="featured shadow-sm rounded">
                            <a href="#"><img src="{{ asset('assets/images/category/dalal-prime.png')}}" alt="images"></a>
                        </div>
                        <div class="featured shadow-sm rounded">
                            <a href="#"><img src="{{ asset('assets/images/category/dalal-bd.png')}}" alt="images"></a>
                        </div>
                    </div><!-- featured-slider -->
                </div>
            </div>
        </div>
        <div class="container">
            <div class="section category-ad text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="featured-top">
                            <h4>Popular Categories</h4>
                        </div>
                    </div>
                </div>
                <ul class="category-list">  
                    <li class="category-item">
                        <div class="properties">
                           <a href="categories.html">
                                <div class="category-icon"><img src="{{ asset('assets/images/icon/3.png')}}" alt="images" class="img-fluid"></div>
                                <span class="category-title" style="color:#008000;">Dalal Properties</span>
                                <span class="category-quantity" style="color:#008000;">(212)</span>
                            </a>    
                        </div>
                    </li><!-- category-item -->
                    <li class="category-item">
                      <div class="properties">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/7.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title" style="color:#008000;">Dalal Jobs</span>
                            <span class="category-quantity" style="color:#008000;">(124)</span>
                        </a>
                       </div>
                    </li><!-- category-item -->
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/1.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Cars & Vehicles</span>
                            <span class="category-quantity">(1298)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/2.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Electrics & Gedgets</span>
                            <span class="category-quantity">(76212)</span>
                        </a>
                    </li><!-- category-item -->
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/4.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Sports & Games</span>
                            <span class="category-quantity">(972)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/5.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Fshion & Beauty</span>
                            <span class="category-quantity">(1298)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/6.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Pets & Animals</span>
                            <span class="category-quantity">(76212)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/9.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Home Appliances</span>
                            <span class="category-quantity">(1298)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/10.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Matrimony Services</span>
                            <span class="category-quantity">(76212)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/11.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Music & Arts</span>
                            <span class="category-quantity">(212)</span>
                        </a>
                    </li><!-- category-item -->
                    
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/12.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Miscellaneous </span>
                            <span class="category-quantity">(1298)</span>
                        </a>
                    </li><!-- category-item -->
                    <li class="category-item">
                        <a href="categories.html">
                            <div class="category-icon"><img src="{{ asset('assets/images/icon/8.png')}}" alt="images" class="img-fluid"></div>
                            <span class="category-title">Books & Magazines</span>
                            <span class="category-quantity">(972)</span>
                        </a>
                    </li><!-- category-item -->                 
                </ul>               
            </div><!-- category-ad -->  
        
            <!-- featureds -->
            <div class="section featureds">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="featured-top">
                            <h4>Urgent Ads</h4>
                        </div>
                    </div>
                </div>
                
                <!-- featured-slider -->
                <style type="text/css">.urgent .featured-image{overflow: hidden;}</style>
                <div class="featured-slider urgent">
                    <div id="featured-slider-two" >
                        <!-- featured -->
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/1.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$800.00</h3>
                                <h4 class="item-title"><a href="#">Apple MacBook Pro with Retina Display</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Electronics & Gedgets</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/2.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$25000.00</h3>
                                <h4 class="item-title"><a href="#">2018 Bugatti Veyron Sport Middlecar</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Cars & Vehicles</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/3.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$250.00 <span class="negotiable">(Negotiable)</span></h3>
                                <h4 class="item-title"><a href="#">Vivster Acoustic Guitar</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Music & Art</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/trending/4.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$50.00</h3>
                                <h4 class="item-title"><a href="#">Rick Morton- Magicius Chase</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Books & Magazines</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/trending/3.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$380.00</h3>
                                <h4 class="item-title"><a href="#">Samsung Galaxy S6 Edge</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Electronics & Gedgets</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        <!-- featured -->
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/1.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$800.00</h3>
                                <h4 class="item-title"><a href="#">Apple MacBook Pro with Retina Display</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Electronics & Gedgets</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/2.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$25000.00</h3>
                                <h4 class="item-title"><a href="#">2018 Bugatti Veyron Sport Middlecar</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Cars & Vehicles</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                        <div class="featured">
                            <div class="featured-image">
                                <a href="details.html"><img src="{{ asset('assets/images/featured/3.jpg')}}" alt="" class="img-fluid"></a>
                                <span class="featured-ad">Urgent</span>
                            </div>
                            
                            <!-- ad-info -->
                            <!-- ad-info -->
                            <div class="ad-info">
                                <h3 class="item-price">$250.00 <span class="negotiable">(Negotiable)</span></h3>
                                <h4 class="item-title"><a href="#">Vivster Acoustic Guitar</a></h4>
                                <div class="item-cat">
                                    <span><a href="#">Music & Art</a></span> 
                                </div>
                            </div><!-- ad-info -->
                            
                            <!-- ad-meta -->
                            <div class="ad-meta">
                                <div class="meta-content">
                                    <span class="dated"><a href="#">7 Jan 10:10 pm </a></span>
                                </div>                                  
                                <!-- item-info-right -->
                                <div class="user-option pull-right">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Los Angeles, USA"><i class="fa fa-map-marker"></i> </a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Individual"><i class="fa fa-user"></i> </a>                                           
                                </div><!-- item-info-right -->
                            </div><!-- ad-meta -->
                        </div><!-- featured -->
                        
                    </div><!-- featured-slider -->
                </div><!-- #featured-slider -->
            </div><!-- featureds -->
        </div><!-- container -->
    </section><!-- home-one-info -->
     <!-- location sec -->
            <div class="section our-location">
                <div class="container">
                    <div class="cities">
                    <div class="section-title">
                        <h4>Best Rated Locations</h4>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <!-- location 1 -->
                                <div class="col-md-3">
                                    <a href="#">
                                      <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/dhaka.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Dhaka</h4>
                                        </div>
                                      </div>
                                   </a>
                                </div>
                                <!-- location 2 -->
                                <div class="col-md-3">
                                    <a href="#">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/chittagong.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Chattogram</h4>
                                        </div>
                                    </div>
                                   </a>
                                </div>
                                <!-- location 3 -->
                                <div class="col-md-3">
                                    <a href="#">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/sylhet.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Sylhet</h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!-- location 4 -->
                                <div class="col-md-3">
                                    <a href="">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/khulna.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Khulna</h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!-- location 5 -->
                                <div class="col-md-3">
                                    <a href="">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/rajshahi.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Rajshahi</h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!-- location 6 -->
                                <div class="col-md-3">
                                    <a href="">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/rangpur.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Rangpur</h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!-- location 7 -->
                                <div class="col-md-3">
                                    <a href="">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/barisal.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Barishal</h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                                <!-- location 8 -->
                                <div class="col-md-3">
                                    <a href="">
                                    <div class="location-card">
                                        <div class="location-box">
                                            <img src="{{ asset('assets/images/location/mymensingh.jpg')}}" alt="">
                                        </div>
                                        <div class="location-article">
                                            <h2>52,155</h2>
                                            <h4><i class="fa fa-map-marker"></i>Mymensingh </h4>
                                        </div>
                                    </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                   </div>
                </div>
            </div>  
        <section id="something-sell" class="clearfix parallax-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h2 class="title">Do you have something-sell?</h2>
                        <h4>Post your ad for free on dalalbd.com</h4>
                        <a href="#" data-toggle="modal" data-target="#staticBackdrop" class="btn btn-primary">Post Free Ad</a>
                    </div>
                </div><!-- row -->
            </div><!-- contaioner -->
        </section><!-- something-sell -->

    <!-- footer -->
    <footer id="footer" class="clearfix">
        <!-- footer-top -->
        <section class="footer-top clearfix">
            <div class="container">
                <div class="row">
                    <!-- footer-widget -->
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget">
                            <h3>Quik Links</h3>
                            <ul>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="contact-us.html">Contact Us</a></li>
                                <li><a href="terms-conditions.html">Terms & Conditions</a></li>
                                <li><a href="privacy-policy.html">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div><!-- footer-widget -->

                    <!-- footer-widget -->
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget">
                            <h3>How to sell fast</h3>
                            <ul>
                                <li><a href="how-to-sell-fast.html">How to sell fast</a></li>
                                <li><a href="get-membership.html">Membership</a></li>
                                <li><a href="my-ads.html">Promote your ad</a></li>
                                <li><a href="faq.html">FAQ</a></li>
                            </ul>
                        </div>
                    </div><!-- footer-widget -->

                    <!-- footer-widget -->
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget social-widget">
                            <h3>Follow us on</h3>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook-official"></i>Facebook</a></li>
                                <li><a href="#"><i class="fa fa-twitter-square"></i>Twitter</a></li>
                                <li><a href="#"><i class="fa fa-youtube-play"></i>youtube</a></li>
                            </ul>
                        </div>
                    </div><!-- footer-widget -->

                    <!-- footer-widget -->
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget news-letter">
                            <h3>Newsletter</h3>
                            <p>Dalalbd.com an e-commerce and ad-posting corporation based in Dhaka, Bangladesh!</p>
                            <!-- form -->
                            <form action="#">
                                <input type="email" class="form-control" placeholder="Your email id">
                                <button type="submit" class="btn btn-primary">Subscribe Now</button>
                            </form><!-- form -->            
                        </div>
                    </div><!-- footer-widget -->
                </div><!-- row -->
            </div><!-- container -->
        </section><!-- footer-top -->

        
        <div class="footer-bottom clearfix text-center">
            <div class="container">
                <p>Copyright &copy; dalalbd.com 2020. Developed by <a target="_blank" href="https://webdevs4u.com/">webdevs4u</a></p>
            </div>
        </div><!-- footer-bottom -->
    </footer><!-- footer -->
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
                  <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><i class="fa fa-plug"></i> Electronics <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-car-tab" data-toggle="pill" href="#v-pills-car" role="tab" aria-controls="v-pills-car" aria-selected="false"><i class="fa fa-car"></i>Cars & Vehicles <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Property-tab" data-toggle="pill" href="#v-pills-Property" role="tab" aria-controls="v-pills-Property" aria-selected="false"><i class="fa fa-home"></i>Property <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Appli-tab" data-toggle="pill" href="#v-pills-Appli" role="tab" aria-controls="v-pills-Appli" aria-selected="false"><i class="fa fa-suitcase"></i>Home Appliances <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Pets-tab" data-toggle="pill" href="#v-pills-Pets" role="tab" aria-controls="v-pills-Pets" aria-selected="false"><i class="fa fa-paw"></i>Pets & Animals <i class="fa fa-angle-right float-right"></i></a>
                  
                  <a class="nav-link" id="v-pills-Kids-tab" data-toggle="pill" href="#v-pills-Kids" role="tab" aria-controls="v-pills-Kids" aria-selected="false"><i class="fa fa-futbol-o"></i>Hobby, Sport & Kids <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-service-tab" data-toggle="pill" href="#v-pills-service" role="tab" aria-controls="v-pills-service" aria-selected="false"><i class="fa fa-life-ring"></i>Services<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Jobs-tab" data-toggle="pill" href="#v-pills-Jobs" role="tab" aria-controls="v-pills-Jobs" aria-selected="false"><i class="fa fa-suitcase"></i>Jobs<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-edu-tab" data-toggle="pill" href="#v-pills-edu" role="tab" aria-controls="v-pills-edu" aria-selected="false"><i class="fa fa-graduation-cap"></i>Education <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Busin-tab" data-toggle="pill" href="#v-pills-Busin" role="tab" aria-controls="v-pills-Busin" aria-selected="false"><i class="fa fa-industry"></i>Business & Industry <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Food-tab" data-toggle="pill" href="#v-pills-Food" role="tab" aria-controls="v-pills-Food" aria-selected="false"><i class="fa fa-tree"></i>Food & Agriculture<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-IT-tab" data-toggle="pill" href="#v-pills-IT" role="tab" aria-controls="v-pills-IT" aria-selected="false"><i class="fa fa-laptop"></i>IT-Solution <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-archive-tab" data-toggle="pill" href="#v-pills-archive" role="tab" aria-controls="v-pills-archive" aria-selected="false"><i class="fa fa-archive"></i>Others <i class="fa fa-angle-right float-right"></i></a>
                </div>
              </div>
              <div class="col-md-7 modalsubcategory">
                <div class="tab-content" id="v-pills-tabContent">
                  <div class="tab-pane fade show" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-plug"></i>Electronics</a></h3>
                      <ul>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Mobile Phone</a></li>
                        <li><a href="#">Mobile Phone Accessories</a></li>
                        <li><a href="#">Computers & Tablets</a></li>
                        <li><a href="#">Computer Accessories</a></li>
                        <li><a href="#">TVs</a></li>
                        <li><a href="#">Freeze</a></li>
                        <li><a href="#">Air Conditioner (AC</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">TV & Video Accessories</a></li>
                        <li><a href="#">Audio & MP3</a></li>
                        <li><a href="#">Lighting</a></li>
                        <li><a href="#">Video Games & Consoles</a></li>
                        <li><a href="#">Others Electronics</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-car" role="tabpanel" aria-labelledby="v-pills-car-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-car"></i>Cars & Vehicles</a></h3>
                      <ul>
                        <li><a href="#">Cars</a></li>
                        <li><a href="#">Motorbikes & Vehicles</a></li>
                        <li><a href="#">Bicycles And Three Wheelers</a></li>
                        <li><a href="#">Tractors & Heavy-Duty</a></li>
                        <li><a href="#">Auto Parts & Accessories</a></li>
                        <li><a href="#">Boats & Water Transport</a></li>
                        <li><a href="#">Auto Services</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Property" role="tabpanel" aria-labelledby="v-pills-Property-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-home"></i>Property</a></h3>
                      <ul>
                        <li><a href="#">Apartments & Flats</a></li>
                        <li><a href="#">Houses</a></li>
                        <li><a href="#">Plots & Land</a></li>
                        <li><a href="#">Rooms</a></li>
                        <li><a href="#">Garages</a></li>
                        <li><a href="#">Commercial Property</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Appli" role="tabpanel" aria-labelledby="v-pills-Appli-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-suitcase"></i>Home Appliances</a></h3>
                      <ul>
                        <li><a href="#">Furniture</a></li>
                        <li><a href="#">Home Appliances</a></li>
                        <li><a href="#">Freeze</a></li>
                        <li><a href="#">Electricity, AC & Bathroom</a></li>
                        <li><a href="#">Others Home Items</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Clothing" role="tabpanel" aria-labelledby="v-pills-Clothing-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-female"></i>Clothing</a></h3>
                      <ul>
                        <li><a href="#">Man</a></li>
                        <li><a href="#">Woman</a></li>
                        <li><a href="#">Kids</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Health" role="tabpanel" aria-labelledby="v-pills-Health-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-bath"></i>Health & Beauty</a></h3>
                      <ul>
                        <li><a href="#">Health & Beauty Items</a></li>
                        <li><a href="#">Jewellery</a></li>
                        <li><a href="#">Watches</a></li>
                        <li><a href="#">Shoes & Footwear</a></li>
                        <li><a href="#">Other Personal Items</a></li>
                        <li><a href="#">Wholesale-Bulk</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Pets" role="tabpanel" aria-labelledby="v-pills-Pets-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-paw"></i>Pets & Animals</a></h3>
                      <ul>
                        <li><a href="#">Pets</a></li>
                        <li><a href="#">Farm Animals</a></li>
                        <li><a href="#">Animal Accessories</a></li>
                        <li><a href="#">Others Animals</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Kids" role="tabpanel" aria-labelledby="v-pills-Kids-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-futbol-o"></i>Hobby, Sport & Kids</a></h3>
                      <ul>
                        <li><a href="#">Sports Equipment</a></li>
                        <li><a href="#">Musical Instruments</a></li>
                        <li><a href="#">Children's Items</a></li>
                        <li><a href="#">Handicrafts & Decoration</a></li>
                        <li><a href="#">Music, Books & Movies</a></li>
                        <li><a href="#">Antique, Art & Collectibles</a></li>
                        <li><a href="#">Other Hobby, Sport & Kids Items</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-service" role="tabpanel" aria-labelledby="v-pills-service-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-life-ring"></i>Services</a></h3>
                      <ul>
                        <li><a href="#">Business & Technical Services</a></li>
                        <li><a href="#">Travel & Visa</a></li>
                        <li><a href="#">Tickets</a></li>
                        <li><a href="#">Health & Lifestyle</a></li>
                        <li><a href="#">Domestic & Personal</a></li>
                        <li><a href="#">Events & Hospitality</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Jobs" role="tabpanel" aria-labelledby="v-pills-Jobs-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-suitcase"></i>Jobs</a></h3>
                      <ul>
                        <li><a href="#">Jobs in Abroad</a></li>
                        <li><a href="#">Jobs in Bangladesh</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-edu" role="tabpanel" aria-labelledby="v-pills-edu-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-graduation-cap"></i>Education</a></h3>
                      <ul>
                        <li><a href="#">Textbooks</a></li>
                        <li><a href="#">Tuition</a></li>
                        <li><a href="#">Study Abroad</a></li>
                        <li><a href="#">Other Education</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Busin" role="tabpanel" aria-labelledby="v-pills-Busin-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-industry"></i>Business & Industry</a></h3>
                      <ul>
                        <li><a href="#">Raw Materials & Industrial Supplies</a></li>
                        <li><a href="#">Industry Machinery & Tools</a></li>
                        <li><a href="#">Office Supplies & Stationary</a></li>
                        <li><a href="#">Medical Equipment & Supplies</a></li>
                        <li><a href="#">Licences, Titles & Tenders</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-Food" role="tabpanel" aria-labelledby="v-pills-Foood-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-tree"></i>Food & Agriculture</a></h3>
                      <ul>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Crops, Seeds & Plants</a></li>
                        <li><a href="#">Farming Tools & Machinery</a></li>
                        <li><a href="#">Other Food & Agriculture</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-IT" role="tabpanel" aria-labelledby="v-pills-IT-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-laptop"></i>IT-Solution</a></h3>
                      <ul>
                        <li><a href="#">Websites</a></li>
                        <li><a href="#">Software</a></li>
                        <li><a href="#">Apps</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-archive" role="tabpanel" aria-labelledby="v-pills-archive-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-archive"></i>Others</a></h3>
                      <ul>
                        <li><a href="#">Others</a></li>
                      </ul>
                    </div>
                  </div>
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
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#dhaka" role="tab" aria-controls="v-pills-home" aria-selected="true">Dhaka <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-car-tab" data-toggle="pill" href="#chittagong" role="tab" aria-controls="v-pills-car" aria-selected="false">Chittagong<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Property-tab" data-toggle="pill" href="#sylhet" role="tab" aria-controls="v-pills-Property" aria-selected="false">Sylhet <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Appli-tab" data-toggle="pill" href="#khulna" role="tab" aria-controls="v-pills-Appli" aria-selected="false">Khulna<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Pets-tab" data-toggle="pill" href="#barisal" role="tab" aria-controls="v-pills-Pets" aria-selected="false">Barisal<i class="fa fa-angle-right float-right"></i></a>
                  
                  <a class="nav-link" id="v-pills-Kids-tab" data-toggle="pill" href="#rajshahi" role="tab" aria-controls="v-pills-Kids" aria-selected="false">Rajshai<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-service-tab" data-toggle="pill" href="#rangpur" role="tab" aria-controls="v-pills-service" aria-selected="false">Rangpur<i class="fa fa-angle-right float-right"></i></a>
                </div>
                <div class="category-title mt-3">
                  <h3><i class="fa fa-tag"></i>Division</h3>
                </div>
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#dhakadiv" role="tab" aria-controls="v-pills-home" aria-selected="true">Dhaka <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-car-tab" data-toggle="pill" href="#chittagongdiv" role="tab" aria-controls="v-pills-car" aria-selected="false">Chittagong<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Property-tab" data-toggle="pill" href="#sylhetdiv" role="tab" aria-controls="v-pills-Property" aria-selected="false">Sylhet <i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Appli-tab" data-toggle="pill" href="#khulnadiv" role="tab" aria-controls="v-pills-Appli" aria-selected="false">Khulna<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-Pets-tab" data-toggle="pill" href="#barisaldiv" role="tab" aria-controls="v-pills-Pets" aria-selected="false">Barisal<i class="fa fa-angle-right float-right"></i></a>
                  
                  <a class="nav-link" id="v-pills-Kids-tab" data-toggle="pill" href="#rajshahidiv" role="tab" aria-controls="v-pills-Kids" aria-selected="false">Rajshai<i class="fa fa-angle-right float-right"></i></a>

                  <a class="nav-link" id="v-pills-service-tab" data-toggle="pill" href="#rangpurdiv" role="tab" aria-controls="v-pills-service" aria-selected="false">Rangpur<i class="fa fa-angle-right float-right"></i></a>
                </div>
              </div>

              <div class="col-md-7 modalsubcategory">
                <div class="tab-content" id="v-pills-tabContent">
                  <div class="tab-pane fade show" id="dhaka" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Dhaka</a></h3>
                      <ul>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Mobile Phone</a></li>
                        <li><a href="#">Mobile Phone Accessories</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="chittagong" role="tabpanel" aria-labelledby="v-pills-car-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Chittagong</a></h3>
                      <ul>
                        <li><a href="#">Cars</a></li>
                        <li><a href="#">Motorbikes & Vehicles</a></li>
                        <li><a href="#">Bicycles And Three Wheelers</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="sylhet" role="tabpanel" aria-labelledby="v-pills-Property-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Sylhet</a></h3>
                      <ul>
                        <li><a href="#">Apartments & Flats</a></li>
                        <li><a href="#">Houses</a></li>
                        <li><a href="#">Plots & Land</a></li>
                        <li><a href="#">Rooms</a></li>
                        <li><a href="#">Garages</a></li>
                        <li><a href="#">Commercial Property</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="khulna" role="tabpanel" aria-labelledby="v-pills-Appli-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Khulna</a></h3>
                      <ul>
                        <li><a href="#">Furniture</a></li>
                        <li><a href="#">Home Appliances</a></li>
                        <li><a href="#">Freeze</a></li>
                        <li><a href="#">Electricity, AC & Bathroom</a></li>
                        <li><a href="#">Others Home Items</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="barisal" role="tabpanel" aria-labelledby="v-pills-Clothing-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Barisal</a></h3>
                      <ul>
                        <li><a href="#">Man</a></li>
                        <li><a href="#">Woman</a></li>
                        <li><a href="#">Kids</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="rajshahi" role="tabpanel" aria-labelledby="v-pills-Health-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Rajshahi</a></h3>
                      <ul>
                        <li><a href="#">Health & Beauty Items</a></li>
                        <li><a href="#">Jewellery</a></li>
                        <li><a href="#">Watches</a></li>
                        <li><a href="#">Shoes & Footwear</a></li>
                        <li><a href="#">Other Personal Items</a></li>
                        <li><a href="#">Wholesale-Bulk</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="rangpur" role="tabpanel" aria-labelledby="v-pills-Pets-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Rangpur</a></h3>
                      <ul>
                        <li><a href="#">Pets</a></li>
                        <li><a href="#">Farm Animals</a></li>
                        <li><a href="#">Animal Accessories</a></li>
                        <li><a href="#">Others Animals</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="dhakadiv" role="tabpanel" aria-labelledby="v-pills-Kids-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Dhaka Division</a></h3>
                      <ul>
                        <li><a href="#">Sports Equipment</a></li>
                        <li><a href="#">Musical Instruments</a></li>
                        <li><a href="#">Children's Items</a></li>
                        <li><a href="#">Handicrafts & Decoration</a></li>
                        <li><a href="#">Music, Books & Movies</a></li>
                        <li><a href="#">Antique, Art & Collectibles</a></li>
                        <li><a href="#">Other Hobby, Sport & Kids Items</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="chittagongdiv" role="tabpanel" aria-labelledby="v-pills-service-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Chittagong Division</a></h3>
                      <ul>
                        <li><a href="#">Business & Technical Services</a></li>
                        <li><a href="#">Travel & Visa</a></li>
                        <li><a href="#">Tickets</a></li>
                        <li><a href="#">Health & Lifestyle</a></li>
                        <li><a href="#">Domestic & Personal</a></li>
                        <li><a href="#">Events & Hospitality</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="sylhetdiv" role="tabpanel" aria-labelledby="v-pills-service-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Sylhet</a></h3>
                      <ul>
                        <li><a href="#">Business & Technical Services</a></li>
                        <li><a href="#">Travel & Visa</a></li>
                        <li><a href="#">Tickets</a></li>
                        <li><a href="#">Health & Lifestyle</a></li>
                        <li><a href="#">Domestic & Personal</a></li>
                        <li><a href="#">Events & Hospitality</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="khulnadiv" role="tabpanel" aria-labelledby="v-pills-Jobs-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Khulna</a></h3>
                      <ul>
                        <li><a href="#">Jobs in Abroad</a></li>
                        <li><a href="#">Jobs in Bangladesh</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="barisaldiv" role="tabpanel" aria-labelledby="v-pills-edu-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Barisal</a></h3>
                      <ul>
                        <li><a href="#">Textbooks</a></li>
                        <li><a href="#">Tuition</a></li>
                        <li><a href="#">Study Abroad</a></li>
                        <li><a href="#">Other Education</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="rajshahidiv" role="tabpanel" aria-labelledby="v-pills-Busin-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Rajshahi Division</a></h3>
                      <ul>
                        <li><a href="#">Raw Materials & Industrial Supplies</a></li>
                        <li><a href="#">Industry Machinery & Tools</a></li>
                        <li><a href="#">Office Supplies & Stationary</a></li>
                        <li><a href="#">Medical Equipment & Supplies</a></li>
                        <li><a href="#">Licences, Titles & Tenders</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="rangpurdiv" role="tabpanel" aria-labelledby="v-pills-Foood-tab">
                    <div class="back-btn backcategory" style="display: none;">
                      <h5><i class="fa fa-arrow-left"></i>Back</h5>
                    </div>
                    <div class="tabs-cat-list">
                      <h3><a href="#"><i class="fa fa-map-marker"></i>Rangpur</a></h3>
                      <ul>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Crops, Seeds & Plants</a></li>
                        <li><a href="#">Farming Tools & Machinery</a></li>
                        <li><a href="#">Other Food & Agriculture</a></li>
                      </ul>
                    </div>
                  </div>
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
                        <a href="ad-post.html">
                        <div class="item">
                            <img src="{{ asset('assets/images/icon/sell.png')}}" alt="images" class="img-fluid">
                            <p>Sell someting in Dalal</p>
                        </div>
                        </a>
                    </div>
                    <div class="col-sm-12">
                        <a href="jobs.html">
                        <div class="item">
                            <img src="{{ asset('assets/images/icon/7.png')}}" alt="images" class="img-fluid">
                            <p>Post a job in Dalal</p>
                        </div>
                        </a>
                    </div>
                    <div class="col-sm-12">
                        <a href="property.html">
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
     <!-- JS -->
    <script src="{{ asset('/assets/js/jquery.min.js') }}"></script>
    <script src="{{ asset('/assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('/assets/js/modernizr.min.js') }}"></script>
    <script src="{{ asset('/assets/js/bootstrap.min.js') }}"></script>
    <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="{{ asset('/assets/js/gmaps.min.js') }}"></script>
    <script src="{{ asset('/assets/js/owl.carousel.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script src="{{ asset('/assets/js/scrollup.min.js') }}"></script>
    <script src="{{ asset('/assets/js/price-range.js') }}"></script>  
    <script src="{{ asset('/assets/js/jquery.countdown.js') }}"></script>  
    <script src="{{ asset('/assets/js/custom.js') }}"></script>
    <!-- js -->
      <script>
        $(document).on('click', '.modalcategory .nav-link', function(){
            if(window.innerWidth <= 767){
              $('.modalcategory').hide();
              $('.modalsubcategory').show();
              $('.backcategory').show();
           }
        });
        $(document).on('click', '.backcategory', function(){
            if(window.innerWidth <= 767){
               $('.modalsubcategory').hide();
               $('.modalcategory').show();
           }
        });
      </script>
  </body>
</html>