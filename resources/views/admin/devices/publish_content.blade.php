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
            height:20px;
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
        .progress{
            height:20px;
            margin-bottom: 0px !important;
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
       
        @foreach($devices as $d)
        <div class="col-md-4 device-card-box" >
            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}" >
                <div class="col-md-8 column_6">
                    <h3 class="block-title text-white" title="{{ $d->device_name }}" >{{ strtoupper(substr($d->device_name , 0, 18))  }}{{ strlen($d->device_name) > 18 ? '...':''}}</h3>
                </div>
                <div  class="col-md-4 column_6">
                    
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
                            
                              
                           
                        </div>
                    <hr>
                    <div class="progress push">
                        @php
                            $width = rand(0,100);
                            if($width < 30){
                                $class = 'bg-danger';
                            }elseif($width > 30 && $width <= 50){
                                $class = 'bg-warning';
                            }elseif($width > 50 && $width <= 80){
                                $class = 'bg-info';
                            }else{
                                $class = 'bg-success';
                            }
                        
                        @endphp


                        <div style="width: {{ $width}}%;" class="progress-bar progress-bar-striped progress-bar-animated {{$class}}" role="progressbar"  aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">
                            <span class="font-size-sm font-w600">{{$width}}%</span>
                        </div>
                    </div>
                    <br>
                </div>
              
            </div>
        </div>
        @endforeach
        
    </div>

    
    
</div>
@endsection
@section('js')
@endsection