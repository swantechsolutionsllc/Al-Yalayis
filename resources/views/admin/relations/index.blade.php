@extends('admin.layouts.master')
@section('pageTitle', 'Area Management')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">
<style>
    ul {
        text-align: left !important;
    }

    .bg-dark{
        color:#fff;
    }
    .list-group-item strong{
        background:#343a40bf;
        color:#fff;
        text-align: center;
        display:block;
        border-radius:5px 5px 0px 0px;
    }
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
    
    
        .displayNone{
            display:none;
        }
        .selected{
            border:2px solid;
        }
        .preview-image{
            width:100%; 
            height: 140px;
           
        }
        .preview-images{
            width:150px;
            background-color: #d4d4d4;
            padding: 5px;
            margin: 0px 5px 10px;
            height: 150px;
        }
        
</style>
@endsection
@section('content')

<div class="content">
    <!-- Dynamic Table Full -->
    <div class="row">
       
        
        <div class="col-md-12">
            <div class="block block-rounded">
                
                <div class="block-header">
                    <h3 class="block-title">Schedules</h3>
                </div>
                
                <div class="block-content block-content-full">
            @if(session()->has("success"))
                <div class="alert alert-success d-flex align-items-center" role="alert">
                    <div class="flex-00-auto">
                        <i class="fa fa-fw fa-check"></i>
                    </div>
                    <div class="flex-fill ml-3">
                        <p class="mb-0">{{session()->get("success")}}</p>
                    </div>
                </div>
            @endif
           
            @if(session()->has("error"))
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                    <div class="flex-00-auto">
                        <i class="fa fa-fw fa-times-circle"></i>
                    </div>
                    <div class="flex-fill ml-3">
                        <p class="mb-0">{{session()->get("error")}}</p>
                    </div>
                </div>
            @endif
            @if ($errors->any())
                <div class="alert alert-danger d-flex align-items-center justify-content-between" role="alert">
                    <div class="flex-fill mr-3">
                        @foreach ($errors->all() as $error)
                            <p class="mb-0">{{ $error }}</p>
                        @endforeach
                    </div>  
                    <div class="flex-00-auto">
                        <i class="fa fa-fw fa-times-circle"></i>
                    </div>
                </div>
            @endif
                    <!-- DataTables init on table by adding .js-dataTable-full class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
                    <table class="table table-bordered   table-vcenter" id="schedules">
                        <thead class="thead-dark">
                            <tr>
                                <th>Zones</th>
                                    <th>Cities</th>
                                    <th>Branches</th>
                                    <th>Device Group</th>
                                    <th>Devices</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($zones as $zone)
                            <tr>
                                <td class="text-center">{{$zone->name}}<br>

                                    {{-- <button class="btn btn-primary">Add Zone</button> --}}
                                </td>
                                <td>
                                    <ul class="list-group">
                                        @foreach($zone->cities as $city)
                                            <li style="text-align: center;color: black"
                                                class="list-group-item">{{$city->name}}</li>
                                                
                                        @endforeach
                                        <li style="text-align: center;color: black"
                                                class="list-group-item"> <button zone-name="{{ $zone->name }}" zone-id="{{ $zone->id }}" class="bt-sm btn btn-outline-info btn-rounded addCity">Add City</button></li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list-group">
                                        @foreach($zone->cities as $city)
                                            <li style="color: black" class="list-group-item">
                                                <strong style="padding:5px"
                                                       >{{$city->name}}</strong>
                                                <ul class="list-group">
                                                    @foreach($city->branches as $branch)
                                                        <li style="text-align: center;color: black"
                                                            class="list-group-item">{{$branch->branch_name}}</li>
                                                    @endforeach
                                                    <li style="text-align: center;color: black"
                                                class="list-group-item"> <button class="bt-sm btn btn-outline-success btn-rounded addBranch" city-name="{{ $city->name }}" city-id="{{ $city->id }}" >Add Branch</button></li>
                                                </ul>
                                            </li>
                                        @endforeach
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list-group">
                                        @foreach($zone->cities as $city)
                                            @foreach($city->branches as $branch)
                                                <li class="list-group-item">
                                                    <strong style="padding: 5px"
                                                           >{{$branch->branch_name}}</strong>
                                                    <ul class="list-group">
                                                        @foreach($branch->device_group as $dg)
                                                            <li class="list-group-item"
                                                                style="text-align: center;color:black">
                                                                {{$dg->name}}
                                                            </li>
                                                        @endforeach
                                                        <li style="text-align: center;color: black"
                                                class="list-group-item"> <button class="bt-sm btn btn-outline-warning btn-rounded deviceGroup" branch-name="{{ $branch->branch_name }}" branch-id="{{ $branch->id }}" >Add Device Group</button></li>
                                                    </ul>
                                                </li>
                                            @endforeach
                                        @endforeach
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list-group">
                                        @foreach($zone->cities as $city)
                                            @foreach($city->branches as $branch)
                                                @foreach($branch->device_group as $dg)
                                                    <li class="list-group-item">
                                                        <strong style="padding: 5px"
                                                                >{{$dg->name}}</strong>
                                                        <ul class="list-group">
                                                            @foreach($dg->devices as $device)
                                                                <li class="list-group-item"
                                                                    style="text-align: center;color:black">
                                                                    {{$device->device_name}}
                                                                </li>
                                                            @endforeach
                                                            <li style="text-align: center;color: black"
                                                class="list-group-item"> <button group-name="{{ $dg->name }}" device-group-id="{{ $dg->id }}" zone-id="{{ $zone->id }}" city-id="{{ $city->id }}" branch-id="{{ $branch->id }}"  class="bt-sm btn btn-outline-info btn-rounded addDevice">Add Device</button></li>
                                                        </ul>
                                                    </li>
                                                @endforeach
                                            @endforeach
                                        @endforeach
                                    </ul>
                                </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td colspan="5">
                                <button data-toggle="modal" data-target="#addZone" type="button"  class="btn-sm btn btn-outline-secondary btn-rounded">Add Zone</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@include('admin.device_groups.modals.add')
@include('admin.cities.modals.add')  
@include('admin.branches.modals.add')    
@include('admin.zones.modals.add')
@include('admin.devices.modals.add')   
@endsection
@section('js')
<script>
    
    $(".addBranch").click(function(){
        var cityId = $(this).attr('city-id');
        var name = $(this).attr('city-name');
        $('#cityName').text(name);
        $("#cityID").val(cityId);
        $("#addBranch").modal('show');
    });
    $(".addCity").click(function(){
        var zoneId = $(this).attr('zone-id');
        var name = $(this).attr('zone-name');
        $('#zoneName').text(name);
        $("#zoneID").val(zoneId);
        $("#addCity").modal('show');
    });
    $(".deviceGroup").click(function(){
        var branchID = $(this).attr('branch-id');
        var name = $(this).attr('branch-name');
        $('#branchName').text(name);
        $("#branchID").val(branchID);
        $("#addDeviceGroup").modal('show');
    });
    $(".addDevice").click(function(){
        var deviceGroupId = $(this).attr('device-group-id');
        var name = $(this).attr('group-name');
        var zone_id =  $(this).attr('zone-id');
        var city_id =  $(this).attr('city-id');
        var branch_id =  $(this).attr('branch-id');
        $('#groupName').text(name);
        $("#deviceGroupId").val(deviceGroupId);
        $("#zone_id").val(zone_id);
        $("#city_id").val(city_id);
        $("#branch_id").val(branch_id);
        $("#addDevice").modal('show');
        $(".cd-fields").hide();
        setTimeout(() => {
           
            $(".counters").select2({
                placeholder: "Select Counters",
                allowClear: true
            });    
        }, 1000);
        
    });
    $(".orientation").click(function() {
        $(".orientation").removeClass('orientation-selected');
        $(this).addClass('orientation-selected');
    });
    $(".device-type").click(function() {
        $(".device-type").removeClass('orientation-selected');
        $(this).addClass('orientation-selected');
       
    });
     $(".addMore").click(function(){
        var type = $(this).attr('data-type');
        var html = '<div class="form-group"><label for="val-username">Name <span class="text-danger">*</span></label><input id="orgName" type="text" name="name[]" required placeholder="Name" class="form-control" value=""></div>';
        $("#more-content-"+type).append(html);
    });
    function checkDl(){
        var imei = $("#imei").val();
        var deviceType = $('#device_type').val();
        if(deviceType == 'md' && imei != ''){
            $("#deviceSubmitBtn").attr('disabled', true);
            var url= "{{Route('dl-check-new')}}";
            $.ajax({
                    url:url,
                    type: "POST",
                    data: {imei:imei},
                    success:function(data){
                       
                        if(data.status){
                            $("#deviceSubmitBtn").attr('disabled', false);
                            $("#device_no_error").hide();
                        }else{
                            $("#device_no_error").text(data.message);
                            $("#device_no_error").show();
                        }
                    }
            });
        }else{
            $("#deviceSubmitBtn").attr('disabled', false);
            $("#device_no_error").hide();
        }
    }
    $("#deviceForm").submit(function(e){
        e.preventDefault();
        var frm = document.getElementById('deviceForm');
        formData = new FormData(frm);
        $('.invalid-feedback').hide();
        $.ajax({
                url: "{{url('devices')}}",
                method: "POST",
                data: formData,
                dataType: 'JSON',
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $("#addDevice").modal('hide');
                    location.reload();
                }, error: function (data) {
                   var errors = data.responseJSON.errors;
                    $('.invalid-feedback').hide();
                    $.each(errors, function (key, val) {
                        $('#' + key + '_error').show();
                        $('#' + key + '_error').html(errors[key]);
                    });
                    return false;
                }
            });
    });
    $('#imei, #device_type').change(function(){
        checkDl();
    });
    $(".toggleanchor").click(function(e) {
        e.preventDefault();    
        var id      = $(this).attr('data-id');
        var type    = $(this).attr('data-type');
        var src     = $(this).attr('data-src');
        var box = $(this).attr('data-box');
            
        $("#"+id).prop('checked', true);
        $(".toggleanchor").removeClass('selected');
        $(this).addClass('selected');
        $("#preview"+box).attr('src', src);
        $("#preview"+box).parent().removeClass('displayNone');
    });
    $("#content-type").change(function(){
        var contentType = $(this).val();
        if(contentType == 'video'){
            $("#video-1").show();
            $("#image-1").hide();
        }else{
            $("#video-1").hide();
            $("#image-1").show();
        }
    });
    $("#device_type").change(function(){
        var value = $(this).val();
        var mdSettings = JSON.parse('<?php echo addslashes($mdSetting); ?>');
        var cdSettings = JSON.parse('<?php echo addslashes($cdSetting); ?>');
        $("#setting_id").empty();
        $('#setting_id').append('<option value="">Select</option>');
        if(value == 'cd'){
            $("#background-image").removeClass('displayNone');
            $("#md_counters").addClass('displayNone');
            $(".cd-fields").show();
            $.each(cdSettings, function(key,value){
                $('#setting_id').append('<option value="'+ value.id +'">'+ value.name +'</option>');
            });
        }else{
            $("#background-image").addClass('displayNone');
           $(".cd-fields").hide();
            $("#md_counters").removeClass('displayNone');
            $(".counters").select2({
                placeholder: "Select Counters",
                allowClear: true
            });
            $.each(mdSettings, function(key,value){
                $('#setting_id').append('<option value="'+ value.id +'">'+ value.name +'</option>');

            });
        }
    });
</script>
@endsection
