@extends('admin.layouts.master')
@section('pageTitle', 'Device Templates')
@section('content')

<!-- Page Content -->
<div class="content">
    <!-- Dynamic Table Full -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Device Templates</h3>
                <a href="{{url('device-templates/show')}}" class="btn btn-outline-secondary"><i
                        class="fa fa-plus"></i> &nbsp;&nbsp;Create 
                </a>&nbsp;&nbsp;
                <a href="{{url('device-templates/live-view')}}" class="btn btn-outline-secondary"><i
                    class="fa fa-plus"></i> &nbsp;&nbsp;Live View 
                </a>&nbsp;&nbsp;
            
            
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
                        <th>#</th> 
                        <th>Template Image</th>
                        <th>Template ID</th>
                        <th>Template Name</th>
                        <th class="width-images">Images</th>
                        <th class="width-videos">Videos</th>
                        <th>Logo</th>
                        <th>Ticker</th>
                        <th style="width:150px;">Actions</th>
                        
                        
                    </tr>
                </thead>
                <tbody>
                    @foreach($templates as $key => $temp)
                                        <tr>
                                            <td>{{$key +  1}}</td>
                                           
                                            <td><img
                                                    src="{{url('/') . "/" . $temp['device_templates']->template_images}}"
                                                    height="50"></td>
                                                     <td>{{$temp['device_templates']->id}}</td>
                                                    <td>{{$temp->name}}</td>
                                                    
                                            <td class="width-images">
                                                @if($temp->device_templates->images_required == 0)
                                                    <kbd class="bg-warning" style="padding:3px">No images</kbd>
                                                @else
                                                    <button data-toggle="modal"
                                                            data-target="#images-model-{{$temp->id}}"
                                                            class="btn btn-dark btn-sm btn-circle"><i
                                                            class="fa fa-image"></i></button>
                                                @endif
                                            </td>
                                            <td>
                                                @if($temp->device_templates->videos_required == 0)
                                                    <div><kbd class="bg-warning" style="padding:3px">No Videos</kbd></div>
                                                @else
                                                    <button data-toggle="modal"
                                                            data-target="#videos-model-{{$temp->id}}"
                                                            class="btn btn-dark btn-sm btn-circle"><i
                                                            class="fa fa-video"></i></button>
                                                @endif
                                            </td>
                                            <td>
                                                @if(!$temp->logo)
                                                    <kbd class="bg-warning" style="padding:3px">No Logos</kbd>
                                                @else
                                                <img src="{{url('/') . $temp->logo}}" height="50">
                                                @endif
                                            </td>
                                            <td class="text-style">
                                                {{$temp->ticker_text}}
                                            </td>
                                          <td>
                                          <a href="{{url('device-templates/view/'.$temp->id)}}" class="btn btn-primary btn-sm btn-circle" ><i
                                                        class="fas fa-eye"></i></a>
                                                        <a href="{{url('device-templates/edit/'.$temp->id)}}" class="btn btn-success btn-sm btn-circle" ><i
                                                        class="fa fa-fw fa-pencil-alt"></i></a>
                                            <a class="btn btn-danger btn-sm btn-circle" data-toggle="modal"
                                                   data-target="#delete-{{$temp->id}}"><i
                                                        class="fas fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                </tbody>
            </table>
        </div>
       
    </div>
    <!-- END Dynamic Table Full -->
    @include('admin.device_templates.modals.images-model')
    @include('admin.device_templates.modals.videos-model')
    @include('admin.device_templates.modals.delete')
    
</div>
@endsection
@section('js')
@endsection