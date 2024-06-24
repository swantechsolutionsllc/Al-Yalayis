@extends('admin.layouts.master')
@section('pageTitle', 'Device Groups')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Device Groups</h3>
            
            @can('create_device_groups')
                <button data-toggle="modal" data-target="#addDeviceGroup" type="button" class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Add 
                </button>&nbsp;&nbsp;
                @endcan
                @can('assign_device_groups')
                <button data-toggle="modal" data-target="#assignDeviceGroup" type="button" class="btn btn-outline-secondary"><i
                    class="fa fa-arrow-right"></i> &nbsp;&nbsp;Assign
                    @endcan
            </button>
            
            
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
                        <th>Device Group</th>
                        <th class="d-none d-sm-table-cell" style="width: 30%;">Devices</th>
                        <th style="width: 15%;">Registered</th>
                        @canany('update_device_groups', 'delete_device_groups')
                        <th style="width: 15%;">Actions</th>
                        @endcanany
                    </tr>
                </thead>
                <tbody>
                    @foreach($deviceGroups as $key => $device)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td class="font-w600 font-size-sm">{{$device->name}}</td>
                            @if($device->devices != '' && $device->devices->count() > 0)
                                <td>
                                    @foreach($device->devices->chunk(4) as $dev)
                                        @foreach($dev as $d)
                                        <span class='badge badge-primary'>{{$d->device_name}}</span>
                                        @endforeach
                                    @endforeach
                                </td>
                            @else
                                <td>
                                <button class="btn btn-warning btn-icon btn-sm btn-circle"><i
                                            class="fa fa-question"></i></button>
                                </td>
                            @endif
                            <td>
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($device->created_at)->diffForHumans() }}</em>
                            </td>
                            @canany('update_device_groups', 'delete_device_groups')
                        
                            <td class="text-center">
                                <div class="btn-group">
                                    @can('update_device_groups')
                                    <button type="button" class="btn btn-sm btn-light js-tooltip-enabled"  data-toggle="modal" data-target="#editDeviceGroup{{ $device->id }}" data-toggle="tooltip" title="" data-original-title="Edit City">
                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                    </button>
                                    @endcan
                                    @can('delete_device_groups')
                                    <button type="button" data-toggle="modal" data-target="#deleteDeviceGroup{{$device->id}}" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="" data-original-title="Delete City">
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
    @include('admin.device_groups.modals.delete')
    @include('admin.device_groups.modals.add')
    @include('admin.device_groups.modals.assign')
    @include('admin.device_groups.modals.edit')
</div>
@endsection
@section('js')
@endsection