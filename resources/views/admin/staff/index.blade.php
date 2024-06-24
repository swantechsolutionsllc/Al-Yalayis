@extends('admin.layouts.master')
@section('pageTitle', 'Users')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">
<style>
    ul {
        text-align: left !important;
    }

    .bg-dark{
        color:#fff;
    }
    .list-group-item strong{
        background:#343a40bf;
        color:#fff;
        text-align: center;
        display:block;
        border-radius:5px 5px 0px 0px;
    }
    .orientation {
            background:url("{{ asset('assets/img/horizental.svg') }}");
            width: 110px;
            height: 60px;
            margin: 1%;
            text-align: center;
            font-weight: normal;
            font-size: 11px;
            color: #000;
            background-repeat: no-repeat;
            padding-top: 60px;
            padding-bottom: 7px;
            border-color: #e5e5e5;
            border-style: solid;
            border-width: 1px;
            border-radius: 3px;
            background-position: 50% 50%;
            background-size: auto 42px;
            z-index: 100;
            background-color: transparent;
            cursor: grab;
            box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
            -webkit-box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
            background-color: #fff;
	}
	
	.potrait {
        background:url("{{ asset('assets/img/vertical.svg') }}");
		background-repeat: no-repeat;
        background-position: center;
        width: 60px !important;
		background-size: auto 35px !important;
		margin-left: 15px;
		margin-right: 15px;
	}
	.device-type{
        background:url("{{ asset('assets/img/md.svg') }}");
        width: 110px;
        height: 60px;
        margin: 1%;
        text-align: center;
        font-weight: normal;
        font-size: 11px;
        color: #000;
        background-repeat: no-repeat;
        padding-top: 60px;
        padding-bottom: 7px;
        border-color: #e5e5e5;
        border-style: solid;
        border-width: 1px;
        border-radius: 3px;
        background-position: 50% 50%;
        background-size: auto 42px;
        z-index: 100;
        background-color: transparent;
        cursor: grab;
        box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
        -webkit-box-shadow: 0px 1px 4px 0px rgb(0 0 0 / 5%);
        background-color: #fff;
        
    }
    .cd{
        background:url("{{ asset('assets/img/cd.svg') }}");
        background-repeat: no-repeat;
        background-size: contain;
        background-position: center;
    }
	.orientation-selected {
		border: 1px solid #000000;

	}
    
    
        .displayNone{
            display:none;
        }
        .selected{
            border:2px solid;
        }
        .preview-image{
            width:100%; 
            height: 140px;
           
        }
        .preview-images{
            width:150px;
            background-color: #d4d4d4;
            padding: 5px;
            margin: 0px 5px 10px;
            height: 150px;
        }
        
</style>
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
                <a style="min-height:350px" class="block block-rounded block-link-shadow"
                    href="#" data-toggle="modal" data-target="#addUser" type="button">
                    <div class="block-header block-header-default bg-warning">
                        <h3 class="block-title text-center text-white">Add Staff</h3>
                    </div>
                    <div class="block-content block-content-full text-center">
                        <div class="mb-3 mt-6">
                            <i class="fas fa-plus fa-8x text-warning"></i>
                        </div>
                    </div>
                </a>
            </div>
        @endif
        @foreach($staff as $key => $user)
        <div class="col-4">
            <a style="min-height:350px" class="block block-rounded block-link-shadow"
                href="#">
                <div class="block-header block-header-default bg-dark">
                    <div id="column_3" class="col-md-3">
                        <h3 class="block-title text-center text-white">Staff</h3>
                    </div>
                    <div id="column_9" class="col-md-9">
                        <div class="btn-group" style="float:right">
                            
                            @can('update_users')
                                <button type="button" class="btn btn-sm btn-dark js-tooltip-enabled" 
                                  onclick="gotopage('{{$user->id}}')" data-placement="top" title="Edit User">
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
                        @if($user->staff_background_content)
                            <img class="img-avatar-thumb mt-3" style="max-width: 70%;" height="100" src="{{ $user->gallery?$user->gallery->thamnail_url:'assets/media/avatar/1.png' }}"
                            alt="">
                        @endif
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
                                        <strong>Staff ID</strong>
                                    </td>
                                    <td class="d-none d-sm-table-cell">
                                        <strong>{{$user->staff_id}}</strong>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
               
            </a>
        </div>
        @endforeach
    </div>
    <!-- END Dynamic Table Full -->

    
    @include('admin.staff.modals.add')
   
    @include('admin.staff.modals.delete')
    
</div>
@endsection
@section('js')
   <script>
    $(".toggleanchor").click(function(e) {
            e.preventDefault();    
            var id      = $(this).attr('data-id');
            var type    = $(this).attr('data-type');
            var src     = $(this).attr('data-src');
            var box = $(this).attr('data-box');
                
            $("#"+id).prop('checked', true);
            $(".toggleanchor").removeClass('selected');
            $(this).addClass('selected');
            $("#preview"+box).attr('src', src);
            console.log(box);
            $("#preview"+box).parent().removeClass('displayNone');
        });
       
    function gotopage(id){
        window.location.href = '{{url("staff")}}/'+id+'/edit';
    }
    $("#content-type").change(function(){
        var contentType = $(this).val();
        if(contentType == 'video'){
            $("#video-1").show();
            $("#image-1").hide();
        }else{
            $("#video-1").hide();
            $("#image-1").show();
        }
    });
    </script>
@endsection