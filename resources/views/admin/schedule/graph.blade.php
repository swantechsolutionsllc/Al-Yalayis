@extends('admin.layouts.master')
@section('pageTitle', 'Schedule Graph')
@section('styles')
<link href="{{asset('admin-assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css')}}" rel="stylesheet">
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
                    <h3 class="block-title">Logs</h3>
                    
                   
                       
                    
                </div>
                
        
                <div class="block-content block-content-full">
            <div class="row">
                <div class="col-sm-2">
                    <input type='text' class="form-control" id='date' name="date" required="" placeholder="Select date" />
                </div>
                       <div class="col-sm-2">
                           <select  id="zonesDropDownFillter" >
                               <option value=""></option>
                               @foreach($zones as $zone)
                                   <option value="{{$zone->id}}">{{$zone->name}}</option>
                               @endforeach
                           </select>

                       </div>
                       <div class="col-sm-2">
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
                   <div id="timeline"  style="overflow: auto;">
                   
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@endsection
@section('js')
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
        
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", {packages:["timeline"]});
        google.setOnLoadCallback(drawChart);

        function drawChart(devices=null) {
            if(!devices){
             var url= "{{Route('chartDevices')}}";
             $.ajax({
                    url:url,
                    type: "GET",
                    dataType: "json",
                    success:function(data){

                        draw(data);
                    }
                });
         }else{
           draw(devices);
         }

        }
          function draw(data) {

            var container = document.getElementById('timeline');
            var chart = new google.visualization.Timeline(container);
            var dataTable = new google.visualization.DataTable();
            chart.clearChart();
            dataTable.addColumn({ type: 'string', id: 'Schedule' });
            dataTable.addColumn({ type: 'string', id: 'Category' });
            dataTable.addColumn({ type: 'string', role: 'style' });
            dataTable.addColumn({ type: 'date', id: 'Start' });
            dataTable.addColumn({ type: 'date', id: 'End' });
            var rows =[];
            var startTime = new Date($("#date").val());
                startTime.setHours(0,0,0);
            var endTime = new Date($("#date").val());
                endTime.setHours(23,59,59);
                   
             $.each(data, function(key,value){

                if(value.schedules.length > 0 ){
                     var schedules = value.schedules;
                     
                     $.each(schedules, function(k, val){
                        var start = val.start_time;
                        var end = val.end_time;
                        start = new Date(start.replaceAll("-", " "));
                        end = new Date(end.replaceAll("-", " "));
                        
                        var now = new Date();
                        var color = "#6495ED";
                        if (end < now) {
                            color = '#FF0000';
                        }
                        if(end > endTime){
                            end = endTime;

                        }
                        if(start < startTime){
                            start = startTime;
                        }

                        rows.push([ value.device_name, value.device_name, color ,start, end ]);
                     });


                }else{
                    rows.push([ value.device_name,  value.device_name, 'opacity: 0;' ,new Date($("#date").val()), new Date($("#date").val()) ]);
                }

                            });
            dataTable.addRows(rows);
            var paddingHeight = 40;
            var rowHeight = dataTable.getNumberOfRows() * 50;
            var chartHeight = rowHeight + paddingHeight;
            var options = {
                timeline: {
                    colorByRowLabel: true,
                    groupByRowLabel: true,
                   showBarLabels: false,
                },
                chartArea:{
                    left:0,
                    top:0,
                    width:1000,
                    height:rowHeight},
                width:10000,
                height: chartHeight,
                backgroundColor: '#ffffff',
                 hAxis: {
                   format: 'HH:mm',
                    maxValue: endTime,
                    minValue: startTime,
                },
            };

            chart.draw(dataTable, options);
            

        }
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
        $('#date').datepicker({
            autoclose:true

        }).datepicker("setDate", 'today');

        $("#date").change(function (){
            var date = $("#date").val();
            var zone_id = $("#zonesDropDownFillter").val();
            var branch_id = $("#branchesDropDownFillter").val();
            var city_id = $("#citiesDropDownFillter").val();
            var group_id = $("#deviceGroupsDropDownFillter").val();
            var url = "{{url('get-group-devices/')}}";
            $.ajax({
                url:url,
                type: "GET",
                data: {
                    date:date,
                    zone_id: zone_id,
                    city_id: city_id,
                    branch_id: branch_id,
                    group_id:group_id
                },
                dataType: "json",
                success:function(data){
                    if(data.devices.length > 0){
                       
                        drawChart(data.devices);
                    }else{
                        $("#timeline").html('<center>'+data.message+'</center>');
                    }

                }
            });
        })

   $("#zonesDropDownFillter").change(function(){


        var zone_id = $(this).val();
        var date = $("#date").val();
            if(zone_id){
                var url= "{{url('get-cities/')}}";
                $.ajax({
                        url:url+'/'+zone_id,
                        type: "GET",
                        data: {
                            date:date,
                            devices:true,
                        },
                        dataType: "json",
                        success:function(data){
                             if(data.devices.length > 0){
                                 drawChart(data.devices)
                             }else{
                                 $("#timeline").html('<center>No device Found in this zone</center>');
                             }
                            $('#citiesDropDownFillter').empty().val('');
                            $('#branchesDropDownFillter').empty().attr('disabled', true).val('');
                            $('#deviceGroupsDropDownFillter').empty().attr('disabled', true).val('');
                            $('#citiesDropDownFillter').removeAttr('disabled');
                            $('#citiesDropDownFillter').append('<option value=""></option>');

                            $.each(data.cities, function(key,value){
                               $('#citiesDropDownFillter').append('<option value="'+ value.id +'">'+ value.name +'</option>');
                            });
                        }
                });
            }

   });
    $("#citiesDropDownFillter").change(function(){

            var city_id = $(this).val();
            var date = $("#date").val();
            if(city_id){
               var url= "{{url('get-branches/')}}";
                $.ajax({
                        url:url+'/'+city_id,
                    type: "GET",
                    data: {
                        date:date,
                        devices:true,
                    },
                    dataType: "json",
                    success:function(data){
                        if(data.devices.length > 0){
                            drawChart(data.devices);
                        }else{
                            $("#timeline").html('<center>No device Found in this city</center>');
                        }
                        $('#branchesDropDownFillter').empty().val('');
                        $('#deviceGroupsDropDownFillter').empty().attr('disabled', true).val();
                        $('#branchesDropDownFillter').removeAttr('disabled');
                        $('#branchesDropDownFillter').append('<option value=""></option>');

                        $.each(data.branches, function(key,value){
                           $('#branchesDropDownFillter').append('<option value="'+ value.id +'">'+ value.branch_name +'</option>');

                        });
                    }
                });
            }
        });
    $("#branchesDropDownFillter").change(function(){
            var branch_id = $(this).val();
            var date = $("#date").val();
            if(branch_id){
               var url= "{{url('get-device-groups/')}}";
                $.ajax({
                        url:url+'/'+branch_id,
                    type: "GET",
                    data: {
                        date:date,
                        devices:true,
                    },
                    dataType: "json",
                    success:function(data){
                        if(data.devices.length > 0){
                            drawChart(data.devices);
                        }else{
                            $("#timeline").html('<center>No device Found in this Branch</center>');
                        }
                        $('#deviceGroupsDropDownFillter').empty().val('');
                        $('#deviceGroupsDropDownFillter').removeAttr('disabled');
                        $('#deviceGroupsDropDownFillter').append('<option value=""></option>');

                        $.each(data.deviceGroups, function(key,value){
                           $('#deviceGroupsDropDownFillter').append('<option value="'+ value.id +'">'+ value.name +'</option>');

                        });
                    }
                });
            }

        });
     $("#deviceGroupsDropDownFillter").change(function(){
         var group_id = $(this).val();
         var date = $("#date").val();
         if(group_id){
             var url= "{{url('get-group-devices/')}}";
             $.ajax({
                 url:url,
                 type: "GET",
                 data: {
                     date:date,
                     group_id:group_id
                 },
                 dataType: "json",
                 success:function(data){
                     if(data.devices.length > 0){
                         drawChart(data.devices);
                     }else{
                         $("#timeline").html('<center>No device Found in this Device Group</center>');
                     }

                 }
             });
         }
     });

    </script>

@endsection
