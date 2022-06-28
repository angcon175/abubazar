jQuery(function ($) {

    'use strict';


    // -------------------------------------------------------------
    //  ScrollUp Minimum setup
    // -------------------------------------------------------------

    (function() {

        $.scrollUp();

    }());
 
    //select-2 home page
   $('.js-example-basic-single').select2();
   $('.js-example-basic-single2').select2({tags: true});
   $('.js-example-basic-single3').select2();
    

    // -------------------------------------------------------------
    //  Placeholder
    // -------------------------------------------------------------

    (function() {

        var textAreas = document.getElementsByTagName('textarea');

        Array.prototype.forEach.call(textAreas, function(elem) {
            elem.placeholder = elem.placeholder.replace(/\\n/g, '\n');
        });

    }());

    

    // -------------------------------------------------------------
    //  Show 
    // -------------------------------------------------------------

    (function() {

        $("document").ready(function()
            {
                 $(".more-category.one").hide();
                $(".show-more.one").click(function()
                    {
                        $(".more-category.one").show();
                        $(".show-more.one").hide();
                    });
            });

        $("document").ready(function()
            {
                 $(".more-category.two").hide();
                $(".show-more.two").click(function()
                    {
                        $(".more-category.two").show();
                        $(".show-more.two").hide();
                    });
            });

        $("document").ready(function()
            {
                 $(".more-category.three").hide();
                $(".show-more.three").click(function()
                    {
                        $(".more-category.three").show();
                        $(".show-more.three").hide();
                    });
            });

    }());    
    

    // -------------------------------------------------------------
    //  Slider
    // -------------------------------------------------------------

    (function() {

        $('#price').slider();

    }());   
	
	
   
    
    // -------------------------------------------------------------
    //  language Select
    // -------------------------------------------------------------

   (function() {

        $('.language-dropdown').on('click', '.language-change a', function(ev) {
            if ("#" === $(this).attr('href')) {
                ev.preventDefault();
                var parent = $(this).parents('.language-dropdown');
                parent.find('.change-text').html($(this).html());
            }
        });

        $('.category-dropdown').on('click', '.category-change a', function(ev) {
            if ("#" === $(this).attr('href')) {
                ev.preventDefault();
                var parent = $(this).parents('.category-dropdown');
                parent.find('.change-text').html($(this).html());
            }
        });

    }());


   //---------------------------------
   //type writer
   //---------------------------------
   var TxtType = function(el, toRotate, period) {
              this.toRotate = toRotate;
              this.el = el;
              this.loopNum = 0;
              this.period = parseInt(period, 10) || 2000;
              this.txt = '';
              this.tick();
              this.isDeleting = false;
          };

          TxtType.prototype.tick = function() {
              var i = this.loopNum % this.toRotate.length;
              var fullTxt = this.toRotate[i];

              if (this.isDeleting) {
              this.txt = fullTxt.substring(0, this.txt.length - 1);
              } else {
              this.txt = fullTxt.substring(0, this.txt.length + 1);
              }

              this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

              var that = this;
              var delta = 200 - Math.random() * 100;

              if (this.isDeleting) { delta /= 2; }

              if (!this.isDeleting && this.txt === fullTxt) {
              delta = this.period;
              this.isDeleting = true;
              } else if (this.isDeleting && this.txt === '') {
              this.isDeleting = false;
              this.loopNum++;
              delta = 500;
              }

              setTimeout(function() {
              that.tick();
              }, delta);
          };
          window.onload = function() {
              var elements = document.getElementsByClassName('typewrite');
              for (var i=0; i<elements.length; i++) {
                  var toRotate = elements[i].getAttribute('data-type');
                  var period = elements[i].getAttribute('data-period');
                  if (toRotate) {
                    new TxtType(elements[i], JSON.parse(toRotate), period);
                  }
              }
              // INJECT CSS
              var css = document.createElement("style");
              css.type = "text/css";
              css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
              document.body.appendChild(css);
          };


    // -------------------------------------------------------------
    //  Tooltip
    // -------------------------------------------------------------

    (function() {

        $('[data-toggle="tooltip"]').tooltip();

    }());


    // -------------------------------------------------------------
    // Accordion
    // -------------------------------------------------------------

        (function () {  
            $('.collapse').on('show.bs.collapse', function() {
                var id = $(this).attr('id');
                $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
                $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-minus"></i>');
            });

            $('.collapse').on('hide.bs.collapse', function() {
                var id = $(this).attr('id');
                $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('active-faq');
                $('a[href="#' + id + '"] .panel-title span').html('<i class="fa fa-plus"></i>');
            });
        }());


    // -------------------------------------------------------------
    //  Checkbox Icon Change
    // -------------------------------------------------------------

    (function () {

        $('input[type="checkbox"]').change(function(){
            if($(this).is(':checked')){
                $(this).parent("label").addClass("checked");
            } else {
                $(this).parent("label").removeClass("checked");
            }
        });

    }()); 
	
	
	 // -------------------------------------------------------------
    //  select-category Change
    // -------------------------------------------------------------
	$('.select-category.post-option ul li a').on('click', function() {
		$('.select-category.post-option ul li.link-active').removeClass('link-active');
		$(this).closest('li').addClass('link-active');
	});

	$('.subcategory.post-option ul li a').on('click', function() {
		$('.subcategory.post-option ul li.link-active').removeClass('link-active');
		$(this).closest('li').addClass('link-active');
	});
	
    // -------------------------------------------------------------
    //   Show Mobile Number
    // -------------------------------------------------------------  

    (function () {

        $('.show-number').on('click', function() {
            $('.hide-text').fadeIn(500, function() {
              $(this).addClass('hide');
            });  
			$('.hide-number').fadeIn(500, function() {
              $(this).addClass('show');
            }); 			
        });


    }());
	
   
// script end
});


    // -------------------------------------------------------------
    //  Owl Carousel
    // -------------------------------------------------------------


    (function() {

        $("#featured-slider").owlCarousel({
            items:3,
            nav:true,
            autoplay:true,
            dots:true,
            autoplayHoverPause:true,
            nav:true,
            navText: [
              "<i class='fa fa-angle-left '></i>",
              "<i class='fa fa-angle-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1,
                    slideBy:1
                },
                576: {
                    items: 1,
                    slideBy:1
                },
                768: {
                    items: 1,
                    slideBy:1
                },
                1200: {
                    items: 3,
                    slideBy:1
                },
            }            

        });

    }());


    (function() {

        $("#featured-slider-two").owlCarousel({
            items:4,
            nav:true,
            autoplay:true,
            dots:true,
            autoplayHoverPause:true,
            nav:true,
            navText: [
              "<i class='fa fa-angle-left '></i>",
              "<i class='fa fa-angle-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1,
                    slideBy:1
                },
                450: {
                    items: 2,
                    slideBy:1
                },
                991: {
                    items: 3,
                    slideBy:1
                },
                1200: {
                    items: 4,
                    slideBy:1
                },
            }            

        });
        
        

    }());

       (function() {

        $("#featured-slider-three").owlCarousel({
            items:4,
            nav:true,
            autoplay:true,
            dots:true,
            autoplayHoverPause:true,
            nav:true,
            navText: [
              "<i class='fa fa-angle-left '></i>",
              "<i class='fa fa-angle-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1,
                    slideBy:1
                },
                576: {
                    items: 1,
                    slideBy:1
                },
                768: {
                    items: 2,
                    slideBy:1
                },
                1200: {
                    items: 4,
                    slideBy:1
                },
            }            

        });

    }());

    (function() {

        $(".testimonial-carousel").owlCarousel({
            items:1,
            autoplay:true,
            autoplayHoverPause:true
        });

    }());

    (function() {

        $(".car-slider").owlCarousel({
            items:1,
            autoplay:true,
            autoplayHoverPause:true
        });

    }());
