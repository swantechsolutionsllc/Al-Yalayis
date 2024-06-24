@extends('superadmin.layouts.master')
@section('pageTitle', 'Activity Logs')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Activity Logs</h3>
            
            
                <div class="col-lg-3">
                    <div class="form-group">
                        
                       
                        
                    </div>
                </div>
            
                            
            
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
                        <th>User</th>
                        <th>Organization</th>
                        <th>Action Type</th> 
                        <th>Performed At</th>
                        <th style="width: 30%;">Details</th>
                        
                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($logs as $key => $log)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td>{{ $log->user? $log->user->name:'N/A' }}</td>
                            <td class="font-w600 font-size-sm">{{$log->organization->name}}</td>
                            <td>{{ $log->log_type }}</>
                            <td>
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($log->created_at)->diffForHumans() }}</em>
                            </td>
                            
                            <td >
                                {{ $log->data }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            {{-- <button type="submit">Update</button> --}}
        </div>
       
    </div>
    <!-- END Dynamic Table Full -->
   
    
</div>
@endsection
@section('js')
    
@endsection