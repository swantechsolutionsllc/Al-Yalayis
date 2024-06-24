@extends('admin.layouts.master')
@section('pageTitle', 'View Device Templates')
@section('styles')
    <style>
       .container-template {
            box-shadow: 0px 0px 5px 0px lightgrey;
            padding: 15px 10px;
            background: #fff;
        }
        input[type=radio] {
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
        .no-padding{
            padding:0px !important;
        }
        .templates-div{
            background:#fff;
        }
        .tv-div{
            background:#fff;
            border:10px solid black; 
            height:360px;
            margin-bottom:0px;
        }
    </style>
    <link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
@endsection
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Manage Device Templates</h3>
                
            
            
        </div>
        <div class="block-content block-content-full" style="padding:0px;">
            <!-- DataTables init on table by adding .js-dataTable-full class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
            
            </div>
       
    </div>
    @if($templates->count() > 0)
        @foreach($templates->chunk(2) as $temps)
            <div class="row">
                @foreach($temps as $template)
                    <div class="col-md-6 " style="background: #fff;">
                        @php
                            $height = 332;
                            if($template->device_templates->logo_required){
                                $height -= 50;  
                            }
                            if($template->device_templates->ticker_text_required){
                                $height -= 50;  
                            }
                        @endphp
                        @if($template->device_templates->id == 1 || $template->device_templates->id == 2 || $template->device_templates->id == 3 || $template->device_templates->id == 4 || $template->device_templates->id == 38 || $template->device_templates->id == 39)
                           <div class="form-group tv-div">
                                @if($template->device_templates->logo_required)
                                    <div style="display: block; height:50px; width:100%; text-align:center;">
                                        <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                    </div>
                                @endif
                                <div style="display:flex; height:{{ $height }}px;">
                                    @if($template->device_templates->quebox_required)
                                        <div class="col-lg-3 no-padding">
                                            <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                        </div>
                                    @endif
                                    <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                        <video width="100%" height="100%"   controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                            
                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">
                                                    Your browser does not support the video tag.
                                            
                                        </video>
                                    </div>
                                </div>
                                @if($template->device_templates->ticker_text_required)
                                    <div style="display: block; height:50px; width:100%; text-align:center;">
                                        <footer class="bg-dark2">
                                            <div class="container">
                                                <marquee>
                                                    <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                                </marquee>
                                            </footer>
                                        </footer>
                                    </div>
                                @endif
                            </div>
                        @elseif($template->device_templates->id == 5 || $template->device_templates->id == 6 || $template->device_templates->id == 7 || $template->device_templates->id == 8 || $template->device_templates->id == 40 || $template->device_templates->id == 41 )
                            <div class="form-group tv-div">
                                @if($template->device_templates->logo_required)
                                    <div style="display: block; height:50px; width:100%; text-align:center;">
                                        <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                    </div>
                                @endif
                                <div style="display:flex; height:{{ $height }}px;">
                                    @if($template->device_templates->quebox_required)
                                        <div class="col-lg-3 no-padding">
                                            <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                        </div>
                                    @endif
                                    <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                        <img width="100%" height="100%" src="{{asset($template->imagesbox1[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                    </div>
                                </div>
                                @if($template->device_templates->ticker_text_required)
                                    <div style="display: block; height:50px; width:100%; text-align:center;">
                                        <footer class="bg-dark2">
                                            <div class="container">
                                                <marquee>
                                                    <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                                </marquee>
                                            </div>
                                        </footer>
                                    </div>
                                @endif
                            </div>
                    @elseif($template->device_templates->id == 9 || $template->device_templates->id == 10 || $template->device_templates->id == 11 || $template->device_templates->id == 12)
                    <div class="form-group container-template" style="border:10px solid black; height:445px;">
                        @if($template->device_templates->logo_required)
                           <div style="display: block; height:50px; width:100%; text-align:center;">
                                <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                            </div>
                        @endif
                         
                        <div style="display:flex; height:{{ $height }}px;">
                            @if($template->device_templates->quebox_required)
                                        <div class="col-lg-3 no-padding">
                                            <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                        </div>
                                    @endif
                            <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                <div class="row" style="height:{{ $height/2 }}px;">
                                    <div class="col-sm-12 no-padding">
                                        <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                            <source src="{{asset($template->videosbox1[0]->asset_url)}}"  type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    </div>
                                    
                                </div>
                                <div class="row" style="height:{{ $height/2 }}px;">
                                    <div class="col-sm-12 no-padding">
                                        <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                            <source src="{{asset($template->videosbox2[0]->asset_url)}}"  type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    </div>
                                    
                                </div>
                                           
                            
                        </div>
                        @if($template->device_templates->ticker_text_required)
                            <div style="display: block; height:50px; width:100%; text-align:center;">
                                <footer class="bg-dark2">
                                    <div class="container">
                                        <marquee>
                                            <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                        </marquee>
                                    </div>
                                </footer>
                            </div>
                        @endif
                    </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                        @elseif($template->device_templates->id == 13 || $template->device_templates->id == 14 || $template->device_templates->id == 15 || $template->device_templates->id == 16)
                        <div class="form-group container-template" style="border:10px solid black; height:445px;">
                            @if($template->device_templates->logo_required)
                               <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                </div>
                            @endif
                             
                            <div style="display:flex; height:{{ $height }}px;">
                                @if($template->device_templates->quebox_required)
                                            <div class="col-lg-3 no-padding">
                                                <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                            </div>
                                        @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                    <img width="100%" height="50%" src="{{asset($template->imagesbox1[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                    <img width="100%" height="50%" src="{{asset($template->imagesbox2[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                               
                                </div>
                            </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                        @elseif($template->device_templates->id == 17 || $template->device_templates->id == 18 || $template->device_templates->id == 19 || $template->device_templates->id == 20)
                        <div class="form-group container-template" style="border:10px solid black; height:445px;">
                            @if($template->device_templates->logo_required)
                               <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                </div>
                            @endif
                             
                            <div style="display:flex; height:{{ $height }}px;">
                                @if($template->device_templates->quebox_required)
                                            <div class="col-lg-3 no-padding">
                                                <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                            </div>
                                        @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox1[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox2[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                    </div>
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox3[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox4[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                    </div>
                                               
                                </div>
                            </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                        @elseif($template->device_templates->id == 21 || $template->device_templates->id == 22 || $template->device_templates->id == 23 || $template->device_templates->id == 24)
                        <div class="form-group container-template" style="border:10px solid black; height:445px;">
                            @if($template->device_templates->logo_required)
                               <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                </div>
                            @endif
                             
                            <div style="display:flex; height:{{ $height }}px;">
                                @if($template->device_templates->quebox_required)
                                            <div class="col-lg-3 no-padding">
                                                <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                            </div>
                                        @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox1[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox2[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        
                                    </div>
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox3[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox4[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        
                                    </div>
                                               
                                </div>
                            </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                        @elseif($template->device_templates->id == 25 || $template->device_templates->id == 26 || $template->device_templates->id == 27 || $template->device_templates->id == 28)
                        <div class="form-group container-template" style="border:10px solid black; height:445px;">
                            @if($template->device_templates->logo_required)
                               <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                </div>
                            @endif
                             
                            <div style="display:flex; height:{{ $height }}px;">
                                @if($template->device_templates->quebox_required)
                                            <div class="col-lg-3 no-padding">
                                                <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                            </div>
                                        @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox1[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <video width="100%" height="100%"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox2[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        
                                    </div>
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-12 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox1[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        
                                        
                                    </div>
                                               
                                </div>
                            </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                        @elseif($template->device_templates->id == 29 || $template->device_templates->id == 30 || $template->device_templates->id == 31 || $template->device_templates->id == 32)
                        <div class="form-group container-template" style="border:10px solid black; height:445px;">
                            @if($template->device_templates->logo_required)
                               <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                </div>
                            @endif
                             
                            <div style="display:flex; height:{{ $height }}px;">
                                @if($template->device_templates->quebox_required)
                                <div class="col-lg-3 no-padding">
                                    <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                </div>
                            @endif
                                <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox1[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        <div class="col-sm-6 no-padding">
                                            <img width="100%" height="{{ $height/2 }}px;" src="{{asset($template->imagesbox2[0]->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                        </div>
                                        
                                        
                                    </div>
                                    <div class="row" style="height:{{ $height/2 }}px;">
                                        <div class="col-sm-12 no-padding">
                                            <video width="100%" height="{{ $height/2 }}px;"  controls autoplay style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                <source src="{{asset($template->videosbox1[0]->asset_url)}}"  type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        
                                        
                                    </div>
                                               
                                </div>
                            </div>
                            @if($template->device_templates->ticker_text_required)
                                <div style="display: block; height:50px; width:100%; text-align:center;">
                                    <footer class="bg-dark2">
                                        <div class="container">
                                            <marquee>
                                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                            </marquee>
                                        </div>
                                    </footer>
                                </div>
                            @endif
                        </div>
                    @endif
                    <div class="row justify-content-center">
                        <div class="col-md-12" style="text-align: center">
                                <div class="midS" style="width: 50px;
                                margin: auto;
                                height: 30px;
                                background: black;"></div>
                        </div>
                        <div class="col-md-12" style="text-align: center"> 
                                <div class="midL" style="width: 190px;
                                margin: auto;
                                height: 20px;
                                background: black;
                                border-radius: 20px 20px 0px 0px;"></div>
                        </div>  
                    </div>                  
                    </div>
                @endforeach
            </div>
            <br><br>
        @endforeach
    </div>
    <br><br>
@endif
    <!-- END Dynamic Table Full -->
  
@endsection
@section('js')
<script>


</script>
@endsection