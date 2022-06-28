<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Rony Mia, Maidul Islam">
    <meta name="description" content="Buy and sell everything from second-hand cars to mobile phones, or even find a new home. Find a great deal close to you, or search all of Bangladesh.">
    <title>{{$setting->website_title ?? 'The Online Mega Mall in Bangladesh for buying and selling everything on online'}}</title>
    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('/assets/css/bootstrap.min.css?v=0') }}" >
    <link rel="stylesheet" href="{{ asset('/assets/css/font-awesome.min.css?v=0') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/icofont.css?v=0') }}">
    <link rel="stylesheet" href="{{ asset('/assets/css/owl.carousel.css?v=0') }}">  
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css?v=0" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('/assets/css/slidr.css?v=0') }}">    
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/forms/validation/form-validation.css')}}"> 
    <link rel="stylesheet" href="{{ asset('/assets/css/main.css?v=0') }}">  
    <link rel="stylesheet" href="{{ asset('/assets/css/responsive.css?v=0') }}">
    
  @if(!empty($setting->favicon))
  <link rel="icon" href="{{ asset($setting->favicon)}}"> 
  @else
  <link rel="icon" href="{{ asset('assets/images/ico/favicon.ico')}}"> 
  @endif
    <!-- icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset('assets/images/ico/apple-touch-icon-144-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{ asset('assets/images/ico/apple-touch-icon-114-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{ asset('assets/images/ico/apple-touch-icon-72-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="{{ asset('assets/images/ico/apple-touch-icon-57-precomposed.png')}}">
    <script src="https://code.jquery.com/jquery-2.1.4.min.js?v=0"></script>
    @stack('custom_css')
  </head>
  <!-- 
        ============Developer Md Rony (Contact: +88 01990572321)==========
   -->