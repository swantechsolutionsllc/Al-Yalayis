@extends('admin.layouts.master')
@section('pageTitle')Dashboard @endsection
@section('styles')
    <style>
        .overlay-item{
            top:15px;
            right: 25px;
        }
        .block-link-pop{
            border-radius: 25px !important;
            
        }
        .font-w600, .font-w400{
            color:#fff !important;
            text-align: center !important;
        }
        .block-cards{
            min-height: 350px;
        }
        .none{
            display: none;
        }
        .templatesRows{
            margin-bottom: 10px;
        }
        .block-content-custom{
            margin-bottom: 0px !important;
        }
        .device-card-box{
            margin-top:20px;
        }
        .block-rows{
            border-top:none !important;
            min-height:100px;
            background:#fff;
        }
        .bottom-border-none{
            border-bottom:none !important;
            /* background:#f6f7f8; */
        }
        .block-content-small{
            padding:10px 20px !important;
        }
        .block-content-small p{
            text-align:left;
            font-size: 12px; 
        }
        .block-content-small p{
            margin-bottom: 0px; 
        }
        .block-content-small p span{
            font-weight: 800;
        }
        .block-content-small img{
            max-width: 70%;
        }
        .bredcrumpp ul{
            padding:0px;
            font-size: 12px;
        }
        .bredcrumpp ul li{
            list-style: none;
            display: inline-block;
            width:24%;
        }
        .bredcrumpp ul li a{
            display: block;
            padding-left:12px;
            background: rgb(24,45,124);
            margin: 0px;
            margin-bottom: 5px;
            font-weight: 600;
            position: relative;
            -webkit-transition: all 0.3s ease-in;
            -o-transition: all 0.3s ease-in;
            transition: all 0.3s ease-in;
            margin-right:5px;
            color:#fff !important;

        }
        .bredcrumpp ul li a::before{
            position: absolute;
            content: "";
            left: 100%;
            top: 0px;
            border-top: 9px solid transparent;
            border-left: 8px solid rgb(24,45,124);
            border-bottom: 9px solid transparent;
            -webkit-transition: all 0.3s ease-in;
            -o-transition: all 0.3s ease-in;
            transition: all 0.3s ease-in;
        }
        .bredcrumpp ul li a::after{
            position: absolute;
            content: "";
            left: 0px;
            top: 0px;
            border-top: 9px solid transparent;
            border-left: 8px solid #ffffff;
            border-bottom: 9px solid transparent;
            -webkit-transition: all 0.3s ease-in;
            -o-transition: all 0.3s ease-in;
            transition: all 0.3s ease-in;
        }
        .no-padding{
            padding:0px;
        }
        .no-margin{
            margin:0px;
        }
        .ribbon-bottom .ribbon-box {
            font-size: 12px;
            top: 3.20rem !important;
        }
        .font-size-sm{
            font-size:13px !important;
        }
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
            border:10px solid #000; 
            height:360px;
            margin-bottom:0px;
        }
        * {box-sizing: border-box;}
        .overlay {
            position: relative; 
            background: rgb(0, 0, 0);
            background: rgba(0, 0, 0, 0.5); /* Black see-through */
            color: #f1f1f1; 
            width: 100%;
            transition: .5s ease;
            opacity:0;
            color: #fff;
            font-size: 20px;
            padding: 17px;
            text-align: center;
            bottom:58px;
        }
        .tv-div:hover .overlay {
            opacity: 1;
        }
        .main-box{
            padding:0px 5px;
        }
        .tv-parent{
            background:#fff; 
            padding:10px;
        }
        .tv-logo{
            display: block; 
            height:50px; 
            max-width:100%; 
            text-align:center;
        }
        .tv-queue-box{
            display:flex;
        }
        .tv-footer-parent{
            display: block; 
            height:50px; 
            width:100%; 
            text-align:center;
        }
        .midS{
            width: 50px; 
            margin: auto;
            height: 30px;
            background: #000;
        }
        .midL{
            width: 190px; 
            margin: auto;
            height: 20px;
            background: #000;
            border-radius: 20px 20px 0px 0px;
        }
    </style>
    <link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
@endsection
@section('content')
<div class="content advance-dashboard" id="content-page">
    <!-- Stats -->
   
    <div class="row row-deck">
        <!-- Latest Customers -->
      

        <!-- Latest Orders -->
        <div class="col-lg-12">
            <div class="block block-rounded block-mode-loading-oneui">
                <div class="block-header block-header-default">
                    <h3 class="block-title">Overview</h3>
                    <a href="{{route('dashboard')}}" title="Dashboard"><i class="nav-main-link-icon si si-speedometer"></i></a>
                    &nbsp;&nbsp;&nbsp;<a href="{{route('advance-dashboard')}}" title="Advance Dashboard"><i class="nav-main-link-icon si si-grid"></i></a>
                </div>
                
            </div>
        </div>
        <!-- END Latest Orders -->
    </div>
    @foreach($devices->chunk(3) as $device)
        <div style="position: relative">
            <div class="row" >
                @foreach ($device as $d)
                    <div class="col-md-6 device-card-box" >
                        <div class="block block-bordered block-cards block-content-custom ribbon @if(count($d->schedules) == 0) ribbon-danger ribbon-bottom @endif" data-id="device-row{{ $d->id }}">
                            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}"  >
                                <h3 class="block-title text-white" >{{ $d->device_name }}</h3>
                            </div>
                            <div class="block-content" style="min-height: 201px;">
                                
                                <div class="text-center">
                                   @php
                                        $template   = $d->playlist->deviceTemplateData;
                                        $view       = $template->template_id;
                                       
                                   @endphp   
                                    @include('admin.advance-dashboard.template_'.$view)                
                                </div>
                                <br>
                                <div class="bredcrumpp" >
                                    <ul>
                                        @if ($d->zone)
                                            <li  title="{{$d->zone->name}}"><a>{{ substr($d->zone->name,0,12) }}</a></li>
                                        @endif
                                        @if ($d->city)
                                            <li  title="{{$d->city->name}}"><a>{{ substr($d->city->name,0,12)}}</a></li>
                                        @endif
                                        @if ($d->branches)
                                            <li  title="{{$d->branches->branch_name}}"><a>{{ substr($d->branches->branch_name,0,12)}}</a></li>
                                        @endif
                                        @if ($d->device_group)
                                            <li title="{{$d->device_group->name}}" ><a>{{ substr( $d->device_group->name,0,12)}}</a></li>
                                        @endif
                                        
                                    </ul>    
                                </div>
                                <hr>
                                
                            </div>
                            <div class="block-content no-padding">
                            
                                <table class="table table-bordered mt-4 table-vcenter tab-full-width no-margin">
                                    <thead>
                                        <tr class="bg-light">
                                            <th class="d-none d-sm-table-cell" style="width:35%">Info
                                            </th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="font-size-sm">
                                                Lisence Expiery
                                            </td>
                                            <td class="font-size-sm">
                                                {!! $d->dl? $d->checkLisenceStatus($d->dl->expiery):'' !!}
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="font-size-sm">
                                                Playlist
                                            </td>
                                            <td class="font-size-sm" style="word-break:break-all">
                                               {{$d->playlist?$d->playlist->name:'N/A'}}
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                @endforeach
                
            </div>
            
        </div>
    @endforeach
    <br>
    
   </div>

@endsection
@section('js')
   
@endsection