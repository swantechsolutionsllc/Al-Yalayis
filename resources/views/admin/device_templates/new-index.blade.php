@extends('admin.layouts.master')
@section('pageTitle', 'Create Device Templates')
@section('styles')
    <style>
       .container-template {
            box-shadow: 0px 0px 5px 0px lightgrey;
            padding: 15px 10px;
            background: #fff;
            cursor: pointer;
           
        }
        .container-template img{
            cursor: pointer;
        }
        .container-template:hover{
            border:3px solid #000;
            
        }
        .container-template:hover img{
            height:133px;
        }
        input[type=radio] {
            display: none;
            width: 20px;
            height: 20px;
            position: absolute;
            bottom: 35px;
            left: 33px;
        }
        .row{
            padding:0px;
            margin:0px;
        }
        kbd{
            margin:0px 2px;
        }
    </style>
@endsection
@section('content')

<!-- Page Content -->
    <div class="content">
        <!-- Dynamic Table Full -->
        <div class="block block-rounded">
            <div class="block-header">
                <h3 class="block-title">Manage Device Templates</h3>
                <kbd style="background:#fff; color:#000; border: 1px solid #000;">Video</kbd>
                <kbd style="background:#d2de2a">Ticker</kbd>
                <kbd style="background:#148942">Que Numbers</kbd>
                <kbd style="background:#516eb4">Image</kbd>
                <kbd style="background:#c12026">Logo</kbd>
                    
                
                
            </div>
            <div class="block-content block-content-full" style="padding:0px;">
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
                
            </div>
        
        </div>
        @if($queueTemplates->count() > 0)
            <form action="{{url('/create-device-template')}}" id="template-form" method="post">
                @csrf
                <input type="hidden" name="ppt_count" id="ppt_count">
                <input type="hidden" name="video_count" id="video_count">
                <input type="hidden" name="images_count" id="images_count">
                <input type="hidden" name="logo_count" id="logo_count">
                <input type="hidden" name="ticker_text_count" id="ticker_text_count">
                <input type="hidden" name="template_id" id="template_id">
                <input type="hidden" name="image_path" id="image_path">
                <input type="hidden" name="rss_feed" id="rss_feed">
                <input type="hidden" name="content_option" id="content_option">
                <div class="row" style="text-align: center" id="main-panel">
                    <div class="col-lg-12" style="padding: 0px;">
                        <div class="block block-rounded">
                            <ul class="nav nav-tabs nav-tabs-block" data-toggle="tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#btabs-static-home">Queue Area Templates</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#btabs-static-profile">Simple Templates</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#special-templates">Special Templates</a>
                                </li>
                            </ul>
                            <div class="block-content tab-content">
                                <div class="tab-pane active" id="btabs-static-home" role="tabpanel">
                                    @foreach($queueTemplates->chunk(4) as $templates)
                                        <div class="row">
                                            @foreach($templates as $temp)
                                                <div class="col-md-3">
                                                    <div class="form-group container-template">
                                                        <input data-template_id="{{$temp->id}}" data-images_required="{{$temp->images_required}}" data-videos_required="{{$temp->videos_required}}" data-ppt_required="{{$temp->ppt_required}}" data-logo_required="{{$temp->logo_required}}"
                                                        data-rss_feed_required="{{$temp->rss_feed_required}}"
                                                        data-image-path="{{ $temp->template_images }}"
                                                        data-content_option="{{$temp->content_option}}"
                                                        data-ticker_text_required="{{$temp->ticker_text_required}}" type="radio" id="{{$temp->name}}" name="temp"
                                                            value="{{$temp->name}}"/>
                                                        <label for="{{$temp->name}}">
                                                        
                                                            <img
                                                                src="{{url('/') . '/' . $temp->template_images}}"  style="max-width:100%;height:139px; @if($temp->id == 43) height:170px; @endif" />
                                                        
                                                            </label>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endforeach                            
                                </div>
                                <div class="tab-pane" id="btabs-static-profile" role="tabpanel">
                                    @foreach($simpleTemplates->chunk(4) as $templates)
                                        <div class="row">
                                            @foreach($templates as $temp)
                                                <div class="col-md-3">
                                                    <div class="form-group container-template">
                                                        <input data-template_id="{{$temp->id}}" data-images_required="{{$temp->images_required}}" data-videos_required="{{$temp->videos_required}}" data-ppt_required="{{$temp->ppt_required}}" data-logo_required="{{$temp->logo_required}}"
                                                        data-rss_feed_required="{{$temp->rss_feed_required}}"
                                                        data-image-path="{{ $temp->template_images }}"
                                                        data-content_option="{{$temp->content_option}}"
                                                        data-ticker_text_required="{{$temp->ticker_text_required}}" type="radio" id="{{$temp->name}}" name="temp"
                                                            value="{{$temp->name}}"/>
                                                        <label for="{{$temp->name}}">
                                                        
                                                            <img
                                                                src="{{url('/') . '/' . $temp->template_images}}"  style="max-width:100%;height:139px; @if($temp->id == 43) height:170px; @endif" />
                                                        
                                                            </label>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endforeach
                                </div>
                                <div class="tab-pane" id="special-templates" role="tabpanel">
                                    @foreach($specialTemplates->chunk(4) as $templates)
                                        <div class="row">
                                            @foreach($templates as $temp)
                                                <div class="col-md-3">
                                                    <div class="form-group container-template">
                                                        <input data-template_id="{{$temp->id}}" data-images_required="{{$temp->images_required}}" data-videos_required="{{$temp->videos_required}}" data-ppt_required="{{$temp->ppt_required}}" data-logo_required="{{$temp->logo_required}}"
                                                        data-rss_feed_required="{{$temp->rss_feed_required}}"
                                                        data-image-path="{{ $temp->template_images }}"
                                                        data-content_option="{{$temp->content_option}}"
                                                        data-ticker_text_required="{{$temp->ticker_text_required}}" type="radio" id="{{$temp->name}}" name="temp"
                                                            value="{{$temp->name}}"/>
                                                        <label for="{{$temp->name}}">
                                                        
                                                            <img
                                                                src="{{url('/') . '/' . $temp->template_images}}"  style="max-width:100%;height:139px;" />
                                                        
                                                            </label>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                {{-- <button id="nextBtn" type="submit" class="btn btn-primary pull-left"><i
                        class="fa fa-arrow-right"></i>&nbsp;&nbsp;Next
                </button> --}}
            </form>
            <br><br>
        @endif
        <!-- END Dynamic Table Full -->
    </div>
@endsection
@section('js')
    <script>
        $(document).ready(function () {


            $("input[name='temp']").change(function (e) {
                e.preventDefault();
                var radio_value = $("input[name='temp']:checked").val();
                if (radio_value == undefined || radio_value == '' || radio_value <= 0) {
                    alert("Please Select At least 1 Template");
                    
                    return;
                }
                else{
                    var video_required = $("input[name=temp]:checked").attr('data-videos_required');
                    var images_required = $("input[name=temp]:checked").attr('data-images_required');
                    var ppt_required = $("input[name=temp]:checked").attr('data-ppt_required');
                    var logo_required = $("input[name=temp]:checked").attr('data-logo_required');
                    var ticker_text_required = $("input[name=temp]:checked").attr('data-ticker_text_required');
                    var template_id = $("input[name=temp]:checked").attr('data-template_id');
                    var image_path = $("input[name=temp]:checked").attr('data-image-path');
                    var content_option = $("input[name=temp]:checked").attr('data-content_option'); 
                    var rss_feed_required = $("input[name=temp]:checked").attr('data-rss_feed_required'); 
                    $("#video_count").val(video_required);
                    $("#images_count").val(images_required);
                    $("#ppt_count").val(ppt_required);
                    $("#logo_count").val(logo_required);
                    $("#ticker_text_count").val(ticker_text_required);
                    $("#template_id").val(template_id);
                    $("#rss_feed").val(rss_feed_required);        
                    $("#image_path").val(image_path);        
                    $("#content_option").val(content_option);
                    $("#template-form").submit();                
                }
            });

            //
        })
    </script>
@endsection