@extends('admin.layouts.master')
@section('pageTitle', 'Create Device')
@section('styles')
<style>
     
	
</style>
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{url('counters')}}" enctype="multipart/form-data" id="myform">
        @csrf
        
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Add New Counter</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        
                        
                      
                        <div class="form-group">
                            <label for="val-username">Counter Name <span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Deivce Name" id="demo-hor-inputemail"
                            class="form-control" name="name" value="{{old('name')}}">
                            @error('device_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        
                        <div class="form-group">
                            <label for="val-username">IMEI/Mac Address<span class="text-danger">*</span></label>
                            <input required type="text" value="{{old('device_no')}}" placeholder="IMEI/Mac Address" id="demo-hor-inputemail"
                            class="form-control" name="device_no" >
                            @error('device_no')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Device License Key <span class="text-danger">*</span></label>
                            <input required type="text" value="{{old('device_mac_address')}}" placeholder="Device License Key" id="demo-hor-inputemail"
                            class="form-control" name="device_mac_address" >
                            @error('device_mac_address')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Name in QMS<span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Counter name in QMS" id="demo-hor-inputemail"
                            class="form-control" name="name_in_qms" value="{{old('name_in_qms')}}">
                            @error('device_model')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group playlists">
                            <label for="val-username">Main Display<span class="text-danger">*</span></label>
                            <select   name="device_id" id="device_id" required class="form-control">
                                <option value=""></option>
                                @foreach($devices as $device)
                                    <option value="{{$device->id}}" > {{$device->device_name}}</option>
                                @endforeach
                            </select>
                            
                        </div>
                        
                        
                        
                    </div>

                </div>
                <!-- END Regular -->

                <!-- Advanced -->
                <!-- END Advanced -->

                <!-- Third Party Plugins -->
                
                <!-- END Third Party Plugins -->

                <!-- Submit -->
                <div class="row items-push">
                    <div class="col-lg-7 offset-lg-4">
                        <button type="submit" class="btn btn-alt-primary">Submit</button>
                    </div>
                </div>
                <!-- END Submit -->
            </div>
        </div>
    </form>
    <!-- jQuery Validation -->
</div>
@endsection
@section('js')
    
@endsection