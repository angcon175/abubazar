@extends('layouts.app')

@push('custom_css')

<link rel="stylesheet" href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css">

@endpush


@section('content')
<!-- main -->
<section id="main" class="clearfix payment-success-page">
   <div class="container">
      <div class="breadcrumb-section">
         <!-- breadcrumb -->
         <ol class="breadcrumb">
            <li><a href="{{ route('home') }}">Home</a></li>
            <li>payment</li>
         </ol>
         <!-- breadcrumb -->                        
      </div>
      <!-- banner -->
      <div class="adpost-details mt-15">
         <div class="row">
            <div class="col-lg-8">
              <div class="alert alert-success" role="alert">
                Your payment has been success !
              </div>

            </div>
         
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
                     <li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
                     <li>Do not upload pictures with watermarks.</li>
                     <li>Do not post ads containing multiple items unless it's a package deal.</li>
                  </ul>
               </div>
            </div>
            <!-- quick-rules --> 

                    </div>
         <!-- photos-ad -->                
      </div>
   </div>
   <!-- container -->
</section>




@endsection

@push('custom_js')

<script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>

{!! Toastr::message() !!}

@endpush