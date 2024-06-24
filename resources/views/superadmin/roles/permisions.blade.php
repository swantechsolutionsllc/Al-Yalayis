@extends('superadmin.layouts.master')
@section('pageTitle', 'Roles')
@section('styles')
    <style>
        .custom-control-input:checked~.custom-control-label::before {
    color: #fff;
    border-color: #343a40;
    background-color: #343a40;
}
        </style>
@endsection
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Permissions</h3>
            <div class="col-lg-3">
                {{-- <div class="form-group">
                    <label for="val-select2">Select Organization <span class="text-danger">*</span></label>
                    <select class="js-select2 form-control" id="org-id" name="organization" style="width: 100%;" data-placeholder="Choose one..">
                        <option></option>
                        @foreach ($orgs as $org)
                            <option value="{{ $org->id }}" {{ Request::get('org')== $org->id?'selected':''}}>{{ $org->name }}</option>
                        @endforeach
                    </select>
                   
                    
                </div> --}}
            </div>
            <button data-toggle="modal" data-target="#addZone" type="button" class="btn btn-outline-secondary"><i
                class="fa fa-plus"></i> &nbsp;&nbsp;Add
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
           
            <div class="table-responsive">
                <form action="{{route('superadmin.save-permissions')}}" method="post" role="form">
                    @csrf
                    <table class="table table-bordered  table-vcenter ">
                        <thead class="thead-dark">
                    <tr>
                        <th>Permission</th>
                        @foreach($roles as $role)
                            <th class="text-center">{!! ucwords(str_replace("_", " ", $role->name)) !!}</th>
                        @endforeach
                    </tr>
                </thead>
                <tbody>
                    @foreach($permissions as $permission)
                        <tr>
                            <td class="pl-4">{!! ucwords(str_replace("_", " ", $permission->name)) !!}</td>
                            @foreach($roles as $role)
                                <td class="text-center">
                                    <div class="custom-control custom-switch mb-1">
                                        <input type="checkbox"  id="checkbox{{ $permission->id }}-{{ $role->id }}" class="custom-control-input parentCats" data-id="{{ $permission->id }}-{{ $role->id }}"  type="checkbox"
                                        name="permission[{!!$role->id!!}][{!!$permission->id!!}]"
                                        value='1' {!! (in_array($role->id.'-'.$permission->id, $permissionRole)) ? 'checked' : '' !!} >
                                        <label class="custom-control-label" for="checkbox{{ $permission->id }}-{{ $role->id }}"</label>
                                    </div>
                                    {{-- <input id="checkbox" class="parentCats" data-id="{{ $permission->id }}-{{ $role->id }}"  type="checkbox"
                                            name="permission[{!!$role->id!!}][{!!$permission->id!!}]"
                                            value='1' {!! (in_array($role->id.'-'.$permission->id, $permissionRole)) ? 'checked' : '' !!} > --}}
                                </td>
                            @endforeach
                        </tr>
                        @foreach($permission->childPermissions as $per)
                        <tr>
                            <td class="pl-4">{!! ucwords(str_replace("_", " ", $per->name)) !!}</td>
                            @foreach($roles as $role)
                                <td class="text-center">
                                    <div class="custom-control custom-switch mb-1">
                                        <input type="checkbox"  id="checkbox{{ $per->id }}-{{ $role->id }}" class="custom-control-input childCats-{{ $permission->id }}-{{ $role->id }}"  type="checkbox"
                                        name="permission[{!!$role->id!!}][{!!$per->id!!}]"
                                        value='1' {!! (in_array($role->id.'-'.$per->id, $permissionRole)) ? 'checked' : '' !!} {!! (in_array($role->id.'-'.$per->parent_id, $permissionRole)) ? '' : 'disabled' !!} >
                                        <label class="custom-control-label" for="checkbox{{ $per->id }}-{{ $role->id }}"</label>
                                    </div>
                                    {{-- <input id="checkbox"  class="childCats-{{ $permission->id }}-{{ $role->id }}" type="checkbox"
                                            name="permission[{!!$role->id!!}][{!!$per->id!!}]"
                                            value='1' {!! (in_array($role->id.'-'.$per->id, $permissionRole)) ? 'checked' : '' !!}  {!! (in_array($role->id.'-'.$per->parent_id, $permissionRole)) ? '' : 'disabled' !!} > --}}
                                            
                                </td>
                            @endforeach
                        </tr>
                            
                    @endforeach        
                    @endforeach
                </tbody>
            </table>
            <button type="submit" class="btn btn-outline-secondary" style="float: right;ght">Save Permissions</button>
                    </form>
        </div>
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
    $(".parentCats").click(function(){
        var id = $(this).attr('data-id');
        if($(this).is(':checked')){
            $('.childCats-'+id).prop("disabled", false);
            $('.childCats-'+id).prop("checked", true);
        }else{
            $('.childCats-'+id).prop("disabled", true);
            $('.childCats-'+id).prop("checked", false);
        } 
    });
    $("#org-id").on('change', function(){
        var org_id = $(this).val();
        window.location.href = "{{ route('superadmin.permissions') }}?org="+org_id;
    });
      
</script>
@endsection