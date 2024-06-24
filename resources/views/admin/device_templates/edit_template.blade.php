@extends('admin.layouts.master')
@section('pageTitle', 'Update Device Templates')
@section('styles')
    <link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">
    <style>
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
        </style>
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{url('device-templates/update/'.$temp->id)}}" enctype="multipart/form-data" id="myform">
        @csrf
        @method('put')
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Create Device Template</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        <img src="{{asset($temp->device_templates->template_images)}}"  style="max-width:100%;" />
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="val-username">Template Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" value="{{ old('name', $temp->name) }}"  name="name" placeholder="Enter Template Name">
                            @error('name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        @if( $temp->device_templates->ticker_text_required > 0)
                            <div class="form-group">
                                <label for="val-email">Ticker Text<span class="text-danger">*</span></label>
                                <textarea class="form-control" required name="ticker_text">{{ old('ticker_text', $temp->ticker_text) }}</textarea>
                                @error('logo')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                                
                            </div>
                        @endif
                        @if($temp->device_templates->logo_required > 0)
                            <div class="form-group">
                               <div class="row" style="margin-top:20px;">
                                    <div class="col-md-12">
                                        <label for="val-email">Add Logo<span class="text-danger">*</span></label>
                                        <br>
                                        <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images">
                                            <img class="preview-image" id="previewLogo" src="{{url('/') . $temp->logo}}" >
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-logo" >
                                            <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                        </a>
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'logo', 'label'=>'Select Logo', 'modalId'=>'logo', 'box'=>'image', 'selected'=> [$temp->logo] ])
                                    </div>
                                </div>
                                @error('logo')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                            </div>
                        @endif
                        @if ($template->content_option == 1)
                            <div class="form-group">
                                <label for="val-username">Content Type <span class="text-danger">*</span></label>
                                <select id="content-type" class="form-control" name="content_type">
                                    <option value="image" {{ $temp->content_type=='image'?'selected':'' }}>Images</option>
                                    <option value="video" {{ $temp->content_type=='video'?'selected':'' }}>Videos</option>
                                </select>
                            </div>
                        @endif 
                    </div>
                </div>
                @if( $temp->device_templates->images_required > 0)
                    <div  class="image-1" @if($template->content_option == 1 && $temp->content_type=='video') style="display:none;" @endif>
                       <div class="row items-push">
                            <div class="col-lg-4">
                            </div>
                            <div class="col-lg-8 col-xl-8">
                                @for($i = 1;  $i <= $temp->device_templates->images_required; $i++)
                                    <div class="form-group">
                                        <label for="val-phoneus">Image Box {{$i}}<span class="text-danger">*</span></label>
                                        <br>
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'checkbox', 'name'=>'image_'.$i.'[]', 'label'=>'Select Image Box '.$i, 'modalId'=>'image-box'.$i, 'box'=> 'image-box-'.$i, 'selected'=> $temp['imagesboxArray'.$i] ])
                                        <div  id="image-box-{{$i}}">
                                            @foreach($temp['imagesbox'.$i] as $img)
                                            @if($img->gallery)
                                                <a  id="preview-asset-{{$img->gallery->id}}-image-box-{{$i}}" class="img-link img-link-zoom-in img-thumb img-lightbox preview-images"> 
                                                    <img  src="{{asset($img->gallery->thamnail_url)}}"  class="preview-image">
                                                </a>
                                            @endif
                                            @endforeach  
                                            <a href="#" data-toggle="modal" data-target="#modal-image-box{{$i}}" class="images" >
                                                <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}"  style="width:100px;">
                                            </a>
                                        </div>
                                    </div>
                                @endfor
                            </div>
                        </div>
                    </div>
                @endif
                @if($temp->device_templates->videos_required > 0)
                    <div class="video-1" @if($template->content_option == 1 && $temp->content_type=='image') style="display:none;" @endif>
                        <div class="row items-push">
                            <div class="col-lg-4">
                            </div>
                            <div class="col-lg-8 col-xl-8">
                                @for($i = 1;  $i <= $temp->device_templates->videos_required; $i++)
                                    <div class="form-group">
                                        <label for="val-phoneus">Video Box {{$i}}<span class="text-danger">*</span></label>
                                        <br>
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gvideos, 'type'=>'checkbox', 'name'=>'video_'.$i.'[]', 'label'=>'Select Video Box '.$i, 'modalId'=>'video-box'.$i, 'box'=> 'video-box-'.$i, 'selected'=>$temp['videosboxArray'.$i] ])
                                        <div  id="video-box-{{$i}}">
                                            @foreach($temp['videosbox'.$i] as $video)
                                            @if($video->gallery)
                                                <a  id="preview-asset-{{$video->gallery->id}}-video-box-{{$i}}" class="img-link img-link-zoom-in img-thumb img-lightbox preview-images"> 
                                                    <img  src="{{asset($video->gallery->thamnail_url)}}"  class="preview-image">
                                                </a>
                                            @endif
                                            @endforeach  
                                            <a href="#" class="images" data-toggle="modal" data-target="#modal-video-box{{$i}}" >
                                                <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:100px;">
                                            </a>
                                        </div>
                                    </div>
                                @endfor
                            </div>
                        </div>
                    </div>
                @endif
                @if(isset($rss_feed) && $rss_feed > 0)
                    <h2 class="content-heading border-bottom mb-4 pb-2">Select Videos</h2>
                    <div class="row items-push">
                        <div class="col-lg-4">
                            <p class="font-size-sm text-muted">
                                You can easily validate any kind of data you like either it is in a normal input, a textarea or a select box
                            </p>
                        </div>
                        <div class="col-lg-8 col-xl-5">
                            <div class="form-group">
                                <label for="val-phoneus">Rss Feed URL<span class="text-danger">*</span></label>
                                <input  type="url" required="" name="rss_feed"  class="form-control">
                                @error('admin_avtar')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                            </div>
                        </div>
                    </div>
                @endif
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
    $(document).ready(function () {
        $("#myform").on("submit", function(){
            $("#pageloader").fadeIn();
        });
        var url = "{{ url('/') }}";
        $("#content-type").change(function(){
            var contentType = $(this).val();
            if(contentType == 'video'){
                $(".video-1").show();
                $(".image-1").hide();
                $("#deviceVideo1").attr('required', true);
                $("#deviceTemplates1").attr('required', false);
            }else{
                $(".video-1").hide();
                $(".image-1").show();
                $("#deviceVideo1").attr('required', false);
                $("#deviceTemplates1").attr('required', true);
            }
        });
    });
    $(".toggleanchor").click(function(e) {
        e.preventDefault();    
        var id      = $(this).attr('data-id');
        var type    = $(this).attr('data-type');
        var src     = $(this).attr('data-src');
        if(type == 'radio'){
            $("#"+id).prop('checked', true);
            $(".toggleanchor-radio").removeClass('selected');
            $(this).addClass('selected');
            $("#previewLogo").attr('src', src);
            $("#previewLogo").show();
        }else{
            $(this).toggleClass("selected");
            var box = $(this).attr('data-box');
                  
            if($("#"+id).prop('checked')){
                $("#"+id).prop('checked', false);
                $("#preview-"+id).remove();
            }else{
                $("#"+id).prop('checked', true);
                $("#"+box+' .images').before('<a  id="preview-'+id+'" class="img-link img-link-zoom-in img-thumb img-lightbox preview-images"> <img  src="'+src+'"  class="preview-image"></a>');
            }
            
        }
        
        
    });
</script>
@endsection