@extends('admin.layouts.master')
@section('pageTitle', 'Zones')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Zones</h3>
            
                @can('create_zones')
                <button data-toggle="modal" data-target="#addZone" type="button" class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Add
                </button>&nbsp;&nbsp;
                @endcan
                @can('assign_zones')
                <button data-toggle="modal" data-target="#assign_zones" type="button" class="btn btn-outline-secondary"><i
                    class="fa fa-arrow-right"></i> &nbsp;&nbsp;Assign
            </button>
            @endcan
            
            
        </div>
        <div class="block-content block-content-full">
            <!-- DataTables init on table by adding .js-dataTable-full class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
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
            <table class="table table-bordered  table-vcenter js-dataTable-full">
                <thead class="thead-dark">
                    <tr>
                        <th class="text-center" style="width: 80px;">#</th>
                        <th>Zone Name</th>
                        <th class="d-none d-sm-table-cell" style="width: 30%;">Cities Assigned</th>
                        <th style="width: 15%;">Registered</th>
                        @canany('update_zones', 'delete_zones')
                        <th style="width: 15%;">Actions</th>
                        @endcanany
                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($zones as $key => $zone)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td class="font-w600 font-size-sm">{{$zone->name}}</td>
                            @if($zone->cities->count() > 0)
                                <td>
                                    @foreach($zone->cities->chunk(4) as $city)
                                        @foreach($city as $c)
                                        <span class='badge badge-primary'>{{$c->name}}</span>
                                        @endforeach
                                    @endforeach
                                </td>
                            @else
                                <td>
                                    <button class="btn btn-warning btn-icon btn-circle"><i
                                            class="fa fa-question"></i></button>
                                </td>
                            @endif
                            <td>
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($zone->created_at)->diffForHumans() }}</em>
                            </td>
                            @canany('update_zones', 'delete_zones')
                            <td class="text-center">
                                <div class="btn-group">
                                    @can('update_zones')
                                    <button type="button" class="btn btn-sm btn-light js-tooltip-enabled"  data-toggle="modal" data-target="#editZone{{$zone->id}}" data-toggle="tooltip" title="" data-original-title="Edit Zone">
                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                    </button>
                                    @endcan
                                    @can('delete_zones')
                                    <button type="button" data-toggle="modal" data-target="#deleteZone{{$zone->id}}" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="" data-original-title="Delete Zone">
                                        <i class="fa fa-fw fa-times"></i>
                                    </button>
                                    @endcan
                                    
                                </div>
                            </td>
                            @endcanany
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
       
    </div>
    <!-- END Dynamic Table Full -->
    @include('admin.zones.modals.add')
    @include('admin.zones.modals.assign')
    @include('admin.zones.modals.delete')
    @include('admin.zones.modals.edit')
    
    
</div>
@endsection
@section('js')
@endsection