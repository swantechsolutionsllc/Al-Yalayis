@extends('admin.layouts.master')
@section('pageTitle', 'All Categories')
@section('breadcrumb')
    <li><a href="{{url('/')}}"><i class="demo-pli-home"></i></a></li>
    <li><a href="{{url('/')}}">Dashboard</a></li>
    <li class="active"><a href="{{url('device-templates')}}"> Device Templates</a></li>
@endsection
<link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
@section('content')
    <div id="page-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading">
                        <h3 class="panel-title">Template View</h3>
                    </div>
                    <div class="panel-body">
                        <div class="tv-bg">
                        @if($template->device_templates->logo_required)
                            @include('admin.device_templates.view.logobox')
                        @endif 
                        <div class="row" style="border: 5px solid #fff;">
                            @if($template->device_templates->quebox_required)
                                @include('admin.device_templates.view.queuebox')
                            @endif
                            <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}">
                                <video width="100%" height="50%"  id="myVideo1" controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                    <source src="{{asset($template->videosbox1[0]->asset_url)}}" id="mp4Source" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                               <video width="100%" height="50%"  id="myVideo2" controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                    <source src="{{asset($template->videosbox2[0]->asset_url)}}" id="mp4Source" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>   
                        @if($template->device_templates->ticker_text_required)
                            @include('admin.device_templates.view.tickerbox')
                        @endif 
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

