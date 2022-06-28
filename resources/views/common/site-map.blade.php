@extends('layouts.app')
@push('custom_css')
<style type="text/css">
  .contact-us h2.title {
    font-size: 20px;
}
h2.h3.title a {
    color: #000000;
}
.sitemap ul li a{
    text-decoration: none;
    outline: none;
    color: #3a3a3c;
}
</style>
@endpush
@section('content')
<section id="main" class="clearfix ad-details-page sitemap">
   <div class="container">
      <div class="breadcrumb-section">
         <!-- breadcrumb -->
         <ol class="breadcrumb">
            <li><a href="{{url('/')}}">Home</a></li>
            <li>Sitemap</li>
         </ol><!-- breadcrumb -->                  
         <!-- <h2 class="title">Privacy Policy</h2> -->
      </div><!-- banner -->
      <div class="adpost-details privacy-policy">
         <div class="row"> 
            <div class="col-12">
               <div class="section contact-us">
                  <div class="row lg-g links">

                        @if($data['data']['category'] && count($data['data']['category']) > 0 )
                        @foreach($data['data']['category'] as $key => $cat)
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="{{route('ads.list', ['area' => 'bangladesh', 'category' => $cat->url_slug])}}">{{ $cat->name }}</a></h2>
                           <nav>
                              <ul>
                                 @if($data['data']['subcategory'] && count($data['data']['subcategory']) > 0 )
                                    @foreach($data['data']['subcategory'] as $ckey => $scat)
                                       @if($cat->pk_no == $scat->parent_id )
                                       <li><a href="{{route('ads.list', ['area' => 'bangladesh', 'category' => $scat->url_slug])}}">{{ $scat->name }}</a></li>
                                       @endif
                                    @endforeach
                                 @endif
                              </ul>
                           </nav>
                         </div>
                         @endforeach
                         @endif

                         
                        <!-- <div class="col-sm-6 col-md-4 col-lg-3">
                             <h2 class="h3 title"><a href="/en/ads/bangladesh/property">Property</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/apartments-flats">Apartments &amp; Flats</a></li>
                                 <li><a href="/en/ads/bangladesh/new-developments">New Developments</a></li>
                                 <li><a href="/en/ads/bangladesh/houses">Houses</a></li>
                                 <li><a href="/en/ads/bangladesh/plots-land">Plots &amp; Land</a></li>
                                 <li><a href="/en/ads/bangladesh/rooms">Rooms</a></li>
                                 <li><a href="/en/ads/bangladesh/garages">Garages</a></li>
                                 <li><a href="/en/ads/bangladesh/commercial-property">Commercial Property</a></li>
                                 <li><a href="/en/ads/bangladesh/property-tools-services">Property Tools &amp; Services</a></li>
                              </ul>
                           </nav>
                           </div>
                           <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/home-living">Home &amp; Living</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/living-room-furniture">Living Room Furniture</a></li>
                                 <li><a href="/en/ads/bangladesh/kitchen-dining-furniture">Kitchen &amp; Dining Furniture</a></li>
                                 <li><a href="/en/ads/bangladesh/bedroom-furniture">Bedroom Furniture</a></li>
                                 <li><a href="/en/ads/bangladesh/office-shop-furniture">Office &amp; Shop Furniture</a></li>
                                 <li><a href="/en/ads/bangladesh/children-s-furniture">Children's Furniture</a></li>
                                 <li><a href="/en/ads/bangladesh/acs-home-electronics">ACs &amp; Home Electronics</a></li>
                                 <li><a href="/en/ads/bangladesh/home-appliances">Home Appliances</a></li>
                                 <li><a href="/en/ads/bangladesh/household-items">Household Items</a></li>
                                 <li><a href="/en/ads/bangladesh/home-textiles-decoration">Home Textiles &amp; Decoration</a></li>
                              </ul>
                           </nav>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/vehicles">Vehicles</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/cars">Cars</a></li>
                                 <li><a href="/en/ads/bangladesh/motorbikes-scooters">Motorbikes &amp; Scooters</a></li>
                                 <li><a href="/en/ads/bangladesh/bicycles-three-wheelers">Bicycles &amp; Three Wheelers</a></li>
                                 <li><a href="/en/ads/bangladesh/trucks-vans-buses">Trucks, Vans &amp; Buses</a></li>
                                 <li><a href="/en/ads/bangladesh/tractors-heavy-duty">Tractors &amp; Heavy-Duty</a></li>
                                 <li><a href="/en/ads/bangladesh/auto-parts-accessories">Auto Parts &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/water-transport">Water Transport</a></li>
                                 <li><a href="/en/ads/bangladesh/car-rentals-auto-services">Car Rentals &amp; Auto Services</a></li>
                              </ul>
                           </nav>
                           </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                          <h2 class="h3 title"><a href="/en/ads/bangladesh/electronics">Electronics</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/desktop-computers">Desktop Computers</a></li>
                                 <li><a href="/en/ads/bangladesh/laptops">Laptops</a></li>
                                 <li><a href="/en/ads/bangladesh/laptop-computer-accessories">Laptop &amp; Computer Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/tablets-accessories">Tablets &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/tvs">TVs</a></li>
                                 <li><a href="/en/ads/bangladesh/tv-video-accessories">TV &amp; Video Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/cameras-camcorders-accessories">Cameras, Camcorders &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/audio-sound-systems">Audio &amp; Sound Systems</a></li>
                                 <li><a href="/en/ads/bangladesh/video-game-consoles-accessories">Video Game Consoles &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/photocopiers">Photocopiers</a></li>
                                 <li><a href="/en/ads/bangladesh/other-electronics">Other Electronics</a></li>
                              </ul>
                           </nav>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/fashion-beauty">Fashion &amp; Beauty</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/men-s-clothing-accessories">Men's Clothing &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/women-s-clothing-accessories">Women's Clothing &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/children-s-clothing-accessories">Children's Clothing &amp; Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/jewellery">Jewellery</a></li>
                                 <li><a href="/en/ads/bangladesh/optical-items">Optical Items</a></li>
                                 <li><a href="/en/ads/bangladesh/watches">Watches</a></li>
                                 <li><a href="/en/ads/bangladesh/bags">Bags</a></li>
                                 <li><a href="/en/ads/bangladesh/wholesale-bulk">Wholesale - Bulk</a></li>
                                 <li><a href="/en/ads/bangladesh/beauty-products">Beauty Products</a></li>
                                 <li><a href="/en/ads/bangladesh/other-items">Other Items</a></li>
                              </ul>
                           </nav>
                         </div>
                         <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/business-industry">Business &amp; Industry</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/office-supplies-stationary">Office Supplies &amp; Stationary</a></li>
                                 <li><a href="/en/ads/bangladesh/safety-security">Safety &amp; Security</a></li>
                                 <li><a href="/en/ads/bangladesh/industry-machinery-tools">Industry Machinery &amp; Tools</a></li>
                                 <li><a href="/en/ads/bangladesh/raw-materials-industrial-supplies">Raw Materials &amp; Industrial Supplies</a></li>
                                 <li><a href="/en/ads/bangladesh/licences-titles-tenders">Licences, Titles &amp; Tenders</a></li>
                                 <li><a href="/en/ads/bangladesh/medical-equipment-supplies">Medical Equipment &amp; Supplies</a></li>
                                 <li><a href="/en/ads/bangladesh/other-business-industry-items">Other Business &amp; Industry Items</a></li>
                              </ul>
                           </nav>
                        </div>
                         <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/mobiles">Mobiles</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/mobile-phones">Mobile Phones</a></li>
                                 <li><a href="/en/ads/bangladesh/mobile-phone-accessories">Mobile Phone Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/sim-cards">SIM Cards</a></li>
                                 <li><a href="/en/ads/bangladesh/mobile-phone-services">Mobile Phone Services</a></li>
                              </ul>
                           </nav>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/services">Services</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/business-technical-services">Business &amp; Technical Services</a></li>
                                 <li><a href="/en/ads/bangladesh/travel-visa">Travel &amp; Visa</a></li>
                                 <li><a href="/en/ads/bangladesh/tickets">Tickets</a></li>
                                 <li><a href="/en/ads/bangladesh/events-hospitality">Events &amp; Hospitality</a></li>
                                 <li><a href="/en/ads/bangladesh/domestic-personal">Domestic &amp; Personal</a></li>
                                 <li><a href="/en/ads/bangladesh/health-lifestyle">Health &amp; Lifestyle</a></li>
                              </ul>
                           </nav>
                         </div>
                        
                         <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/hobbies-sports-kids">Hobbies, Sports &amp; Kids</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/musical-instruments">Musical Instruments</a></li>
                                 <li><a href="/en/ads/bangladesh/sports">Sports</a></li>
                                 <li><a href="/en/ads/bangladesh/fitness-gym">Fitness &amp; Gym</a></li>
                                 <li><a href="/en/ads/bangladesh/music-books-movies">Music, Books &amp; Movies</a></li>
                                 <li><a href="/en/ads/bangladesh/children-s-items">Children's Items</a></li>
                                 <li><a href="/en/ads/bangladesh/other-hobby-sport-kids-items">Other Hobby, Sport &amp; Kids items</a></li>
                              </ul>
                           </nav>
                         </div>
                         
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/education">Education</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/textbooks">Textbooks</a></li>
                                 <li><a href="/en/ads/bangladesh/tuition">Tuition</a></li>
                                 <li><a href="/en/ads/bangladesh/courses">Courses</a></li>
                                 <li><a href="/en/ads/bangladesh/study-abroad">Study Abroad</a></li>
                                 <li><a href="/en/ads/bangladesh/other-education">Other Education</a></li>
                              </ul>
                           </nav>
                         </div>
                         <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/pets-animals">Pets &amp; Animals</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/pets">Pets</a></li>
                                 <li><a href="/en/ads/bangladesh/farm-animals">Farm Animals</a></li>
                                 <li><a href="/en/ads/bangladesh/pet-animal-accessories">Pet &amp; Animal Accessories</a></li>
                                 <li><a href="/en/ads/bangladesh/other-pets-animals">Other Pets &amp; Animals</a></li>
                              </ul>
                           </nav>
                           <h2 class="h3 title"><a href="/en/ads/bangladesh/agriculture">Agriculture</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/crops-seeds-plants">Crops, Seeds &amp; Plants</a></li>
                                 <li><a href="/en/ads/bangladesh/farming-tools-machinery">Farming Tools &amp; Machinery</a></li>
                                 <li><a href="/en/ads/bangladesh/other-agriculture">Other Agriculture</a></li>
                              </ul>
                           </nav>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3"> 
                           <h2 class="h3 title"><a href="#">Jobs</a></h2>
                           <nav>
                              <ul>
                                 <li><a href="/en/ads/bangladesh/accountant-jobs">Accountant</a></li>
                                 <li><a href="/en/ads/bangladesh/architect-jobs">Architect</a></li>
                                 <li><a href="/en/ads/bangladesh/beautician-jobs">Beautician</a></li>
                                 <li><a href="/en/ads/bangladesh/carpenter-jobs">Carpenter</a></li>
                                 <li><a href="/en/ads/bangladesh/caterer-jobs">Caterer</a></li>
                                 <li><a href="/en/ads/bangladesh/chef-jobs">Chef</a></li>
                                 <li><a href="/en/ads/bangladesh/construction-worker-jobs">Construction Worker</a></li>
                                 <li><a href="/en/ads/bangladesh/content-writer-jobs">Content Writer</a></li>
                                 <li><a href="/en/ads/bangladesh/customer-service-executive-jobs">Customer Service Executive</a></li>
                                 <li><a href="/en/ads/bangladesh/delivery-rider-jobs">Delivery Rider</a></li>
                                 <li><a href="/en/ads/bangladesh/designer-jobs">Designer</a></li>
                                 <li><a href="/en/ads/bangladesh/draftsman-jobs">Draftsman</a></li>
                                 <li><a href="/en/ads/bangladesh/driver-jobs">Driver</a></li>
                                 <li><a href="/en/ads/bangladesh/electrician-jobs">Electrician</a></li>
                                 <li><a href="/en/ads/bangladesh/engineer-jobs">Engineer</a></li>
                                 <li><a href="/en/ads/bangladesh/event-planner-jobs">Event Planner</a></li>
                                 <li><a href="/en/ads/bangladesh/gardener-jobs">Gardener</a></li>
                                 <li><a href="/en/ads/bangladesh/garments-worker-jobs">Garments Worker</a></li>
                                 <li><a href="/en/ads/bangladesh/help-desk-executive-jobs">Help Desk Executive</a></li>
                                 <li><a href="/en/ads/bangladesh/hospitality-executive-jobs">Hospitality Executive</a></li>
                                 <li><a href="/en/ads/bangladesh/house-keeping-jobs">House Keeping</a></li>
                                 <li><a href="/en/ads/bangladesh/hr-jobs">HR</a></li>
                                 <li><a href="/en/ads/bangladesh/lab-assistant-jobs">Lab Assistant</a></li>
                                 <li><a href="/en/ads/bangladesh/language-translator-jobs">Language Translator</a></li>
                                 <li><a href="/en/ads/bangladesh/market-research-analyst-jobs">Market Research Analyst</a></li>
                                 <li><a href="/en/ads/bangladesh/marketing-jobs">Marketing</a></li>
                                 <li><a href="/en/ads/bangladesh/mechanic-jobs">Mechanic</a></li>
                                 <li><a href="/en/ads/bangladesh/medical-representative-jobs">Medical Representative</a></li>
                                 <li><a href="/en/ads/bangladesh/merchandiser-jobs">Merchandiser</a></li>
                                 <li><a href="/en/ads/bangladesh/nurse-jobs">Nurse</a></li>
                                 <li><a href="/en/ads/bangladesh/operations-assistant-jobs">Operations Assistant</a></li>
                                 <li><a href="/en/ads/bangladesh/operator-jobs">Operator</a></li>
                                 <li><a href="/en/ads/bangladesh/peon-jobs">Peon</a></li>
                                 <li><a href="/en/ads/bangladesh/pharmacist-jobs">Pharmacist</a></li>
                                 <li><a href="/en/ads/bangladesh/photographer-jobs">Photographer</a></li>
                                 <li><a href="/en/ads/bangladesh/receptionist-jobs">Receptionist</a></li>
                                 <li><a href="/en/ads/bangladesh/sales-jobs">Sales</a></li>
                                 <li><a href="/en/ads/bangladesh/security-guard-jobs">Security Guard</a></li>
                                 <li><a href="/en/ads/bangladesh/software-engineer-jobs">Software Engineer</a></li>
                                 <li><a href="/en/ads/bangladesh/store-keeper-jobs">Store Keeper</a></li>
                                 <li><a href="/en/ads/bangladesh/supervisor-jobs">Supervisor</a></li>
                                 <li><a href="/en/ads/bangladesh/tailor-jobs">Tailor</a></li>
                                 <li><a href="/en/ads/bangladesh/teacher-jobs">Teacher</a></li>
                                 <li><a href="/en/ads/bangladesh/ticketing-executive-jobs">Ticketing Executive</a></li>
                                 <li><a href="/en/ads/bangladesh/trainee-jobs">Trainee</a></li>
                                 <li><a href="/en/ads/bangladesh/videographer-jobs">Videographer</a></li>
                                 <li><a href="/en/ads/bangladesh/warehouse-executive-jobs">Warehouse Executive</a></li>
                                 <li><a href="/en/ads/bangladesh/other-jobs">Other</a></li>
                              </ul>
                           </nav>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                           <h2 class="h3 title"><a href="javascript::void(0)">Other pages</a></h2>
                           <nav>
                              <ul>
                                 <li class="ui-nav-item  "><a href="/en/help/sell-fast#help-content" rel="" target=""><span class="hide-for-inactive">How to sell fast</span></a></li>
                                 <li class="ui-nav-item is-active "><a href="/en/membership" rel="" target=""><span class="hide-for-inactive">Membership</span></a></li>
                                 <li class="ui-nav-item is-active "><a href="/en/advertising" rel="" target=""><span class="hide-for-inactive">Banner Advertising</span></a></li>
                                 <li class="ui-nav-item is-active "><a href="/en/promotions" rel="" target=""><span class="hide-for-inactive">Promote your ad</span></a></li>
                                 <li class="ui-nav-item  "><a href="/en/help/about#help-content" rel="" target=""><span class="hide-for-inactive">About us</span></a></li>
                                 <li class="ui-nav-item"></li>
                                 <a href="#" class="careers">Careers</a>
                                 <li class="ui-nav-item is-active "><a href="/en/terms" rel="" target=""><span class="hide-for-inactive">Terms &amp; Conditions</span></a></li>
                                 <li class="ui-nav-item is-active "><a href="/en/privacy" rel="" target=""><span class="hide-for-inactive">Privacy Policy</span></a></li>
                                 <li class="ui-nav-item is-active "><a href="/en/sitemap" rel="" target=""><span class="hide-for-inactive">Sitemap</span></a></li>
                                 <li class="ui-nav-item  "><a href="/en/help/faq#help-content" rel="" target=""><span class="hide-for-inactive">FAQ</span></a></li>
                                 <li class="ui-nav-item  "><a href="/en/help/stay-safe#help-content" rel="" target=""><span class="hide-for-inactive">Stay safe on Bikroy.com</span></a></li>
                                 <li class="ui-nav-item  "><a href="/en/help/contact#help-content" rel="" target=""><span class="hide-for-inactive">Contact us</span></a></li>
                              </ul>
                           </nav>
                        </div> -->
                     </div>
               </div><!-- section -->
            </div>
         </div><!-- photos-ad -->            
      </div>   
   </div><!-- container -->
</section><!-- main -->

@endsection

@push('custom_js')

@endpush
