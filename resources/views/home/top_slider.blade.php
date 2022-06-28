 <!-- world -->
        <div id="banner-two" class="parallax-section">
            <div class="row text-center">
                <!-- banner -->
                <div class="col-sm-12 ">
                    <div class="banner">
                        <h1 class="title"><span style="color:#fff;">Gogoads</span> The Online Mega Mall</h1>
                        <h3>
                            <span id="break">Find Everything for Buy and Sell</span> Ex.
                            <span class="typewrite" data-period="2000" data-type='[ "Cars, Phones", "Computers, Printers", "Property, Houses", "Job and more" ]'> <span class="wrap"></span></span>
                        </h3>
                        <!-- banner-form -->
                        <div class="banner-form">
                            <form action="{{route('ads.list',['area' => 'bangladesh'])}}" method="get">
                                <i class="fa fa-map-marker"></i>
                                <div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#divisioncitymodal">
                                    <span>Select Location</span>
                                </div>
                                <i class="fa fa-tag"></i>
                                <div class="dropdown category-dropdown select-category" data-toggle="modal" data-target="#exampleModal">
                                    <span>Select Category</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Type Your key word" name="keywords">
                                <button type="submit" class="form-control" value="Search">Search</button>
                            </form>
                        </div><!-- banner-form -->
                    </div>
                </div><!-- banner -->
            </div><!-- row -->
        </div><!-- world -->
        <!-- Brand-logo  -->
    </div>
