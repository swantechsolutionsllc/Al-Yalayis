@extends('admin.layouts.master')
@section('pageTitle', 'Counters')
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
        {{-- @can('create_devices')
            @if(($setting->ds - count($devices) )> 0)
                <div id="left" class="col-4">
                    <a style="min-height:340px" class="block block-rounded block-link-shadow"
                        href="{{url('counters/create')}}" >
                        <div class="block-header block-header-default bg-warning">
                            <h3 class="block-title text-center text-white">Add Counter</h3>
                        </div>
                        <div class="block-content block-content-full text-center">
                            <div class="mb-3 mt-6">
                                <i class="fas fa-plus fa-8x text-warning"></i>
                            </div>
                        </div>
                    </a>
                </div>
            @endif
        @endcan --}}
        @foreach($devices as $d)
        <div class="col-md-4 device-card-box" >
            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}" >
                <div class="col-md-8 column_6">
                    <h3 class="block-title text-white" title="{{ $d->device_name }}" >{{ strtoupper(substr($d->name , 0, 18))  }}{{ strlen($d->name) > 18 ? '...':''}}</h3>
                </div>
                <div  class="col-md-4 column_6">
                    <div class="btn-group" style="float:right">
                       
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
                
                <div class="block-content" style="min-height: 150px;">
                    
                    <div class="text-center">
                        <img style="max-width: 50%;" src="{{asset('admin-assets/img/tv-new.jpeg')}}" class="img-rounded" align="center" />
                    </div>
                   
                    
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
                                    Main Display
                                </td>
                                <td class="font-size-sm" style="word-break:break-all">
                                   {{$d->device?$d->device->device_name:'N/A'}}
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
@endsection
@section('js')

@endsection