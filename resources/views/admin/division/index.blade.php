@extends('admin.layout.master')

@section('web_settings','open')
@section('divisions','active')

@section('title') Divisions @endsection
@section('page-name') Divisions @endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
<li class="breadcrumb-item active">Divisions</li>
@endsection

@php
$roles = userRolePermissionArray();
$rows = $data['data'];
@endphp

@section('content')
<div class="content-body">
  <section id="pagination">
    <div class="row">
      <div class="col-12">
        <div class="card card-sm">
          <div class="card-header">

            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
            <div class="heading-elements">
              <ul class="list-inline mb-0">
                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                <li><a data-action="close"><i class="ft-x"></i></a></li>
              </ul>
            </div>
          </div>
          <div class="card-content collapse show">
            <div class="card-body card-dashboard">
              <div class="table-responsive">
                <table class="table table-striped table-bordered alt-pagination table-sm" id="indextable">
                  <thead>
                    <tr>
                      <th style="width: 40px;">Sl.</th>
                      <th style="max-width: 200px;">Country</th>
                      <th>Division Name</th>
                      <th>URL Title</th>

                    </tr>
                  </thead>
                  <tbody>
                    @foreach($rows as $row)
                    <tr>
                      <td>{{ $loop->index + 1 }}</td>
                      <td>{{$row->country->name ?? ''}}</td>
                      <td>{{ $row->name }}</td>
                      <td>{{ $row->url_slug }}</td>


                    </tr>
                    @endforeach

                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>




@endsection


@push('custom_js')




@endpush('custom_js')
