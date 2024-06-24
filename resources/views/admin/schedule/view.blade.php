@extends('admin.layouts.master')
@section('pageTitle', 'Scheduling')
@section('styles')
<style>
        #zonesDropDownFillter, #citiesDropDownFillter, #branchesDropDownFillter, #deviceGroupsDropDownFillter {
            width: 100% !important;
            text-align: center;
        }
        #relationColumn{
            border-right: solid 4px rgb(235 235 235);
        }

        .select2-container {
            margin-bottom: 20px;
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
                    <table class="table table-bordered   table-vcenter" id="schedules">
                        <thead class="thead-dark">
                            <tr>
                                <th class="checkBoxDiv" >
                                    <div class="checkbox">
                                        <input id="check" value="" class="magic-checkbox checkBoxMain"
                                               type="checkbox">
                                        <label for="check"></label>
                                    </div>
                                </th>
                               <th>#</th>
                              <th>City</th>
                              <th>Branch Name</th>
                              <th>Device Group</th>
                              <th>Device</th>
                                <th>Assets Download Time</th>
                              <th>Start Time</th>
                              <th>End Time</th>
                              <th>Device Template</th>
                            @canany('update_schedules', 'delete_schedules')
                              <th>Actions</th>
                            @endcanany
                            </tr>
                        </thead>
                        <tbody>
                           
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@include('admin.schedule.modals.delete')
@endsection
@section('js')
<script>
    $("#zonesDropDownFillter").select2({
        placeholder: "Select Zone",
        allowClear: true
    });
    $("#citiesDropDownFillter").select2({
        placeholder: "Select City",
        allowClear: true
    });
    $("#branchesDropDownFillter").select2({
        placeholder: "Select Branch",
        allowClear: true
    });
    $("#deviceGroupsDropDownFillter").select2({
        placeholder: "Select Device Group",
        allowClear: true
    });

var oTable =    $('#schedules').DataTable({
        processing: true,
        serverSide: true,
        searching: false,
        //scrollY: 200,
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
    function deleteSchedule(id){
        $('#delete').attr('action', '{{url("schedule")}}/'+id);
        $("#confirm").modal("show");

    }
</script>

@endsection
