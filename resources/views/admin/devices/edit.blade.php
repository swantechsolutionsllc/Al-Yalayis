@extends('admin.layouts.master')
@section('pageTitle', 'Update Device')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">
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
 .displayNone{
            display:none;
        }
        .displayNone{
            display:none;
        }
        .selected{
            border:2px solid;
        }
        .preview-image{
            width:100%; 
            height: 100%;
           
        }
        .preview-images{
            width:100px;
            background-color: #d4d4d4;
            padding: 5px;
            margin: 0px 5px 10px;
            height: 100px;
        }
 
</style>@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{url('devices/' . $devices->id)}}">
        @csrf
        @method('PUT')
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Update Device</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        {{-- <div class="form-group">
                            <label for="val-select2">Device Type <span class="text-danger">*</span></label>
                            <br>
                            <div style="display: inline-flex; float:left;">
                                <input type="radio" style="display: none;" {{ $devices->device_type=="cd"?"checked":"" }} name="device_type" id="cd" value="cd">
                                <input type="radio" name="device_type" style="display: none;" id="md" {{ $devices->device_type=="md"?"checked":"" }} value="md">
                                <label for="cd" class="device-type cd  {{ $devices->device_type=="cd"?"orientation-selected":"" }} "></label>
                                <label for="md" class="device-type {{ $devices->device_type=="md"?"orientation-selected":"" }}"></label>
                            </div>    
                            @error('device_orientation')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div> --}}
                        <div class="form-group playlists">
                            <label for="val-username">Device Type<span class="text-danger">*</span></label>
                            <select   name="device_type" id="device_type" required class="form-control">
                                <option value="md" {{ $devices->device_type == 'md'?'selected':'' }}> Main Display</option>
                                <option value="cd" {{ $devices->device_type == 'cd'?'selected':'' }}> Counter Display</option>  
                            </select>
                            <span class="text-danger invalid-feedback" id="device_type_error">  </span>
                        </div>
                        <div class="form-group {{ $devices->device_type == 'cd'?'displayNone':''}}" id="md_counters">
                            <label for="val-username">Select Counters<span class="text-danger">*</span></label>
                                <select   name="counters[]" id="counters" multiple class="form-control counters">
                               @foreach($counters as $ct)
                                    <option value="{{$ct->id}}"  {{in_array($ct->id, $selectedCounters)?'selected':''}} >  {{$ct->device_name}}</option>
                                @endforeach
                               
                            </select>
                            <span class="text-danger invalid-feedback" id="counters_error">  </span>
                        </div>
                        <div class="{{ $devices->device_type == 'md'?'displayNone':''}}" id="background-image" >
                            <div class="form-group">
                                <label for="val-username">Content Type <span class="text-danger">*</span></label>
                                <select id="content-type" class="form-control" name="content_type">
                                    <option value="image" {{$devices->content_type == 'image'?'selected':''}}>Image</option>
                                    <option value="video" {{$devices->content_type == 'video'?'selected':''}}>Video</option>
                                </select>
                            
                            </div>
                            <div class="form-group row" style="margin-top:20px;">
                                <div class="col-md-12" @if($devices->content_type == 'video') style="display:none;" @endif id="image-1">
                                    <label for="val-email">Select Device Background Image<span class="text-danger">*</span></label>
                                    <br>
                                    <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images">
                                        <img class="preview-image" id="previewimage" src="{{asset($devices->gallery?$devices->gallery->thamnail_url:'')}}" >
                                    </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-logo" >
                                            <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                        </a>
                                    
                                    @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'background_content', 'label'=>'Select Staff Profile Image', 'modalId'=>'logo', 'box'=>'image', 'selected'=> [$devices->background_content] ])
                                </div>
    
                                <div class="col-md-12" @if($devices->content_type == 'image') style="display:none;" @endif id="video-1">
                                    <label for="val-email">Select Device Background Video<span class="text-danger">*</span></label>
                                    <br>
                                            <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images">
                                            <img class="preview-image" id="previewvideo" src=" {{asset($devices->gallery?$devices->gallery->thamnail_url:'')}}" >
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-video-box" >
                                            <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                        </a>
                                    
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gvideos, 'type'=>'radio', 'name'=>'background_content', 'label'=>'Select Video', 'modalId'=>'video-box', 'box'=> 'video',  'selected'=> [$devices->background_content] ])
                                </div>
                                <span class="text-danger invalid-feedback" id="background_image_error">  </span>
                            </div>
                            @error('logo')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        
                        <div class="form-group">
                            <label for="val-select2">Device Orientation <span class="text-danger">*</span></label>
                            <br>
                            <div style="display: inline-flex; float:left;">
                                <input type="radio" style="display: none;" {{ $devices->device_orientation=="landscape"?"checked":"" }} name="device_orientation" id="landscape" value="landscape">
                                <input type="radio" name="device_orientation" style="display: none;" id="portrait" {{ $devices->device_orientation=="portrait"?"checked":"" }} value="portrait">
                                <label for="landscape" class="orientation  {{ $devices->device_orientation=="landscape"?"orientation-selected":"" }} "></label>
                                <label for="portrait" class="orientation potrait {{ $devices->device_orientation=="portrait"?"orientation-selected":"" }}"></label>
                            </div>    
                            @error('device_orientation')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <br><br><br>
                        <div class="form-group " id="md_setting">
                                <label for="val-username">Display Settings<span class="text-danger">*</span></label>
                                <select   name="setting_id" id="setting_id"  class="form-control">
                                    <option value="">Select</option>
                                    @if($devices->device_type == 'md')
                                        @foreach($mdSetting as $row)
                                            <option value="{{$row->id}}"  {{ ($devices->setting_id == $row->id? 'selected' : '')}}> {{$row->name}}</option>
                                        @endforeach
                                    @else
                                        @foreach($cdSetting as $row)
                                            <option value="{{$row->id}}"  {{ ($devices->setting_id == $row->id? 'selected' : '')}}> {{$row->name}}</option>
                                        @endforeach
                                    @endif 
                                </select>
                                <span class="text-danger invalid-feedback" id="device_type_error">  </span>
                            </div>
                        <div class="form-group">
                            <label for="val-username">Device Name <span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Deivce Name" id="demo-hor-inputemail"
                            class="form-control" name="device_name" value="{{old('device_name', $devices->device_name)}}">
                            @error('device_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group cd-fields">
                                <label for="val-username">Name in QMS<span class="text-danger">*</span></label>
                                <input  type="text" placeholder="Deivce Name in QMS" 
                                class="form-control" name="qms_name" value="{{old('qms_name', $devices->qms_name)}}">
                                <span class="text-danger invalid-feedback" id="qms_name_error">  </span>
                            </div>
                       
                        <div class="form-group">
                            <label for="val-username">IMEI/Mac Address<span class="text-danger">*</span></label>
                            <input required type="text"  placeholder="IMEI/Mac Address" id="imei"
                            class="form-control" name="device_no" value="{{old('device_no', $devices->device_no)}}">
                            <span class="text-danger invalid-feedback" id="device_no_error">  </span>
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Device License Key<span class="text-danger">*</span></label>
                            <input required type="text" disabled placeholder="Device License Key" id="demo-hor-inputemail"
                            class="form-control" name="device_mac_address" value="{{old('device_mac_address', $devices->device_mac_address)}}">
                            @error('device_mac_address')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Device Model<span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Device Model" id="demo-hor-inputemail"
                            class="form-control" name="device_model" value="{{old('device_model', $devices->device_model)}}">
                            @error('device_model')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="val-username">Device IP Address<span class="text-danger">*</span></label>
                            <input required type="text" placeholder="Device IP Address" id="demo-hor-inputemail"
                            class="form-control" name="ip_address" value="{{old('ip_address',$devices->ip_address)}}">
                            @error('ip_address')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group  cd-fields">
                            <label for="val-username">Ticket Color <span class="text-danger">*</span></label>
                            <input required type="color"
                            class="form-control" name="ticket_color" value="{{old('ticket_color', $devices->ticket_color)}}">
                            <span class="text-danger invalid-feedback" id="ticket_color_error">  </span>
                        </div>
                        <div class="form-group  cd-fields">
                            <label for="val-username">Counter Number Color <span class="text-danger">*</span></label>
                            <input required type="color"
                            class="form-control" name="counter_no_color" value="{{old('counter_no_color', $devices->counter_no_color)}}">
                            <span class="text-danger invalid-feedback" id="counter_no_color_error">  </span>
                        </div>
                        <div class="form-group  cd-fields">
                            <label for="val-username">Ticket Number Blinking Color <span class="text-danger">*</span></label>
                            <input required type="color"
                            class="form-control" name="ticket_no_blinking_color" value="{{old('ticket_no_blinking_color', $devices->ticket_no_blinking_color)}}">
                            <span class="text-danger invalid-feedback" id="ticket_no_blinking_color_error">  </span>
                        </div>
                        <div class="form-group  cd-fields">
                            <label for="val-username">Ticket Number Font Size <span class="text-danger">*</span></label>
                            <input  type="text"
                            class="form-control" name="ticket_no_font_size" value="{{old('ticket_no_font_size', $devices->ticket_no_font_size)}}">
                            <span class="text-danger invalid-feedback" id="ticket_no_font_size_error">  </span>
                        </div>
                        <div class="form-group  cd-fields">
                            <label for="val-username">Counter Number Font Size <span class="text-danger">*</span></label>
                            <input type="text"
                            class="form-control" name="counter_no_font_size" value="{{old('counter_no_font_size', $devices->counter_no_font_size)}}">
                            <span class="text-danger invalid-feedback" id="counter_no_font_size_error">  </span>
                        </div>
                        <div class="form-group">
                            <label for="val-username">QMS Port Number <span class="text-danger">*</span></label>
                            <input required type="text"
                            class="form-control" name="qms_port_no" value="{{old('qms_port_no', $devices->qms_port_no)}}">
                            <span class="text-danger invalid-feedback" id="qms_port_no_error">  </span>
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
                        <button type="submit" id="deviceSubmitBtn" class="btn btn-alt-primary">Submit</button>
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
    @if($devices->device_type == 'md')
        $(document).ready(function(){
            $(".cd-fields").hide();
        });
    @endif
    $(".orientation").click(function() {
        $(".orientation").removeClass('orientation-selected');
        $(this).addClass('orientation-selected');
    });
    // $(".device-type").click(function() {
    //     $(".device-type").removeClass('orientation-selected');
    //     $(this).addClass('orientation-selected');
    // });
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
    $("#counters").select2({
        placeholder: "Select Counters",
        allowClear: true
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
        console.log(box);
        $("#preview"+box).parent().removeClass('displayNone');
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
</script>
@endsection