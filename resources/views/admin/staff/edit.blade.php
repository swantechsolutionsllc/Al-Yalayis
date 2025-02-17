@extends('admin.layouts.master')
@section('pageTitle', 'Update Staff')
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
    
    <form class="form-horizontal" method="POST" action="{{url('staff/' . $staff->id)}}">
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
                        <div class="form-group">
                            <label for="val-username">Name <span class="text-danger">*</span></label>
                            <input id="orgName" type="text" name="name" value="{{$staff->name}}" placeholder="Staff Name" class="form-control" value="">
                        </div>
                        <div class="form-group">
                            <label for="val-username">Background Stay Time in sec <span class="text-danger">*</span></label>
                            <input id="background_stay_time" type="number" min="0" value="{{$staff->background_stay_time}}" name="background_stay_time" placeholder="Background Stay time" class="form-control" value="">
                        </div>
                        <div class="form-group">
                            <label for="val-email">Staff Id <span class="text-danger">*</span></label>
                            <input type="text" name="staff_id"  value="{{$staff->staff_id}}" placeholder="Staff ID" class="form-control" value="">
                        </div>
                        <div class="form-group">
                            <label for="val-username">Content Type <span class="text-danger">*</span></label>
                            <select id="content-type" class="form-control" name="content_type">
                                <option value="image" {{$staff->content_type == 'image'?'selected':''}}>Image</option>
                                <option value="video" {{$staff->content_type == 'video'?'selected':''}}>Video</option>
                            </select>
                        
                        </div>
                        <div class="form-group" id="background-image">
                            <div class="row" style="margin-top:20px;">
                                <div class="col-md-12" @if($staff->content_type == 'video') style="display:none;" @endif id="image-1">
                                    <label for="val-email">Select Staff Profile Image<span class="text-danger">*</span></label>
                                    <br>
                                    <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images">
                                        <img class="preview-image" id="previewimage" src="{{asset($staff->gallery?$staff->gallery->thamnail_url:'')}}" >
                                    </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-logo" >
                                            <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                        </a>
                                    
                                    @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'staff_background_content', 'label'=>'Select Staff Profile Image', 'modalId'=>'logo', 'box'=>'image', 'selected'=> [$staff->staff_background_content] ])
                                </div>
    
                                <div class="col-md-12" @if($staff->content_type == 'image') style="display:none;" @endif id="video-1">
                                    <label for="val-email">Select Staff Profile Video<span class="text-danger">*</span></label>
                                    <br>
                                            <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images">
                                            <img class="preview-image" id="previewvideo" src=" {{asset($staff->gallery?$staff->gallery->thamnail_url:'')}}" >
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-video-box" >
                                            <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                        </a>
                                    
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gvideos, 'type'=>'radio', 'name'=>'staff_background_content', 'label'=>'Select Video', 'modalId'=>'video-box', 'box'=> 'video',  'selected'=> [$staff->staff_background_content] ])
                                </div>
                                <span class="text-danger invalid-feedback" id="background_image_error">  </span>
                            </div>
                            @error('logo')
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
                        <button type="submit" class="btn btn-alt-primary">Update</button>
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
    // $(".device-type").click(function() {
    //     $(".device-type").removeClass('orientation-selected');
    //     $(this).addClass('orientation-selected');
    // });
    $("#device_type").change(function(){
        var value = $(this).val();
        if(value == 'cd'){
            $("#background-image").removeClass('displayNone');
        }else{
            $("#background-image").addClass('displayNone')
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
        console.log(box);
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
</script>
@endsection