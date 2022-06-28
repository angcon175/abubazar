@extends('layouts.app')

<?php 

$subcat_info = $data['subcat_info'] ?? null ;

?>

@section('content')
	
	<!-- main -->
	<section id="main" class="clearfix ad-details-page">
		<div class="container">
		
			<div class="breadcrumb-section">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li>Ad Post</li>
				</ol><!-- breadcrumb -->						
			</div><!-- banner -->
			<div class="adpost-details">
				<div class="row">	
					<div class="col-lg-8">
						<div class="card" style="background-color: #fff; padding: 10px;">
					<!-- ========= differnt form start ============= -->
						<p>Category Name: Essentials</p>
						<p>Subcategory: Grocery</p>
						<form action="#">
							  	<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write a few  lines about your products. Also mention your product brand." rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable1" id="negotiable1">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr/>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Fruits & Vegetables</p>
						<form action="#">
							  	<div class="row form-group">
									<label class="col-sm-3">Type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="newsell" id="newsell"> <label for="newsell">Fruits</label>
										<input type="radio" name="sellType" value="newbuy" id="newbuy"> <label for="newbuy">Vegetables</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable2" id="negotiable2">
										<label for="negotiable2">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Meat & Seafood</p>
						<form action="#">
							  	<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Fish</option>
										      <option>Beef</option>
										      <option>Mutton</option>
										      <option>Chicken</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable3" id="negotiable3">
										<label for="negotiable3">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Baby Proudcts</p>
						<form action="#">
							  	<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Baby Food</option>
										      <option>Diapers & Wipes</option>
										      <option>Skin & Haircare</option>
										      <option>Baby accessories</option>
										      <option>For Mom</option>
										      <option>Other</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable4" id="negotiable4">
										<label for="negotiable4">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Healthcare</p>
						<form action="#">
							  	<div class="row form-group">
									<label class="col-sm-3">Type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="handcare" id="handcare"> <label for="handcare">Handcare</label>
										<input type="radio" name="sellType" value="mask" id="mask"> <label for="mask">Face Mask</label>	
										<input type="radio" name="sellType" value="other" id="other"> <label for="other">Face Other</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable5" id="negotiable5">
										<label for="negotiable5">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Household</p>
						<form action="#">
							  		<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Cleaning</option>
										      <option>Laundry</option>
										      <option>Dish Washing</option>
										      <option>Tissues & Disposables</option>
										      <option>Repelents</option>
										      <option>Other</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable6" id="negotiable6">
										<label for="negotiable6">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Essentials</p>
						<p>Subcategory: Other Essentials</p>
						<form action="#">
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable7" id="negotiable7">
										<label for="negotiable7">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr>

						<p>Category Name: Mobile</p>
						<p>Subcategory: Mobile Phones</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used" id="used"> <label for="used">Used </label>
										<input type="radio" name="sellType" value="new" id="new"> <label for="new">New</label>	
									</div>
								</div>
								<div class="row search-select form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										 <select class="js-example-basic-single form-control" name="state">
										  	<option value="AL">Aamra</option>
										  	<option value="WY">Acer</option>
										  	<option value="AE">AEKU</option>
										  	<option value="AI">Aiek</option>
										  	<option value="AIR">Airmax</option>
										  	<option value="AL">Alcatel</option>
										  	<option value="ALL">Allview</option>
										  	<option value="AM">AMOI</option>
										  	<option value="AP">Apple</option>		
										 </select>
									</div>
								</div>
<!-- Multiple select form-->					
<style>
span.select2-selection.select2-selection--single{
	display: block;
    width: 100%;
    height: calc(1.5em + .75rem + 2px);
    padding: 3px 3px;
    font-size: 1rem;
     height: 39px;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    outline: none;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
   height: 26px;
    position: absolute;
    top: 5px !important;
    right: 2px !important;
    width: 20px;
}
</style>

								<div class="row search-select form-group add-title">
									<label class="col-sm-3 label-title">Model</label>
									<div class="col-sm-9">
										 <select class="js-example-basic-single form-control" name="state">
										  	<option value="AL">Allegro</option>		
										  	<option value="be">beTouch E100</option>		
										  	<option value="b1">beTouch E101</option>		
										  	<option value="be2">beTouch E110</option>			
										 </select>
									</div>
								</div>	
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Edition (optional)</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Edition">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Features (optional)</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="bluetooth" value="bluetooth" id="bluetooth"> <label for="bluetooth">Bluetooth </label>

										<input type="radio" name="camera" value="camera" id="camera"> <label for="camera">Camera</label>

										<input type="radio" name="dual-camera" value="dual-camera" id="dual-camera"> <label for="dual-camera">Dual-Lens Camera</label>	

										<input type="radio" name="dual-sim" value="dual-sim" id="dual-sim"> <label for="dual-sim">Dual SIM</label>	

										<input type="radio" name="expandable" value="expandable" id="expandable"> <label for="expandable">Expandable Memory</label>	

										<input type="radio" name="finger" value="finger" id="finger"> <label for="finger">Fingerprint Sensor</label>	

										<input type="radio" name="gps" value="gps" id="gps"> <label for="gps">GPS</label>	
										<input type="radio" name="keyboard" value="keyboard" id="keyboard"> <label for="keyboard">Physical keyboard</label>	
										<input type="radio" name="mothion" value="mothion" id="mothion"> <label for="mothion">Motion Sensors</label>	
										<input type="radio" name="3g" value="3g" id="3g"> <label for="3g">3G</label>	
										<input type="radio" name="4g" value="4g" id="4g"> <label for="4g">4G</label>	
										<input type="radio" name="gsm" value="gsm" id="gsm"> <label for="gsm">GSM</label>	
										<input type="radio" name="touch" value="touch" id="touch"> <label for="touch">Touch screen</label>	
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Authenticity</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="original" id="original"> <label for="original">Original </label>
										<input type="radio" name="sellType" value="refur" id="refur"> <label for="refur">Refurbished</label>	
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable8" id="negotiable1">
										<label for="negotiable8">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>	
						</form>

						<hr>

						<p>Category Name: Mobile</p>
						<p>Subcategory: Mobile Phone Accessories</p>
						<form action="#">
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Power Banks</option>
										      <option>Screen Protectors</option>
										      <option>Chargers</option>
										      <option>Cables</option>
										      <option>Holders & Stands</option>
										      <option>Bags & Cases</option>
										      <option>VR Boxes</option>
										      <option>Selfie Sticks</option>
										      <option>Others</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused" id="pdused"> <label for="pdused">Used </label>
										<input type="radio" name="sellType" value="pdnew" id="pdnew"> <label for="pdnew">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable9" id="negotiable7">
										<label for="negotiable9">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr/>

						<p>Category Name: Mobile</p>
						<p>Subcategory: SIM Cards</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused1" id="pdused1"> <label for="pdused1">Used </label>
										<input type="radio" name="sellType" value="pdnew2" id="pdnew2"> <label for="pdnew2">New</label>	
									</div>
								</div>
								
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Mobile</p>
						<p>Subcategory: Mobile Phone Services</p>
						<form action="#">
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Desktop Computers</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused2" id="pdused2"> <label for="pdused2">Used </label>
										<input type="radio" name="sellType" value="pdnew3" id="pdnew3"> <label for="pdnew3">New</label>	
									</div>
								</div>
								<div class="row search-select form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										 <select class="js-example-basic-single form-control" name="state">
										  	<option value="AL">Customized Desktops</option>
										  	<option value="WY">Acer</option>
										  	<option value="AI">Ainol</option>
										  	<option value="APP">Apple iMac</option>
										  	<option value="AS">Asus</option>
										  	<option value="AL">Alcatel</option>
										  	<option value="ALL">Compaq</option>
										  	<option value="AM">Daffodil</option>
										  	<option value="AP">Dell</option>
										  	<option value="AR">Fujits</option>		
										 </select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Enter your modal name, version and color">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Laptops</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused3" id="pdused3"> <label for="pdused3">Used </label>
										<input type="radio" name="sellType" value="pdnew4" id="pdnew4"> <label for="pdnew4">New</label>	
									</div>
								</div>
								<div class="row search-select form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										 <select class="js-example-basic-single form-control" name="state">
										  	<option value="AL">Aamra</option>
										  	<option value="WY">Acer</option>
										  	<option value="AE">AEKU</option>
										  	<option value="AI">Aiek</option>
										  	<option value="AIR">Airmax</option>
										  	<option value="AL">Alcatel</option>
										  	<option value="ALL">Allview</option>		
										 </select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Enter your modal name, version and color">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Laptop & Computer Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused4" id="pdused4"> <label for="pdused4">Used </label>
										<input type="radio" name="sellType" value="pdnew5" id="pdnew5"> <label for="pdnew5">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Tablets & Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused5" id="pdused5"> <label for="pdused5">Used </label>
										<input type="radio" name="sellType" value="pdnew6" id="pdnew6"> <label for="pdnew6">New</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Device type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="tables" id="tables"> <label for="tables">Tablets </label>
										<input type="radio" name="sellType" value="access" id="access"> <label for="access">Accessories</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Enter your modal name, version and color">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: TVs</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused6" id="pdused6"> <label for="pdused6">Used </label>
										<input type="radio" name="sellType" value="pdnew7" id="pdnew7"> <label for="pdnew7">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Enter your modal name, version and color">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: TV & Video Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="pdused7" id="pdused7"> <label for="pdused7">Used </label>
										<input type="radio" name="sellType" value="pdnew8" id="pdnew8"> <label for="pdnew8">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">item type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Cameras, Camcorders & Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used1" id="used1"> <label for="used1">Used </label>
										<input type="radio" name="sellType" value="new1" id="new1"> <label for="new1">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">item type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Audio & Sound Systems</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used2" id="used2"> <label for="used2">Used </label>
										<input type="radio" name="sellType" value="new2" id="new2"> <label for="new2">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">item type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Video Game Consoles & Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used3" id="used3"> <label for="used3">Used </label>
										<input type="radio" name="sellType" value="new3" id="new3"> <label for="new3">New</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">item type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used4" id="used4"> <label for="used4">Video Game Consoles </label>
										<input type="radio" name="sellType" value="new4" id="new4"> <label for="new4">Video Games</label>	
										<input type="radio" name="sellType" value="video" id="video"> <label for="video">Video Game Accessories</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>

						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Photocopiers</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used5" id="used5"> <label for="used5">Used </label>
										<input type="radio" name="sellType" value="new5" id="new5"> <label for="new5">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">item type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Enter your modal number, version and color">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Electronics</p>
						<p>Subcategory: Other Electronics</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used6" id="used6"> <label for="used6">Used </label>
										<input type="radio" name="sellType" value="new6" id="new6"> <label for="new6">New</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>



						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Cars</p>
						<form action="#">
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Trim / Edition (optional)</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Trim / Edition">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Model year</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" id="text" placeholder="modal year">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Registration year (optional)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" id="text" placeholder="Registration year">
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used7" id="used7"> <label for="used7">Used </label>
										<input type="radio" name="sellType" value="new7" id="new7"> <label for="new7">New</label>	
										<input type="radio" name="sellType" value="recond" id="recond"> <label for="recond">Reconditioned</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Transmission</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used8" id="used8"> <label for="used8">Manual </label>
										<input type="radio" name="sellType" value="new8" id="new8"> <label for="new8">Automatic</label>	
										<input type="radio" name="sellType" value="trans" id="trans"> <label for="trans">Other transmission</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Body type (optional)</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
   									<div class="row form-group">
									<label class="col-sm-3">Features (optional)</label>
									<div class="col-sm-9 user-type">	
										<input type="radio" name="diesel" value="diesel" id="diesel"> <label for="diesel">Diesel</label>	
										<input type="radio" name="petrol" value="petrol" id="petrol"> <label for="petrol">Petrol</label>	
										<input type="radio" name="cng" value="cng" id="cng"> <label for="cng">CNG</label>	
										<input type="radio" name="elec" value="elec" id="elec"> <label for="elec">Electric</label>	
										<input type="radio" name="octane" value="octane" id="octane"> <label for="octane">Octane</label>
										<input type="radio" name="hybrid" value="hybrid" id="hybrid"> <label for="hybrid">Hybrid</label>	
										<input type="radio" name="car" value="car" id="car"> <label for="car">Other fuel type</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Engine capacity (cc)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" step="0.01" id="text" placeholder="Engine Capacity">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Kilometers run (km)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" step="0.01" id="text" placeholder="Kilometers Run">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Motorbikes & Scooters</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used9" id="used9"> <label for="used9">Used </label>
										<input type="radio" name="sellType" value="new9" id="new9"> <label for="new9">New</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Bike type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used10" id="used10"> <label for="used10">Motorbikes </label>
										<input type="radio" name="sellType" value="new10" id="new10"> <label for="new10">Scooter & E-Bikes</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Model year</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" id="text" placeholder="modal year">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Kilometers run (km)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" step="0.01" id="text" placeholder="Kilometers Run">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Engine capacity (cc)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" step="0.01" id="text" placeholder="Engine Capacity">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>



						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Bicycles & Three Wheelers</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used11" id="used11"> <label for="used11">Used </label>
										<input type="radio" name="sellType" value="new11" id="new11"> <label for="new11">New</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Vehicle type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used12" id="used12"> <label for="used12">Bicycles </label>
										<input type="radio" name="sellType" value="new12" id="new12"> <label for="new12">Three Wheelers & CNGs</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Trucks, Vans & Buses</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used13" id="used13"> <label for="used13">Used </label>
										<input type="radio" name="sellType" value="new13" id="new13"> <label for="new13">New</label>	
										<input type="radio" name="sellType" value="recondition" id="recondition"> <label for="recondition">Reconditioned</label>	
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Vehicle type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used14" id="used14"> <label for="used14">Trucks </label>
										<input type="radio" name="sellType" value="new14" id="new14"> <label for="new14">Vans</label>	
										<input type="radio" name="sellType" value="buses" id="buses"> <label for="buses">Buses</label>	
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Brand</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>

								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Modal name</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="modal name">
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Kilometers run (km)</label>
									<div class="col-sm-9">
										<input type="number" class="form-control" step="0.01" id="text" placeholder="Kilometers Run">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Tractors & Heavy-Duty</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used15" id="used15"> <label for="used15">Used </label>
										<input type="radio" name="sellType" value="new15" id="new15"> <label for="new15">New</label>		
									</div>
								</div>
								<div class="row form-group">
									<label class="col-sm-3">Item type</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used16" id="used16"> <label for="used16">Tractors</label>
										<input type="radio" name="sellType" value="new16" id="new16"> <label for="new16">Heavy-Duty</label>		
									</div>
								</div>

								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Auto Parts & Accessories</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used17" id="used17"> <label for="used17">Used </label>
										<input type="radio" name="sellType" value="new17" id="new17"> <label for="new17">New</label>		
									</div>
								</div>
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Item type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>


						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Water Transport</p>
						<form action="#">
								<div class="row form-group">
									<label class="col-sm-3">Condition</label>
									<div class="col-sm-9 user-type">
										<input type="radio" name="sellType" value="used18" id="used18"> <label for="used18">Used </label>
										<input type="radio" name="sellType" value="new18" id="new18"> <label for="new18">New</label>		
									</div>
								</div>
								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>



						<hr/>

						<p>Category Name: Vehicles</p>
						<p>Subcategory: Car Rentals & Auto Services</p>
						<form action="#">
								<div class="row form-group add-title">
									<label class="col-sm-3 label-title">Service type</label>
									<div class="col-sm-9">
										<select class="form-control" id="exampleFormControlSelect1">
										      <option>Beverages</option>
										      <option>Farozen</option>
										      <option>Rice & Pulses</option>
										      <option>Canned, Dry & Packaged Foods</option>
										      <option>Dairsy & Chilled</option>
										      <option>Biscuits, Sanckes</option>
								    	</select>
									</div>
								</div>
								 <div class="row form-group add-title">
									<label class="col-sm-3 label-title">Title</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="text" placeholder="Keep it short">
									</div>
								</div>
								<div class="row form-group item-description">
									<label class="col-sm-3 label-title">Description</label>
									<div class="col-sm-9">
										<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
									</div>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Price</label>
									<div class="col-sm-9">
										<label>$USD</label>
										<input type="text" class="form-control" placeholder="Pick a good price - what would you pay?" id="text1">
										<input type="radio" name="price" value="negotiable11" id="negotiable7">
										<label for="negotiable1">Negotiable </label>
									</div>
								</div>
								<div class="row form-group add-image">
									<label class="col-sm-3 label-title">Add upto 4 photos</span> </label>
									<div class="col-sm-9">
										<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
										<div class="upload-section">
											<label class="upload-image" for="upload-image-one">
												<input type="file" id="upload-image-one">
											</label>										

											<label class="upload-image" for="upload-image-two">
												<input type="file" id="upload-image-two">
											</label>											
											<label class="upload-image" for="upload-image-three">
												<input type="file" id="upload-image-three">
											</label>										

											<label class="upload-image" for="upload-imagefour">
												<input type="file" id="upload-imagefour">
											</label>
										</div>	
									</div>
								</div>
								<div class="section seller-info">
									<h4>Contact details</h4>
									<span>Name</span>
									<h6>Sorif Ahmed Robin Khan</h6>
									<span>Email</span>
									<h6>rabinmia7578@gmail.com</h6>
								</div>
								<div class="row form-group select-price">
									<label class="col-sm-3 label-title">Add your phone</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" placeholder="Enter phone number" id="text1">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Post Your Ad</button>
						</form>



























































						<!-- ========= differnt form end ============= -->
						</div>
                        <form action="promotion.html" method="" enctype="multiple/form-data">
							<fieldset>
								<div class="section postdetails">
									<h4>Sell an item or service <span class="pull-right">* Mandatory Fields</span></h4>
									<div class="form-group selected-product">
										<ul class="select-category list-inline">
											<li>
												<a href="{{route('ad-post',['type' => request()->type ?? null])}}">
													<span class="select">
														<img src="{{ asset('assets/images/icon/2.png')}}" alt="Images" class="img-fluid">
													</span>
													{{$subcat_info->parent_name ?? ''}}
												</a>
											</li>

											<li class="active">
												<a href="javascript:void(0)">{{$subcat_info->name ?? ''}}</a>
											</li>
										</ul>
										
									</div>
									<div class="row form-group">
										<label class="col-sm-3">Type of ad<span class="required">*</span></label>
										<div class="col-sm-9 user-type">
											<input type="radio" name="sellType" value="newsell" id="newsell"> <label for="newsell">I want to sell </label>
											<input type="radio" name="sellType" value="newbuy" id="newbuy"> <label for="newbuy">want to buy</label>	
										</div>
									</div>
									<div class="row form-group add-title">
										<label class="col-sm-3 label-title">Title for your Ad<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="text" placeholder="ex, Sony Xperia dual sim 100% brand new ">
										</div>
									</div>
									<div class="row form-group add-image">
										<label class="col-sm-3 label-title">Photos for your ad <span>(This will be your cover photo )</span> </label>
										<div class="col-sm-9">
											<h5><i class="fa fa-upload" aria-hidden="true"></i>Select Files to Upload / Drag and Drop Files <span>You can add multiple images.</span></h5>
											<div class="upload-section">
												<label class="upload-image" for="upload-image-one">
													<input type="file" id="upload-image-one">
												</label>										

												<label class="upload-image" for="upload-image-two">
													<input type="file" id="upload-image-two">
												</label>											
												<label class="upload-image" for="upload-image-three">
													<input type="file" id="upload-image-three">
												</label>										

												<label class="upload-image" for="upload-imagefour">
													<input type="file" id="upload-imagefour">
												</label>
											</div>	
										</div>
									</div>
									<div class="row form-group select-condition">
										<label class="col-sm-3">Condition<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="radio" name="itemCon" value="new" id="new"> 
											<label for="new">New</label>
											<input type="radio" name="itemCon" value="used" id="used"> 
											<label for="used">Used</label>
										</div>
									</div>
									<div class="row form-group select-price">
										<label class="col-sm-3 label-title">Price<span class="required">*</span></label>
										<div class="col-sm-9">
											<label>$USD</label>
											<input type="text" class="form-control" id="text1">
											<input type="radio" name="price" value="negotiable" id="negotiable">
											<label for="negotiable">Negotiable </label>
										</div>
									</div>
									<div class="row form-group brand-name">
										<label class="col-sm-3 label-title">Brand Name<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" class="form-control" placeholder="ex, Sony Xperia">
										</div>
									</div>
									<div class="row form-group additional">
										<label class="col-sm-3 label-title">Additional<span class="required">*</span></label>
										<div class="col-sm-9">
											<div class="checkbox">
												<label for="camera"><input type="checkbox" name="camera" id="camera"> Camera</label>
												<label for="dual-sim"><input type="checkbox" name="dual-sim" id="dual-sim"> Dual SIM</label>
												<label for="keyboard"><input type="checkbox" name="keyboard" id="keyboard">  Physical keyboard</label>
												<label for="3g"><input type="checkbox" name="3g" id="3g"> 3G</label>

												<label for="gsm"><input type="checkbox" name="gsm" id="gsm"> GSM</label>

												<label for="screen"><input type="checkbox" name="screen" id="screen"> Touch screen</label>
											</div>
										</div>
									</div>
									
									<div class="row form-group model-name">
										<label class="col-sm-3 label-title">Model</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="model" placeholder="ex, Sony Xperia dual sim 100% brand new ">	
										</div>
									</div>
									
									<div class="row form-group item-description">
										<label class="col-sm-3 label-title">Description<span class="required">*</span></label>
										<div class="col-sm-9">
											<textarea class="form-control" id="textarea" placeholder="Write few lines about your products" rows="8"></textarea>		
										</div>
									</div>
									<div class="row">
										<div class="col-sm-9 offset-sm-3">
											<p>5000 characters left</p>
										</div>
									</div>								
								</div><!-- section -->
								
								<div class="section seller-info">
									<h4>Seller Information</h4>
									<div class="row form-group">
										<label class="col-sm-3 label-title">Condition<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="radio" name="sellerType" value="individual" id="individual">
											<label for="individual">Individual</label>
											<input type="radio" name="sellerType" value="dealer" id="dealer"> 
											<label for="dealer">Dealer</label>
										</div>
									</div>
									<div class="row form-group">
										<label class="col-sm-3 label-title">Your Name<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" name="name" class="form-control" placeholder="ex, Jhon Doe">
										</div>
									</div>
									<div class="row form-group">
										<label class="col-sm-3 label-title">Your Email ID<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="email" name="email" class="form-control" placeholder="ex, jhondoe@mail.com">
										</div>
									</div>
									<div class="row form-group">
										<label class="col-sm-3 label-title">Mobile Number<span class="required">*</span></label>
										<div class="col-sm-9">
											<input type="text" name="mobileNumber" class="form-control" placeholder="ex, +912457895">
										</div>
									</div>
									<div class="row form-group">
										<label class="col-sm-3 label-title">Address</label>
										<div class="col-sm-9">
											<input type="text" name="address" class="form-control" placeholder="ex, alekdera House, coprotec, usa">
										</div>
									</div>
								</div><!-- section -->
								<div class="checkbox section agreement">
									<label for="send">
										<input type="checkbox" name="send" id="send">
										Send me Trade Email/SMS Alerts for people looking to buy mobile handsets in www By clicking "Post", you agree to our <a target="_blank" href="{{route('terms-conditions')}}">Terms of Use</a> and <a target="_blank" href="{{route('privacy-policy')}}">Privacy Policy</a> and acknowledge that you are the rightful owner of this item and using Trade to find a genuine buyer.
									</label>
									<button type="submit" class="btn btn-primary">Post Your Ad</button>
								</div><!-- section -->
								
							</fieldset>
						</form><!-- form -->	
					</div>
				

					<!-- quick-rules -->	
					<div class="col-lg-4">
						<div class="section quick-rules">
							<h4>Quick rules</h4>
							<p class="lead">Posting an ad on <a href="#">Dalalbd.com</a> is free! However, all ads must follow our rules:</p>

							<ul>
								<li>Make sure you post in the correct category.</li>
								<li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
								<li>Do not upload pictures with watermarks.</li>
								<li>Do not post ads containing multiple items unless it's a package deal.</li>
								<li>Do not put your email or phone numbers in the title or description.</li>
								<li>Make sure you post in the correct category.</li>
							</ul>
						</div>
					</div><!-- quick-rules -->	
				</div><!-- photos-ad -->				
			</div>	
		</div><!-- container -->
	</section><!-- main -->
	
@endsection

@push('custom_footer_script')
   
@endpush