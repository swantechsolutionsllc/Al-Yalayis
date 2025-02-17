@extends('admin.layouts.master')
@section('pageTitle', 'Users')
@section('styles')
    <style>
         .block-header.block-header-default.bg-dark {
            padding-left: 0px;
            padding-right: 0px;
            margin: 0pc !important;
        }
        #column_3, #column9{
            margin:0 !important;
            padding-left: 0px !important;        
            padding-right: 0px !important;
        }
        .block-content.block-content-full.text-center{
            margin: 0px !important;
            padding:0px !important;
        }
        .circle-img{
            height: 50px;
            width:50px;
            border-radius:50%;
        }
        .form-check-input{
           display: none;
        }
        .selected-img{
            border:2px solid #000;
        }
        .form-check-inline{
            margin:0px;
        }
        #upload-btn{
            font-size: 20px;
            background: #edf0f2;
            padding: 9px 15px;
            /* height: 50px; */
            border-radius: 50%;
            /* width: 50px; */
            display: inline-block;
            cursor: pointer;
        }
        .roles-class{
            min-width: 200px;
            background: #b2b4b62e;
            padding: 20px;
            border: 1px solid #d5dce1;
            box-shadow: 0px 0px 10px 1px #ccd0d3b3;
            margin: 0px 14px 10px 0px;
            border-radius: 10px;
            cursor: pointer;
        }
        .selected-role , .roles-class:hover{
            background:#3f51b5;
            color: #fff;
            transition: 0.4s ease-in-out;
        }
    </style>
@endsection
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
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
        @can('create_users')
            <div id="left" class="col-4">
                <a style="min-height:400px" class="block block-rounded block-link-shadow"
                    href="#" data-toggle="modal" data-target="#addUser" type="button">
                    <div class="block-header block-header-default bg-warning">
                        <h3 class="block-title text-center text-white">Add User</h3>
                    </div>
                    <div class="block-content block-content-full text-center">
                        <div class="mb-3 mt-6">
                            <i class="fas fa-plus fa-8x text-warning"></i>
                        </div>
                    </div>
                </a>
            </div>
        @endif
        @foreach($get_all_users as $key => $user)
        <div class="col-4">
            <a style="min-height:400px" class="block block-rounded block-link-shadow"
                href="#">
                <div class="block-header block-header-default bg-dark">
                    <div id="column_3" class="col-md-3">
                        <h3 class="block-title text-center text-white">Users</h3>
                    </div>
                    <div id="column_9" class="col-md-9">
                        <div class="btn-group" style="float:right">
                            
                            @can('update_users')
                                <button type="button" class="btn btn-sm btn-dark js-tooltip-enabled" 
                                 data-toggle="modal" data-target="#edituser{{$user->id}}" data-placement="top" title="Edit User">
                                    <i class="fa fa-fw fa-pencil-alt"></i>
                                </button>
                            @endcan
                            @can('delete_users')
                                @if(auth()->user()->id != $user->id )
                                    <button type="button" data-toggle="modal" data-target="#deleteuser{{$user->id}}" class="btn btn-sm btn-dark js-tooltip-enabled"
                                    data-toggle="tooltip" data-placement="top" title="Delete User">
                                        <i class="fa fa-fw fa-times"></i>
                                    </button>
                                @else
                                    <button type="button" class="btn btn-sm btn-dark js-tooltip-enabled"
                                    data-toggle="tooltip" data-placement="top" title="Delete User">
                                        <i class="fa fa-fw fa-times"></i>
                                    </button>
                                @endif
                            @endcan
                            
                        </div>
                    </div>
                </div>
                <div class="block-content block-content-full text-center">
                    <div class="mb-3">
                        <img class="img-avatar-thumb mt-3" style="max-width: 70%;" height="100" src="{{ $user->avatar?$user->avatar:'assets/media/avatar/1.png' }}"
                            alt="">
                        <p class="p-3"><strong class="bg-light" style="font-weight: bold">{{ $user->name }}</strong></p>
                        <table class="table table-bordered mt-4 table-vcenter tab-full-width">
                            <thead>
                                <tr class="bg-light">
                                    <th class="d-none d-sm-table-cell" style="width:35%">Info
                                    </th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                    <td class="font-w600 font-size-sm">
                                        <strong>Email Address</strong>
                                    </td>
                                    <td class="d-none d-sm-table-cell">
                                        <strong class="text-primary">{{ $user->email }}</strong>
                                    </td>
                                </tr>
                                <tr>

                                    <td class="font-w600 font-size-sm">
                                        <strong>Role</strong>
                                    </td>
                                    <td class="d-none d-sm-table-cell">
                                        <strong>@foreach($user->roles as $r) {{ $r->name }} @endforeach</strong>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- <div class="block-content border-top m-0 p-0">
                    <div class="row text-center">
                        <div class="col-12">
                            <div class="block block-rounded">
                                <div class="block-content">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </a>
        </div>
        @endforeach
    </div>
    <!-- END Dynamic Table Full -->

    
    @include('admin.users.modals.add')
    @include('admin.users.modals.edit')
    @include('admin.users.modals.delete')
    
</div>
@endsection
@section('js')
    <script>
        $(document).on('click', '.roles-class', function(){
            $(".roles-class").removeClass('selected-role');
            $(this).addClass('selected-role');
            
        });
        $(document).on('click', '.circle-img', function(){
            $(".circle-img").removeClass('selected-img');
            $(this).addClass('selected-img');
            $("#logo-preview").attr('src', $(this).attr('src'));
            $("#is_file").val(0);
        });
        $(document).on('click', '#upload-btn', function(){
            $(".circle-img").removeClass('selected-img');
            $("#select-img").trigger( "click" ); 
        });
    </script>
@endsection