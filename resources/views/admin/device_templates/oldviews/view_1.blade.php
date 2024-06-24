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
                            <div class="bg-dark fixed-top">
                                <div class="container">
                                    <div class="logo">
                                        <img src="{{url('/') . $template->logo}}" height="50" width="100%">
                                    </div>
                                </div>
                            </div>
                            @endif
                        <div class="container">
                            <div class="row">
                            @if($template->device_templates->quebox_required)
                                <div class="col-lg-3 queuebox">
                                    <div class="list-group list-group1">
                                        <ul >
                                            <li><a href="#" class="list-group-item active">QMS Numbers</a></li>
                                            <li><a href="#" class="">Cras justo  odio</a></li>
                                            <li><a href="#" class="">Dapibus ac facilis in</a></li>
                                            <li><a href="#" class="">Disabled items</a></li>
                                            <li><a href="#" class="">Porta ac consecteture ac</a></li>
                                            <li><a href="#" class="">Porta ac consecteture ac</a></li>
                                        </ul>
                                    </div>
                                </div>
                            @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}">
                                    <div class="card mt-4">
                                        <video width="100%" height="100%"  id="myVideo" controls autoplay>
                                            <source src="{{asset($template->videosbox1[0]->asset_url)}}" id="mp4Source" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    </div>
                                </div>
                            </div>
                        </div>
                            @if($template->device_templates->ticker_text_required)
                                <footer class="bg-dark2">
                                    <div class="container">
                                        <marquee>
                                            <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                        </marquee>
                                    </div>
                                </footer>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

