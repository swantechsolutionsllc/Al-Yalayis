@extends('admin.layouts.master')
@section('pageTitle', 'Scheduling')
@section('styles')
<style>
    #zonesDropDown, #zonesDropDownFillter {
        width: 100% !important;
    }

    #citiesDropDown, #citiesDropDownFillter,#branchesDropDown, #branchesDropDownFillter, #deviceGroupsDropDownFillter, #deviceGroupsDropDown, #orientationDropDown, #devicesDropDown, #deviceTemplateDropDown {
        width: 100% !important;
        text-align: center;
    }
    #relationColumn{
        border-right: solid 4px rgb(235 235 235);
    }

    .select2-container {
        margin-bottom: 20px;
    }
    .overlay-item{
        top:15px;
        right: 25px;
    }
    .block-link-pop{
        border-radius: 25px !important;
        
    }
    .font-w600, .font-w400{
        color:#fff !important;
        text-align: center !important;
    }
    .block-cards{
        min-height: 350px;
    }
    .none{
        display: none;
    }
    .templatesRows{
        margin-bottom: 10px;
    }
    .block-content-custom{
        margin-bottom: 0px !important;
    }
    .device-card-box{
        margin-top:20px;
    }
    .block-rows{
        border-top:none !important;
        min-height:100px;
        background:#fff;
    }
    .bottom-border-none{
        border-bottom:none !important;
        /* background:#f6f7f8; */
    }
    .block-content-small{
        padding:10px 20px !important;
    }
    .block-content-small p{
        text-align:left;
        font-size: 12px; 
    }
    .block-content-small p{
        margin-bottom: 0px; 
    }
    .block-content-small p span{
        font-weight: 800;
    }
    .block-content-small img{
        max-width: 70%;
    }
    .bredcrumpp ul{
        padding:0px;
        font-size: 12px;
    }
    .bredcrumpp ul li{
        list-style: none;
        display: inline-block;
    }
    .bredcrumpp ul li a{
        display: block;
        padding-left:12px;
        background: rgb(24,45,124);
        margin: 0px;
        margin-bottom: 5px;
        font-weight: 600;
        position: relative;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
        margin-right:5px;
        color:#fff !important;

    }
    .bredcrumpp ul li a::before{
        position: absolute;
        content: "";
        left: 100%;
        top: 0px;
        border-top: 9px solid transparent;
        border-left: 8px solid rgb(24,45,124);
        border-bottom: 9px solid transparent;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
    }
    .bredcrumpp ul li a::after{
        position: absolute;
        content: "";
        left: 0px;
        top: 0px;
        border-top: 9px solid transparent;
        border-left: 8px solid #ffffff;
        border-bottom: 9px solid transparent;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
    }
    .no-padding{
        padding:0px;
    }
    .no-margin{
        margin:0px;
    }
    .ribbon-bottom .ribbon-box {
        font-size: 12px;
        top: 3.20rem !important;
    }
</style>
@endsection
@section('content')
    <div class="content">
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
        <div class="block block-rounded" id="createNewServiceSection" >
            <div class="row">
                <div class="col-md-12">
                    <div class="block-header">
                        <h3 class="block-title">Create Schedules</h3>
                    </div>
                    <div class="block-content block-content-full">
                        <form action="{{route('set_schedule')}}" method="post" autocomplete="off">
                            @csrf
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="zone_id" id="zonesDropDown" required="">
                                            <option value=""></option>
                                            @foreach($zones as $zone)
                                                <option value="{{$zone->id}}">{{$zone->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="city_id" id="citiesDropDown" disabled>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="branch_id" id="branchesDropDown" disabled>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="deviceGroup_id" id="deviceGroupsDropDown" disabled>
                                            <option value=""></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="orientation" id="orientationDropDown" required="" >
                                            <option value=""></option>
                                            <option value="portrait">Portrait</option>
                                            <option value="landscape">Landscape</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="devices[]" id="devicesDropDown" multiple >
                                            <option value=""></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select id="deviceTemplates" required="" name="deviceTemplate" style="width: 100%;" >
                                            <option value=""></option>
                                            @foreach($deviceTemplateData as $deviceTemplate)
                                                <option value="{{$deviceTemplate->id}}" title="{{$deviceTemplate->device_templates->template_images}}"> {{$deviceTemplate->device_templates->template_images}} //{{$deviceTemplate->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type='text' class="form-control" id='start_time' name="start_time" required="" placeholder="Select Start date and time" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type='text' class="form-control" id='end_time' placeholder="Select end date and time" name="end_time" required="" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type='text' class="form-control" id='assetsDownloadTime' placeholder="Select assets download time" name="assets_download_time" required="" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="submit" name="" class="btn btn-primary" style="width: 100%;" value="submit">

                                    </div>
                                </div>
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="block block-rounded">
            <div class="block-header">
                <h3 class="block-title">Schedules</h3>
                <button type="button" id="createNewService" class="btn btn-outline-secondary"><i
                    class="fa fa-plus"></i> &nbsp;&nbsp;Create 
                </button>
            </div>
        </div>
        <div class="block block-rounded">
            <div class="row">
                <div class="col-md-12">
                    <div class="block-content block-content-full">
                        <div class="row">
                            <div class="col-sm-3">
                                <select  id="zonesDropDownFillter" >
                                    <option value=""></option>
                                    @foreach($zones as $zone)
                                        <option value="{{$zone->id}}">{{$zone->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select  id="citiesDropDownFillter" disabled="" >
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select  id="branchesDropDownFillter" disabled >
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select  id="deviceGroupsDropDownFillter" disabled>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @foreach($schedules->chunk(4) as $scedule)
            <div style="position: relative">
                <div class="row" >
                    @foreach ($scedule as $s)
                        @php
                            $status = '';
                            $class = '';
                            $bgClass = '';
                            $btn = '';
                            if(strtotime($s->start_time)  < strtotime(date('Y-m-d H:i:s')) && strtotime($s->end_time)  < strtotime(date('Y-m-d H:i:s')) ){
                                $status = "Ended"; 
                                $class = "text-danger";
                                $bgClass = "bg-danger";
                                $btn = "btn-danger";
                            }elseif(strtotime($s->start_time)  <= strtotime(date('Y-m-d H:i:s')) && strtotime($s->end_time)  > strtotime(date('Y-m-d H:i:s'))){
                                $status = "Active";
                                $class = "text-success";
                                $bgClass = "bg-success";
                                $btn = "btn-success";
                            }elseif(strtotime($s->start_time) > strtotime(date('Y-m-d H:i:s')) && strtotime($s->end_time)  > strtotime(date('Y-m-d H:i:s'))){
                                $status = "Incoming";
                                $class = "text-primary";
                                $bgClass = "bg-primary";
                                $btn = "btn-primary";
                            }
                        @endphp
                        <div class="col-md-3 device-card-box" >
                            <div class="block block-bordered block-cards block-content-custom ribbon">
                                <div class="block-header block-header-default {{ $bgClass }} " style="display: block;">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <h3 class="block-title text-white" >{{ $s->device->device_name }}</h3>
                                        </div>
                                        <div  class="col-md-4" style="padding-right:0px;">
                                            <div class="btn-group" style="float:right">
                                            
                                                @can('update_schedules')
                                                    <a  href="{{url('/schedule-edit/'. $s->id)}}" class="btn btn-sm {{ $btn }} js-tooltip-enabled" 
                                                    data-toggle="tooltip" data-placement="top" title="Edit Schedule">
                                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                                    </a>
                                                @endcan
                                                @can('delete_schedules')
                                                   
                                                    <a class="btn {{$btn}} btn-sm btn-circle" onclick="deleteSchedule('{{$s->id}}')"  data-toggle="modal" data-target="#delete-{{$s->id}}"><i class="fas fa-trash"></i></a>
                                                @endcan
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-content" style="min-height: 201px;">
                                    <div class="text-center">
                                        <img style="max-width: 50%;" src="{{ asset($s->deviceTemplateData->device_templates->template_images) }}" class="img-rounded" align="center" />
                                    </div>
                                    <br>
                                    <div class="bredcrumpp" >
                                        <ul>
                                            @if ($s->device->zone)
                                                <li><a>{{ $s->device->zone->name}}</a></li>
                                            @endif
                                            @if ($s->device->city)
                                                <li><a>{{ $s->device->city->name}}</a></li>
                                            @endif
                                            @if ($s->device->branches)
                                                <li><a>{{ $s->device->branches->branch_name}}</a></li>
                                            @endif
                                            @if ($s->device->device_group)
                                                <li><a>{{ $s->device->device_group->name}}</a></li>
                                            @endif
                                            
                                        </ul>
                                    </div>
                                    <hr>
                                </div>
                                <div class="block-content no-padding">
                                    <div class="block-content block-content-small text-center">
                                        <p>
                                            Status: <span class="{{$class}}" style="float: right;">{{$status}}</span>
                                        </p>
                                        <p>
                                            Start Time: <span  style="float: right;">{{ $s->start_time }}</span>
                                        </p>
                                        <p>
                                            End Time: <span  style="float: right;">{{ $s->end_time }}</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>                                  
        @endforeach
    </div>
    @include('admin.schedule.modals.delete')
@endsection
@section('js')
    <script>
        $(document).ready(function(){
            $("#zonesDropDown, #zonesDropDownFillter").select2({
                placeholder: "Select Zone",
                allowClear: true
            });
            $("#citiesDropDown, #citiesDropDownFillter").select2({
                placeholder: "Select City",
                allowClear: true
            });
            $("#branchesDropDown, #branchesDropDownFillter").select2({
                placeholder: "Select Branch",
                allowClear: true
            });
            $("#deviceGroupsDropDown,#deviceGroupsDropDownFillter").select2({
                placeholder: "Select Device Group",
                allowClear: true
            });
            $("#orientationDropDown").select2({
                placeholder: "Select Device Orientation",
                allowClear: true
            });
            $("#devicesDropDown").select2({
                placeholder: "Select Devices",
                allowClear: true
            });
            $("#createNewServiceSection").fadeOut();
            

        });
        $("#zonesDropDown").change(function(){
            var zone_id = $(this).val();
            if(zone_id){
                var url= "{{Route('get_cities', "zone_id")}}";
                $.ajax({
                    url:url.replace('zone_id', zone_id),
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#citiesDropDown').empty();
                        $('#branchesDropDown').empty().attr('disabled', true);
                        $('#deviceGroupsDropDown').empty().attr('disabled', true);
                        $('#orientationDropDown').val("-1").trigger("change");
                        $('#devicesDropDown').empty();

                        $('#citiesDropDown').removeAttr('disabled');
                        $('#citiesDropDown').append('<option value=""></option>');
                        $.each(data, function(key,value){
                            $('#citiesDropDown').append('<option value="'+ value.id +'">'+ value.name +'</option>');
                        });
                    }
                });
            }
        });
        $("#citiesDropDown").change(function(){
            var city_id = $(this).val();
            if(city_id){
                var url= "{{Route('get_brances', "city_id")}}";
                $.ajax({
                    url:url.replace('city_id', city_id),
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#branchesDropDown').empty();
                        $('#deviceGroupsDropDown').empty().attr('disabled', true);
                        $('#orientationDropDown').val("-1").trigger("change");
                        $('#devicesDropDown').empty();
                        $('#branchesDropDown').removeAttr('disabled');
                        $('#branchesDropDown').append('<option value=""></option>');

                        $.each(data, function(key,value){
                           $('#branchesDropDown').append('<option value="'+ value.id +'">'+ value.branch_name +'</option>');

                        });
                    }
                });
            }
        });
        $("#branchesDropDown").change(function(){
            var branch_id = $(this).val();
            if(branch_id){
                var url= "{{Route('get_device_groups', "branch_id")}}";
                $.ajax({
                    url:url.replace('branch_id', branch_id),
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#deviceGroupsDropDown').empty();
                        $('#devicesDropDown').empty();
                         $('#orientationDropDown').val("-1").trigger("change");
                        $('#deviceGroupsDropDown').removeAttr('disabled');
                        $('#deviceGroupsDropDown').append('<option value=""></option>');

                        $.each(data, function(key,value){
                           $('#deviceGroupsDropDown').append('<option value="'+ value.id +'">'+ value.name +'</option>');

                        });
                    }
                });
            }
        });
        $("#orientationDropDown").change(function(){

            var orientation = $(this).val();
            var zone_id = $("#zonesDropDown").val();
            var city_id = $("#citiesDropDown").val();
            var branch_id =$("#branchesDropDown").val();
            var deviceGroup_id =$("#deviceGroupsDropDown").val();
            if(orientation){
                $.ajax({
                    url:"{{Route('get_devices')}}",
                    type: "GET",
                    dataType: "json",
                    data: {
                    orientation: orientation,
                    deviceGroup_id:deviceGroup_id,
                    zone_id: zone_id,
                    city_id:city_id,
                    branch_id:branch_id,
                    deviceGroup_id:deviceGroup_id,
                  },
                    success:function(data){
                        $('#devicesDropDown').empty();
                        $('#devicesDropDown').empty();
                        $('#devicesDropDown').append('<option value=""></option>');

                        $.each(data, function(key,value){
                           $('#devicesDropDown').append('<option value="'+ value.id +'">'+ value.device_name +'</option>');

                        });
                    }
                });
            }
        });

    $("#deviceTemplates").select2({
        placeholder: "Select Device Template",
        allowClear: true,
        templateResult: function (idioma) {
            if(idioma.id>0){
                var $span = $("<span><img width='50' height='50' src='"+idioma.title+"'/>  "+idioma.text+" </span>");
                return $span;
            }
        },
        templateSelection: function (idioma) {
           if(idioma.id>0){
                var $span = $("<span>" + "<img  style='width: 37px;\n" +
                    "    height: 24px;\n" +
                    "    border-radius: 3px;' src='"+idioma.title+"'/></span>");
                return $span;
           }else{
            return "Select Device Template";
           }
        }
    });

</script>
<script type="text/javascript">
   $(function () {
       $('#start_time, #assetsDownloadTime').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            sideBySide: true,
       });
       $('#end_time').datetimepicker({
           useCurrent: false,
           format: 'YYYY-MM-DD HH:mm:ss',
           sideBySide: true,
        });
       $("#start_time").on("dp.change", function (e) {
            var date = new Date($("#start_time").val());
            date.setMinutes( date.getMinutes() + 1 );
            $('#end_time').data("DateTimePicker").minDate(date);
            date.setMinutes( date.getMinutes() - 2 );
            
            $('#assetsDownloadTime').data("DateTimePicker").maxDate(date);
       });
       $("#end_time").on("dp.change", function (e) {
            var date = new Date($("#end_time").val());
            date.setMinutes( date.getMinutes() - 1 );
            $('#start_time').data("DateTimePicker").maxDate(date);
       });
   });

</script>
<script>
    var oTable =    $('#schedules').DataTable({
            processing: true,
            serverSide: true,
            searching: false,
            scrollX: true,


           ajax: {
            url: '{{ url('schedule-devices') }}',
                data: function (d) {
                    d.zone_id           = $('#zonesDropDownFillter').val();
                    d.city_id           = $('#citiesDropDownFillter').val();
                    d.branch_id         = $('#branchesDropDownFillter').val();
                    d.device_group_id   = $('#deviceGroupsDropDownFillter').val();
                }
            },
            columns: [
                {data: 'ceckbox', name:'ceckbox', orderable:false},
                { data: 'DT_RowIndex', name: 'DT_RowIndex' },
                { data: 'city_id', name: 'city_id' },
                { data: 'branch_id', name: 'branch_id' },
                { data: 'device_group_id', name: 'device_group_id' },
                { data: 'device_id', name: 'device_id' },
                { data: 'assets_download_time', name: 'assets_download_time' },
                { data: 'start_time', name: 'start_time' },
                { data: 'end_time', name: 'end_time' },
                { data: 'device_template', name: 'device_template' ,  "className": "text-left"},
                { data: 'actions', name: 'actions' },
             ]
        });

   $("#zonesDropDownFillter").change(function(){


        var zone_id = $(this).val();
            if(zone_id){
                var url= "{{Route('get_cities', "zone_id")}}";
                $.ajax({
                        url:url.replace('zone_id', zone_id),
                        type: "GET",
                        dataType: "json",
                        success:function(data){
                            $('#citiesDropDownFillter').empty().val('');
                            $('#branchesDropDownFillter').empty().attr('disabled', true).val('');
                            $('#deviceGroupsDropDownFillter').empty().attr('disabled', true).val('');
                            $('#citiesDropDownFillter').removeAttr('disabled');
                            $('#citiesDropDownFillter').append('<option value=""></option>');
                            oTable.draw();
                            $.each(data, function(key,value){
                               $('#citiesDropDownFillter').append('<option value="'+ value.id +'">'+ value.name +'</option>');
                            });
                        }
                });
            }

   });
    $("#citiesDropDownFillter").change(function(){

            var city_id = $(this).val();
            if(city_id){
                var url= "{{Route('get_brances', "city_id")}}";
                $.ajax({
                    url:url.replace('city_id', city_id),
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#branchesDropDownFillter').empty().val('');
                        $('#deviceGroupsDropDownFillter').empty().attr('disabled', true).val();
                        $('#branchesDropDownFillter').removeAttr('disabled');
                        $('#branchesDropDownFillter').append('<option value=""></option>');
                         oTable.draw();
                        $.each(data, function(key,value){
                           $('#branchesDropDownFillter').append('<option value="'+ value.id +'">'+ value.branch_name +'</option>');

                        });
                    }
                });
            }
        });
    $("#branchesDropDownFillter").change(function(){
            var branch_id = $(this).val();
            if(branch_id){
                var url= "{{Route('get_device_groups', "branch_id")}}";
                $.ajax({
                    url:url.replace('branch_id', branch_id),
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#deviceGroupsDropDownFillter').empty().val('');
                        $('#deviceGroupsDropDownFillter').removeAttr('disabled');
                        $('#deviceGroupsDropDownFillter').append('<option value=""></option>');
                        oTable.draw();
                        $.each(data, function(key,value){
                           $('#deviceGroupsDropDownFillter').append('<option value="'+ value.id +'">'+ value.name +'</option>');

                        });
                    }
                });
            }

        });
     $("#deviceGroupsDropDownFillter").change(function(){
        oTable.draw();
     });
     $("#createNewService").on('click', function(){
     
        $("#createNewServiceSection").fadeIn();
         $('html, body').animate({
            scrollTop: $("#createNewServiceSection").offset().top
        }, 2000);
        
    });
    function deleteSchedule(id){
        $('#delete').attr('action', '{{url("schedule")}}/'+id);
        $("#confirm").modal("show");

    }
  </script>
@endsection
