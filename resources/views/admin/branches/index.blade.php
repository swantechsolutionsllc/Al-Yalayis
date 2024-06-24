@extends('admin.layouts.master')
@section('pageTitle', 'Branches')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Branches</h3>
            
                @can('create_branches')
                <a  href={{ url('branches/create') }} class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Add 
                </a>&nbsp;&nbsp;
                @endcan
                @can('assign_branches')
                <button data-toggle="modal" data-target="#assignBranches" type="button" class="btn btn-outline-secondary"><i
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
                        <th>Branch Name</th>
                        <th>Branch Code</th>
                        <th>Branch Manager Name</th>
                        <th>Branch Contact No</th>
                        <th>Branch IT Support Name</th>
                        <th>Branch IT Support No</th>
                        <th>Device Groups</th>
                        <th style="width: 15%;">Registered</th>
                        @canany('update_branches', 'delete_branches')
                        <th style="width: 15%;">Actions</th>
                        @endcanany                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($branches as $key => $branch)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td>{{$branch->branch_name}}</td>
                            <td>{{$branch->branch_code}}</td>
                            <td>{{$branch->branch_manager_name}}</td>
                            <td>{{$branch->branch_contact_no}}</td>
                            <td>{{$branch->branch_it_support_name}}</td>
                            <td>{{$branch->branch_it_support_no}}</td>
                            @if($branch->device_group->count() > 0)
                                                <td>
                                                    @foreach($branch->device_group->chunk(1) as $device)
                                                        @foreach($device as $d)
                                                        <span class='badge badge-primary'>{{$d->name}}</span>
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
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($branch->created_at)->diffForHumans() }}</em>
                            </td>
                            @canany('update_branches', 'delete_branches')

                            <td class="text-center">
                                <div class="btn-group">
                                    @can('update_branches')
                                    <a href="{{ route('branches.edit', $branch->id) }}" class="btn btn-sm btn-light js-tooltip-enabled"   data-original-title="Edit City">
                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                    </a>
                                    @endcan
                                    @can('delete_branches')
                                    <button type="button" data-toggle="modal" data-target="#deleteBranch{{$branch->id}}" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="" data-original-title="Delete City">
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
    @include('admin.branches.modals.assign')
    
    @include('admin.branches.modals.delete')
    
</div>
@endsection
@section('js')
@endsection