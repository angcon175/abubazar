  <!-- JS -->
  <script src="{{ asset('/assets/js/jquery.min.js') }}"></script>
  <script src="{{ asset('/assets/js/popper.min.js') }}"></script>
  <script src="{{ asset('/assets/js/modernizr.min.js') }}"></script>
  <script src="{{ asset('/assets/js/bootstrap.min.js') }}"></script>
  <!--<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
  <script src="{{ asset('/assets/js/gmaps.min.js') }}"></script> -->
  <script src="{{ asset('/assets/js/owl.carousel.min.js') }}"></script>
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
  <script src="{{ asset('/assets/js/scrollup.min.js') }}"></script>
  <script src="{{ asset('/assets/js/price-range.js') }}"></script>  
  <script src="{{asset('/assets/js/forms/validation/jqBootstrapValidation.js')}}"></script>
  <script src="{{asset('/assets/js/forms/validation/form-validation.js')}}"></script>
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

  $(document).on('click', '.navbar-toggler', function(){
      $('.navbar-toggler-icon i').toggleClass('fa-align-justify');
      $('.navbar-toggler-icon i').toggleClass('fa-close');
 });
    
</script>


