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
</style>
@endsection
@section('content')

<div class="content">
    <!-- Dynamic Table Full -->
    <div class="row">
        <div class="col-md-3">
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
                
                <form action="{{route('update_schedule', $scheduledDevice)}}" method="post" autocomplete="off">
                    @csrf
                
                <br>
                <div class="form-group">
                    <input type="text" disabled="" class="form-control" value="{{$scheduledDevice->device->device_name}}" name="">
                </div>
                <select id="deviceTemplates" required="" name="deviceTemplate" style="width: 100%;" >
                    <option value=""></option>
                    @foreach($deviceTemplateData as $deviceTemplate)
                        <option value="{{$deviceTemplate->id}}" title="{{$deviceTemplate->device_templates->template_images}}" {{$deviceTemplate->id==$scheduledDevice->device_template_data_id?"selected":'' }}>{{$deviceTemplate->name}}</option>
                    @endforeach
                </select>
                <div class="form-group">
                    <input type='text' class="form-control" id='start_time'  name="start_time" required="" placeholder="Select Start date and time" value="{{$scheduledDevice->start_time}}" />
                </div>
                     <div class="form-group">
                       
                       <input type='text' class="form-control" id='end_time' placeholder="Select end date and time" value="{{$scheduledDevice->end_time}}" name="end_time" required="" />
                       </div>

                  <div class="form-group">
                    <input type='text' class="form-control" id='assetsDownloadTime' placeholder="Select assets download time" name="assets_download_time" value="{{$scheduledDevice->assets_download_time}}" required="" />
                  </div>
                    <input type="submit" name="" class="btn btn-primary" style="width: 100%;" value="submit">

                 </form>
                </div>
            </div>
        </div>
        
        
    </div>
    
</div>
@endsection
@section('js')
<script>
        
    $("#deviceTemplates").select2({

        placeholder: "Select Device Template",
        allowClear: true,
        templateResult: function (idioma) {
            if(idioma.id>0){
                var url = "{{asset('')}}"+idioma.title;
                var $span = $("<span><img width='50' height='50' src='"+url+"'/>  "+idioma.text+" </span>");
                return $span;
            }
        },
        templateSelection: function (idioma) {
           if(idioma.id>0){
             var url = "{{asset('')}}"+idioma.title;
                var $span = $("<span>" + "<img  style='width: 37px;\n" +
                    "    height: 24px;\n" +
                    "    border-radius: 3px;' src='"+url+"'/></span>");
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
        format: 'MM-DD-YYYY HH:mm:ss',
        sideBySide: true,
       });
       $('#end_time').datetimepicker({
           useCurrent: false,
           format: 'MM-DD-YYYY HH:mm:ss',
           sideBySide: true,
        });
       $("#start_time").on("dp.change", function (e) {
          var date = new Date($("#start_time").val());
          date.setMinutes( date.getMinutes() + 1 );
          $('#end_time, #assetsDownloadTime').val('');
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
@endsection
