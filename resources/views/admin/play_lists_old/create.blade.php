@extends('admin.layouts.master')
@section('pageTitle', 'Create Device')
@section('styles')
<style>
       .orientation {
            background:url("{{ asset('assets/img/horizental.svg') }}");
            width: 110px;
            height: 60px;
            margin: 1%;
            text-align: center;
            font-weight: normal;
            font-size: 11px;
            color: #000;
            background-repeat: no-repeat;
            padding-top: 60px;
            padding-bottom: 7px;
            border-color: #e5e5e5;
            border-style: solid;
            border-width: 1px;
            border-radius: 3px;
            background-position: 50% 50%;
            background-size: auto 42px;
            z-index: 100;
            background-color: transparent;
            cursor: grab;
            box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
            -webkit-box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
            background-color: #fff;
	}
	
	.potrait {
        background:url("{{ asset('assets/img/vertical.svg') }}");
		background-repeat: no-repeat;
        background-position: center;
        width: 60px !important;
		background-size: auto 35px !important;
		margin-left: 15px;
		margin-right: 15px;
	}
	.device-type{
        background:url("{{ asset('assets/img/md.svg') }}");
        width: 110px;
        height: 60px;
        margin: 1%;
        text-align: center;
        font-weight: normal;
        font-size: 11px;
        color: #000;
        background-repeat: no-repeat;
        padding-top: 60px;
        padding-bottom: 7px;
        border-color: #e5e5e5;
        border-style: solid;
        border-width: 1px;
        border-radius: 3px;
        background-position: 50% 50%;
        background-size: auto 42px;
        z-index: 100;
        background-color: transparent;
        cursor: grab;
        box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
        -webkit-box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
        background-color: #fff;
        
    }
    .cd{
        background:url("{{ asset('assets/img/cd.svg') }}");
        background-repeat: no-repeat;
        background-size: contain;
        background-position: center;
    }
	.orientation-selected {
		border: 1px solid #000000;

	}
	
</style>
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{url('devices')}}" enctype="multipart/form-data" id="myform">
        @csrf
        
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Add New Device</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="val-select2">Device Type <span class="text-danger">*</span></label>
                            <br>
                            <div style="display: inline-flex; float:left;">
                                <input type="radio" style="display: none;" checked name="device_type" id="cd" value="cd">
                                <input type="radio" name="device_type" style="display: none;" id="md" value="md">
                                <label for="cd" class="device-type cd orientation-selected"></label>
                                <label for="md" class="device-type "></label>
                            </div>    
                            @error('device_orientation')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <br><br><br>
                        
                        <div class="form-group">
                            <label for="val-select2">Device Orientation <span class="text-danger">*</span></label>
                            <br>
                            <div style="display: inline-flex; float:left;">
                                <input type="radio" style="display: none;" checked name="device_orientation" id="landscape" value="landscape">
                                <input type="radio" name="device_orientation" style="display: none;" id="portrait" value="portrait">
                                <label for="landscape" class="orientation orientation-selected"></label>
                                <label for="portrait" class="orientation potrait"></label>
                            </div>    
                            @error('device_orientation')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <br><br><br>
                        <div class="form-group">
                            <label for="val-username">Device Name <span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Deivce Name" id="demo-hor-inputemail"
                            class="form-control" name="device_name" value="{{old('device_name')}}">
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
                            <label for="val-username">Device Model<span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Device Model" id="demo-hor-inputemail"
                            class="form-control" name="device_model" value="{{old('device_model')}}">
                            @error('device_model')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Device IP Address<span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Device IP Address" id="demo-hor-inputemail"
                            class="form-control" name="ip_address" value="{{old('ip_address')}}">
                            @error('ip_address')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
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
    <script>
        	$(".orientation").click(function() {
                $(".orientation").removeClass('orientation-selected');
                $(this).addClass('orientation-selected');
            });
            $(".device-type").click(function() {
                $(".device-type").removeClass('orientation-selected');
                $(this).addClass('orientation-selected');
            });
    </script>
@endsection