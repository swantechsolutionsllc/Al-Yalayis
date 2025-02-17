@extends('sa.layouts.master')
@section('pageTitle', 'All Categories')
@section('breadcrumb')
    <li><a href="{{url('/')}}"><i class="demo-pli-home"></i></a></li>
    <li><a href="{{url('/')}}">Dashboard</a></li>
    <li class="active"><a href="{{url('branches')}}"> Devices</a></li>
@endsection

@section('content')
    <div id="page-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading">
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
                    @if(session()->has("error"))
                        <div class="alert alert-danger">
                            <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                            <stong>{{session()->get("error")}}</stong>
                        </div>
                    @endif
                    @if(session()->has("success"))
                        <div class="alert alert-success">
                            <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                            <stong>{{session()->get("success")}}</stong>
                        </div>
                    @endif
                    <div id="message" class="alert alert-success">
                        <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                        <strong></strong>
                    </div>
                    <div class="panel-body">
                        
                            <a href="{{url('devices/create')}}" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add</a>
                       
                       
                        <br><br>
                        <div class="panel">
                            <div class="panel-body">
                                <div class="table-responsive">
                                <table id="deviceTables" class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="checkBoxDiv" >
                                            <div class="checkbox">
                                                <input id="check" value="" class="magic-checkbox checkBoxMain"
                                                       type="checkbox">
                                                <label for="check"></label>
                                            </div>
                                        </th>
                                        <th>#</th>
                                        <th>Device Name</th>
                                        <th>License Key</th>
                                        <th>License Date</th>
                                        <th>Device No</th>
                                        <th>Device MAC Address</th>
                                        <th>Device Model</th>
                                        <th>Device Screen Size (h x w)</th>
                                        <th>Device Storage Memory</th>
                                        <th>Device Screen Resolution</th>
                                        <th>Device Orientation</th>
                                        <th>Status</th>
                                        <th>Edit</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($devices as $key => $device)
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input data-device_id="{{$device->id}}" id="device-check-{{$device->id}}"
                                                           value="{{$device->id}}" class="magic-checkbox" type="checkbox">
                                                    <label for="device-check-{{$device->id}}"></label>
                                                </div>
                                            </td>
                                            <td style="width: 40px">{{$key +  1}}</td>
                                            <td>{{$device->device_name ? $device->device_name : 'N/A'}}</td>
                                            <td>{{$device->dl?$device->dl->key:'N/A'}}</td>
                                            <td>{!! $device->checkStatus($device->dl?$device->dl->expiery:'') !!}</td>
                                            <td>{{$device->device_no ? $device->device_no : 'N/A' }}</td>
                                            <td>{{$device->device_mac_address ? $device->device_mac_address : 'N/A'}}</td>
                                            <td>{{$device->device_model ? $device->device_model : 'N/A'}}</td>
                                            <td>{{$device->device_screen_height ? $device->device_screen_height : 'N/A' }}
                                                x {{$device->device_screen_width ? $device->device_screen_height : 'N/A' }}</td>
                                            <td>{{$device->device_storage_memory ? $device->device_storage_memory : 'N/A'}}</td>
                                            <td>{{$device->screen_resolution ? $device->screen_resolution : 'N/A'}}</td>
                                            <td>{{$device->device_orientation ? $device->device_orientation : 'N/A'}}</td>
                                            
                                            <td>
                                                {!! $device->status == 1? "<kbd class='bg-success'>Active</kbd>":"<kbd class='bg-danger'>Inctive</kbd>"!!}
                                            </td>
                                            <td>
                                                <a class="btn btn-primary btn-sm"
                                                   href="{{route('sa.edit-device', $device)}}"><i
                                                        class="fas fa-edit"></i></a>
                                            </td>
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
        </div>
    </div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="{{asset('admin-assets/scripts/devices.js')}}"></script>

