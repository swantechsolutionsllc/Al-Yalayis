@extends('superadmin.layouts.master')
@section('pageTitle', 'Organizations')
@section('styles')
    <style>
        .column_6{
            margin:0 !important;
            padding-left: 0px !important;        
            padding-right: 0px !important;
        }
    </style>
@endsection
@section('content')

<!-- Page Content -->
<div class="content">
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
        <div id="left" class="col-4">
            <a style="min-height:400px" class="block block-rounded block-link-shadow"
                href="{{ route('superadmin.organizations.create') }}">
                <div class="block-header block-header-default bg-warning">
                    <h3 class="block-title text-center text-white">Add Organization</h3>
                </div>
                <div class="block-content block-content-full text-center">
                    <div class="mb-3 mt-6">
                        <i class="fas fa-plus fa-8x text-warning"></i>
                    </div>
                </div>
            </a>
        </div>
        @foreach($organizations as $key => $org)
        <div class="col-4">
            
            <div class="block-header block-header-default bg-dark">
                <div class="col-md-8 column_6">
                    <h3 class="block-title text-white" title="{{ $org->name }}" >{{ strtoupper(substr($org->name , 0, 22))  }}{{ strlen($org->name) > 22 ? '...':''}}</h3>
                </div>
                <div  class="col-md-4 column_6">
                    <div class="btn-group" style="float:right">
                        <button type="button" class="btn btn-sm btn-dark js-tooltip-enabled"
                        data-toggle="tooltip" data-placement="top" title="View more details">
                            <i class="fa fa-fw fa-eye"></i>
                        </button>
                        <a  href="{{ route('superadmin.organizations.edit', $org->id) }}" class="btn btn-sm btn-dark js-tooltip-enabled" 
                        data-toggle="tooltip" data-placement="top" title="Edit Organization">
                            <i class="fa fa-fw fa-pencil-alt"></i>
                        </a>
                        <button type="button" data-toggle="modal" data-target="#deleteOrg{{$org->id}}" class="btn btn-sm btn-dark js-tooltip-enabled"
                        data-toggle="tooltip" data-placement="top" title="Delete Organization">
                            <i class="fa fa-fw fa-times"></i>
                        </button>
                    </div>
                </div>
            </div>
            <a style="min-height:352px" class="block block-rounded block-link-shadow"
            href="{{ url('superadmin/set-global-organization/'.$org->id) }}">
                <div class="block-content block-content-full text-center">
                    <div class="mb-3">
                        <img class="img" src="{{ asset($org->logo) }}" width="200" style="max-height:80px;" alt="">
                    </div>
                </div>
            
                <div class="block-content border-top m-0 p-0">
                    <div class="row text-center">
                        <div class="col-12">
                            <div class="block block-rounded">
                                <div class="block-content">
                                    <table class="table table-bordered table-vcenter tab-full-width">
                                        <thead>
                                            <tr class="bg-light">
                                                <th>#</th>
                                                <th class="d-none d-sm-table-cell" style="width:35%">Info
                                                </th>
                                                <th>Detail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span>
                                                        <i class="fas fa-desktop"></i>
                                                    </span></td>
                                                <td class="font-w600 font-size-sm">
                                                    <span>Total Devices</span>
                                                </td>
                                                <td class="d-none d-sm-table-cell">
                                                    <span>{{ $org->devices_count }}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>
                                                        <i class="fas fa-users"></i>
                                                    </span></td>
                                                <td class="font-w600 font-size-sm">
                                                    <span>Total Users</span>
                                                </td>
                                                <td class="d-none d-sm-table-cell">
                                                    <span>{{ $org->users_count }}</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
    <!-- Dynamic Table Full -->
   
    <!-- END Dynamic Table Full -->
    @include('superadmin.organizations.modals.delete')
    
    
</div>
@endsection
@section('js')
@endsection