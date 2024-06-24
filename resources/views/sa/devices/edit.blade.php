@extends('sa.layouts.master')
@section('pageTitle', 'Create Categories')
@section('breadcrumb')
    <li><a href="{{url('/')}}"><i class="demo-pli-home"></i></a></li>
    <li><a href="{{url('/')}}">Dashboard</a></li>
    <li><a href="{{url('devices')}}"> Devices</a></li>
    <li class="active">Edit</li>
@endsection
@section('content')
    <style>
        .select2-container{
            width: 100% !important;
        }
    </style>
    <div id="page-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading panel-primary panel-colorful">
                        <h3 class="panel-title">Manage Devices</h3>
                    </div>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="panel-body panel-colorful">
                        <form class="form-horizontal" method="POST" action="{{route('sa.update-device', $devices->dl->id)}}">
                            @csrf
                            @method('PUT')
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label text-primary text-bold"
                                           for="demo-hor-inputemail">Device Name</label>
                                    <div class="col-sm-5">
                                        <input required type="text" placeholder="Deive Name" id="demo-hor-inputemail"
                                               class="form-control" readonly="" value="{{$devices->device_name}}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-4 control-label text-primary text-bold"
                                           for="demo-hor-inputemail">Device No</label>
                                    <div class="col-sm-5">
                                        <input type="text" placeholder="Deive No" id="demo-hor-inputemail"
                                               class="form-control" readonly="" value="{{$devices->device_no}}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label text-primary text-bold"
                                           for="demo-hor-inputemail">Lisence Expiery Date </label>
                                    <div class="col-sm-5">
                                        <input type="date" 
                                               class="form-control" name="expiery"
                                                value="{{date('Y-m-d', $devices->dl->expiery)}}">
                                    </div>
                                </div>
                                
                            
                            <div class="panel-footer text-right">
                                <button class="btn btn-primary" type="submit">Update Device</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
    <script>
        $(document).ready(function (e) {
           $("#device_orientation").select2({
               placeholder: "Select Device Orientation"
           });
           $("#status").select2({
           });
        })
    </script>
@endsection

