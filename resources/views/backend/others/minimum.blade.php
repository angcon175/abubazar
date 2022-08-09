@extends('layouts.backend.admin')

@section('title') {{ __('dashboard') }} @endsection

@section('breadcrumbs')
    <div class="row mb-2">
        <div class="col-sm-6">
            <h1 class="m-0">{{ __('dashboard') }}</h1>
        </div>

    </div>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-title">{{ __('Minimum Qualifications') }}</h3>
                        </div>
                        <div class="col-md-6">
                            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal">
                                Create Minimum Qualifications
                            </button>
                        </div>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <form action="{{route('admin.minimum.qualifications.store')}}" method="POST">
                                        @csrf
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Create Minimum Qualifications</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group row">
                                                <div class="col-md-3">
                                                    <label for="">Name</label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input type="text" class="form-control" name="name" placeholder="Minimum Qualifications Name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body table-responsive p-0">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>{{ __('SL') }}</th>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Action') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($minimum as $key => $busi)
                                <tr>
                                    <td>{{$key + 1}}</td>
                                    <td>{{$busi->name}}</td>
                                    <td>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit_{{$key}}">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </td>
                                    <div class="modal fade" id="edit_{{$key}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <form action="{{route('admin.minimum.qualifications.update', $busi->id)}}" method="POST">
                                                    @csrf
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Edit Minimum Qualifications</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-group row">
                                                            <div class="col-md-3">
                                                                <label for="">Name</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" name="name" value="{{$busi->name}}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary">Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    {{ $minimum->links('pagination::bootstrap-4') }}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')

@endsection
