@extends('admin.layouts.master')
@section('pageTitle', 'Devices')
@section('styles')
    <style>
         .column_6{
            margin:0 !important;
            padding-left: 0px !important;        
            padding-right: 0px !important;
        }
        .block-content-small img{
            max-width: 70%;
        }
        .bredcrumpp ul{
            padding:0px;
            font-size: 12px;
            width:100%;
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
            margin:0px !important;
        }
        .ribbon-bottom .ribbon-box {
            font-size: 12px;
            top: 0.2rem !important;
        }
        .small-font{
            font-size:10px;
        }
        .action-btns{
            padding:5px;
        }
        .progress{
            height:10px;
            margin-bottom: 0px !important;
        }
        .font-size-sm{
            font-size:13px !important;
        }
        .diplay-flex{
            display:inline-flex;
            align-items: center;
        }
        .small-font-info{
            font-size:12px;
        }
        .none{
            display: none;
        }
        .background-image{
            max-width:100%;
            height:40px;
        }
        div.action-btnss {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            gap: 5px;
        }
        div.action-btnss button {
            width: 50%;
        }
    </style>
@endsection
@section('content')

<!-- Page Content -->
<div class="content devices-page" id="content-page">
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
    <div class="row">
        @can('create_devices')
            @if(($setting->ds - count($devices) )> 0)
                {{-- <div id="left" class="col-4">
                    <a style="min-height:449px" class="block block-rounded block-link-shadow"
                        href="{{url('devices/create')}}" >
                        <div class="block-header block-header-default bg-warning">
                            <h3 class="block-title text-center text-white">Add Device</h3>
                        </div>
                        <div class="block-content block-content-full text-center">
                            <div class="mb-3 mt-6">
                                <i class="fas fa-plus fa-8x text-warning"></i>
                            </div>
                        </div>
                    </a>
                </div> --}}
            @endif
        @endcan
        @foreach($devices as $d)
        <div class="col-md-4 device-card-box" >
            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}" >
                <div class="col-md-8 column_6">
                    <h3 class="block-title text-white" title="{{ $d->device_name }}" >{{ strtoupper(substr($d->device_name , 0, 18))  }}{{ strlen($d->device_name) > 18 ? '...':''}}</h3>
                </div>
                <div  class="col-md-4 column_6">
                    <div class="btn-group" style="float:right">
                        <button type="button" class="btn btn-sm text-white js-tooltip-enabled"
                        data-toggle="tooltip" data-placement="top" title="View more details">
                            <i class="fa fa-fw fa-eye"></i>
                        </button>
                        @can('update_devices')
                            <a  href="{{url('devices/'. $d->id) . "/edit"}}" class="btn btn-sm text-white js-tooltip-enabled" 
                            data-toggle="tooltip" data-placement="top" title="Edit Organization">
                                <i class="fa fa-fw fa-pencil-alt"></i>
                            </a>
                        @endcan
                        
                    </div>
                </div>
            </div>
            <div class="block block-bordered block-cards block-content-custom ribbon @if($d->checkStatus($d->dl?$d->dl->expiery:''))  ribbon-danger ribbon-bottom @endif" data-id="device-row{{ $d->id }}">
                
                <div class="block-content" style="min-height: 201px;">
                    {{-- @if($d->dl)
                        <div class="ribbon-box">
                            {{ $d->checkStatus($d->dl?$d->dl->expiery:'') }}
                        </div>
                    @endif --}}
                    <div class="text-center">
                        <img style="max-width: 50%;" src="{{asset('admin-assets/img/tv-new.jpeg')}}" class="img-rounded" align="center" />
                    </div>
                    <br>
                    <div class="bredcrumpp" >
                        <ul>
                            @if ($d->zone)
                                <li><a title="{{$d->zone->name}}">{{ substr($d->zone->name,0,8) }}</a></li>
                            @endif
                            @if ($d->city)
                                <li><a>{{ substr($d->city->name,0,8)}}</a></li>
                            @endif
                            @if ($d->branches)
                                <li><a>{{ substr($d->branches->branch_name,0,8)}}</a></li>
                            @endif
                            @if ($d->device_group)
                                <li><a>{{ substr( $d->device_group->name,0,8)}}</a></li>
                            @endif
                            
                        </ul>
                            <div class="action-btnss" id="action-btns-{{$d->id}}"  >
                                <button class="btn  btn-primary small-font action-btns device-{{$d->id}}" data-id="{{$d->id}}"  data-action="rebootDevice">Reboot Device</button>
                                <button class="btn  btn-primary small-font action-btns device-{{$d->id}}" data-id="{{$d->id}}"  data-action="restartApplication">Restart App</button>
                               
                                {{-- @if($d->device_type == 'md')
                                    <button class="btn btn-sm btn-primary small-font action-btns device-{{$d->id}}" data-id="{{$d->id}}" @if($d->is_online == 0) disabled @endif data-action="updateContent">Update Content</button>
                                    <button class="btn btn-sm btn-primary small-font action-btns device-{{$d->id}}" data-id="{{$d->id}}" @if($d->is_online == 0) disabled @endif data-action="live-view">Live View</button>
                                @endif --}}
                            </div>
                           
                                <br>
                                <div class="row">
                                    {{-- <div class="col-md-4 col-sm-6 diplay-flex" style="padding-right:0px;font-size:9px;">Asset Download Status</div>
                                    <div class="col-md-6 col-sm-6 diplay-flex {{$d->content_download_status >=100? 'none':''}}" id="device-progress-div-{{$d->id}}">
                                        <div class="progress push "  style="width:100%;">
                                            <div class="progress-bar {{$d->content_download_status < 100 ? 'progress-bar-striped progress-bar-animated':''}} bg-success" id="device-progress-width-{{$d->id}}" role="progressbar" style="width: {{$d->content_download_status?$d->content_download_status:0}}%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>                                  
                                    </div>
                                     --}}
                                    {{-- <div class="col-md-2 diplay-flex font-size-sm font-w600 text-danger {{ $d->content_download_status >= 100 ? 'none':'' }} " id="device-progress-{{$d->id}}" >
                                        {{$d->content_download_status?$d->content_download_status:0}}%                                    
                                    </div>
                                    <div class="col-md-6 diplay-flex {{ $d->content_download_status < 100 ? 'none':'' }} " id="device-progress-completed-{{$d->id}}" >
                                        <span class="font-size-sm" style="padding-right:0px;font-size:9px;"  > Update Completed<i class="fa fa-check-circle text-success"></i></span>
                                    </div> --}}
                                </div>
                            
                                <div class="row">
                                    <div class="col-md-4 col-sm-6 diplay-flex" style="padding-right:0px;font-size:9px;">Update requested at</div>
                                    <div class="col-md-8 col-sm-6 diplay-flex small-font-info">
                                            {{ date('M d Y h:i a', strtotime( $d->last_content_update_sent))}}
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-sm-6 diplay-flex" style="padding-right:0px;font-size:9px;">Content downladed at</div>
                                    <div class="col-md-8 col-sm-6 diplay-flex small-font-info">
                                            {{ date('M d Y h:i a', strtotime( $d->content_download_completed_at))}}
                                    </div>
                                </div>
                           
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
                            @if($d->device_type == 'md')
                            <tr>
                                <td class="font-size-sm">
                                    Playlist
                                </td>
                                <td class="font-size-sm" style="word-break:break-all">
                                    @php
                                        $playlist =    $d->activePlayList()->first();
                                    @endphp
                                   {{$playlist ?$playlist->name:'N/A'}}
                                </td>
                            </tr>
                            @else
                            <tr>
                                <td class="font-size-sm">
                                    Background {{ucfirst($d->content_type)}}
                                </td>
                                <td class="font-size-sm" style="word-break:break-all">
                                    @if($d->gallery)
                                        <img src = "{{asset($d->gallery->thamnail_url)}}" class="background-image">
                                    @else
                                        Not Selected
                                    @endif
                                </td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
        @endforeach
        
    </div>

    
    
</div>
@endsection
@section('js')
@endsection