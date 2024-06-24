@extends('admin.layouts.master')
@section('pageTitle', 'Cities')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Cities</h3>
            
                @can('create_cities')
                <button data-toggle="modal" data-target="#addCity" type="button" class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Add City
                </button>&nbsp;&nbsp;
                @endcan
                @can('assign_cities')
                <button data-toggle="modal" data-target="#assignCity" type="button" class="btn btn-outline-secondary"><i
                    class="fa fa-arrow-right"></i> &nbsp;&nbsp;Assign
            </button>&nbsp;&nbsp;
            @endcan
            @can('create_cities')
            <button data-toggle="modal" data-target="#importCities" type="button" class="btn btn-outline-secondary"><i
                class="fa fa-file-excel"></i> &nbsp;&nbsp;Import Excel
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
                        <th>City Name</th>
                        <th class="d-none d-sm-table-cell" style="width: 30%;">Branches</th>
                        <th style="width: 15%;">Registered</th>
                        @canany('update_cities', 'delete_cities')
                        <th style="width: 15%;">Actions</th>
                        @endcanany
                    </tr>
                </thead>
                <tbody>
                    @foreach($cities as $key => $city)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td class="font-w600 font-size-sm">{{$city->name}}</td>
                            @if($city->branches->count() > 0)
                                <td>
                                    @foreach($city->branches->chunk(4) as $branch)
                                        @foreach($branch as $b)
                                        <span class='badge badge-primary'>{{$b->branch_name}}</span>
                                        @endforeach
                                    <br><br>
                                    @endforeach
                                </td>
                            @else
                                <td>
                                    <button class="btn btn-warning btn-icon btn-circle"><i
                                            class="fa fa-question"></i></button>
                                </td>
                            @endif
                            <td>
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($city->created_at)->diffForHumans() }}</em>
                            </td>
                            @canany('update_cities', 'delete_cities')
                            <td class="text-center">
                                <div class="btn-group">
                                    @can('update_cities')
                                    <button type="button" class="btn btn-sm btn-light js-tooltip-enabled"  data-toggle="modal" data-target="#editCity{{ $city->id }}" data-toggle="tooltip" title="" data-original-title="Edit City">
                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                    </button>
                                    @endcan
                                    @can('delete_cities')
                                    <button type="button" data-toggle="modal" data-target="#deleteCity{{$city->id}}" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="" data-original-title="Delete City">
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
    @include('admin.cities.modals.assign')
    @include('admin.cities.modals.delete')
    @include('admin.cities.modals.add')
    @include('admin.cities.modals.import')
    @include('admin.cities.modals.edit')
    
</div>
@endsection
@section('js')
@endsection