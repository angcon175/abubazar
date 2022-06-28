

<footer id="footer" class="clearfix">
    <!-- footer-top -->
    <section class="footer-top clearfix">
        <div class="container">
            <div class="row">
                <!-- footer-widget -->
                <div class="col-md-3 col-6">
                    <div class="footer-widget">
                        <h3>Quik Links</h3>
                        <ul>
                            <li><a href="{{route('about-us')}}">About Us</a></li>
                            <li><a href="{{route('contact-us')}}">Contact Us</a></li>
                            <li><a href="{{route('terms-conditions')}}">Terms & Conditions</a></li>
                            <li><a href="{{ route('privacy-policy')}}">Privacy Policy</a></li>
                            <li><a href="{{ route('site-map')}}">Sitemap</a></li>
                        </ul>
                    </div>
                </div><!-- footer-widget -->

                <!-- footer-widget -->
                <div class="col-md-3 col-6">
                    <div class="footer-widget">
                        <h3>How to sell fast</h3>
                        <ul>
                            <li><a href="{{route('how-to-sell-fast')}}">How to sell fast</a></li>
                            <li><a href="{{route('get-membership')}}">Membership</a></li>
                            <li><a href="{{route('my-ads')}}">Promote your ad</a></li>
                            <li><a href="{{route('promotions')}}">Promotions</a></li>
                            <li><a href="{{route('faq')}}">FAQ</a></li>
                        </ul>
                    </div>
                </div><!-- footer-widget -->

                <!-- footer-widget -->
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget social-widget">
                        <h3>Follow us on</h3>
                        <ul>
                            <li><a target="_blank" href="https://www.facebook.com/DalalGroup/"><i class="fa fa-facebook-official"></i>Facebook</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-twitter-square"></i>Twitter</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-youtube-play"></i>youtube</a></li>
                        </ul>
                    </div>
                </div><!-- footer-widget -->

                <!-- footer-widget -->
                <div class="col-md-3 col-sm-6">
                    <div class="footer-widget news-letter">
                        <h3>Newsletter</h3>
                        <p>Gogoads an e-commerce and ad-posting corporation based in Dhaka, Bangladesh!</p>
                        <!-- form -->
                       {!! Form::open([ 'route' => 'subscribe', 'method' => 'post', 'class' => 'form-contact', 'files' => false , 'novalidate', 'autocomplete' => 'off']) !!}
                       <div class="form-group">
                            <div class="controls">
                               {!! Form::email('email', old('email'), ['class'=>'form-control', 'id' => 'email', 'placeholder' => 'email...', 'data-validation-required-message' => 'This field is required', 'tabindex' => 5]) !!}
                               {!! $errors->first('email', '<label class="help-block text-danger">:message</label>') !!}
                             </div>
                        </div>
                            <button type="submit" class="btn btn-primary">Subscribe Now</button>
                       {!! Form::close() !!}<!-- form -->            
                    </div>
                </div><!-- footer-widget -->
            </div><!-- row -->
        </div><!-- container -->
    </section><!-- footer-top -->
    <div class="footer-bottom clearfix text-center">
        <div class="container">
            <p>Copyright &copy; Gogoads {{date('Y')}}</p>
            <!-- 
                ============Developer Md Rony (Contact: +88 01990572321)==========
             -->
        </div>
    </div><!-- footer-bottom -->
</footer><!-- footer -->

