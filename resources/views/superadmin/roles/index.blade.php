@extends('superadmin.layouts.master')
@section('pageTitle', 'Roles')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Roles</h3>
            
            
                <div class="col-lg-3">
                    <div class="form-group">
                        {{-- <label for="val-select2">Select Organization <span class="text-danger">*</span></label> --}}
                        {{-- <select class="js-select2 form-control" id="org-id" name="organization" style="width: 100%;" data-placeholder="Choose one..">
                            <option></option>
                            @foreach ($orgs as $org)
                                <option value="{{ $org->id }}" {{ Request::get('org')== $org->id?'selected':''}}>{{ $org->name }}</option>
                            @endforeach
                        </select> --}}
                       
                        
                    </div>
                </div>
            
                <button data-toggle="modal" data-target="#addZone" type="button" class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Add
                </button>
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
                        <th>Role Name</th>
                        
                        <th>Organization</th>
                        {{-- <th>Permissions</th> --}}
                        <th style="width: 15%;">Registered</th>
                        <th style="width: 15%;">Actions</th>
                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($roles as $key => $role)
                        <tr>
                            <td class="text-center font-size-sm">{{ $loop->iteration }}</td>
                            <td class="font-w600 font-size-sm">{{$role->name}}</td>
                            <td>{{ $role->organization->name }}</td>
                            
                            {{-- <td>
                                @foreach($role->permissions as $per)
                                <div class="custom-control custom-switch mb-1">
                                    <input type="checkbox"  id="checkbox{{ $per->id }}" class="custom-control-input childCats-{{ $per->id }}-{{ $role->id }}"  type="checkbox"
                                    name="permission[{!!$role->id!!}][{!!$per->id!!}]"
                                    value='1'  >
                                    <label class="custom-control-label" for="checkbox{{ $per->id }}"> {!! ucwords(str_replace("_", " ", $per->name)) !!}</label>
                                </div>


                               
                                @endforeach
                            </td> --}}

                            <td>
                                <em class="text-muted font-size-sm">{{ Carbon\Carbon::parse($role->created_at)->diffForHumans() }}</em>
                            </td>
                            
                            <td class="text-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-light js-tooltip-enabled"  data-toggle="modal" data-target="#editZone{{$role->id}}" data-toggle="tooltip" title="" data-original-title="Edit Zone">
                                        <i class="fa fa-fw fa-pencil-alt"></i>
                                    </button>
                                    <button type="button" data-toggle="modal" data-target="#deleteZone{{$role->id}}" class="btn btn-sm btn-light js-tooltip-enabled" data-toggle="tooltip" title="" data-original-title="Delete Zone">
                                        <i class="fa fa-fw fa-times"></i>
                                    </button>
                                    
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            {{-- <button type="submit">Update</button> --}}
        </div>
       
    </div>
    <!-- END Dynamic Table Full -->
    @include('superadmin.roles.modals.add')
    @include('superadmin.roles.modals.delete')
    @include('superadmin.roles.modals.edit')
    
    
</div>
@endsection
@section('js')
    <script>
        $("#org-id").on('change', function(){
            var org_id = $(this).val();
            window.location.href = "{{ route('superadmin.roles.index') }}?org="+org_id;
        })
        </script>
@endsection