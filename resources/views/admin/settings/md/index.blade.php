@extends('admin.layouts.master')
@section('pageTitle', 'Api Logs')
@section('styles')
<style>
        #zonesDropDownFillter, #citiesDropDownFillter, #branchesDropDownFillter, #deviceGroupsDropDownFillter {
            width: 100% !important;
            text-align: center;
        }
        #relationColumn{
            border-right: solid 4px rgb(235 235 235);
        }

        .select2-container {
            margin-bottom: 20px;
        }
</style>
@endsection
@section('content')

<div class="content">
    <!-- Dynamic Table Full -->
    <div class="row">
       
        
        <div class="col-md-12">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">Settings</h3>
                    
                        <a href="{{ route('md-settings.create') }}" class="btn btn-outline-secondary"><i
                        class="fa fa-setting"></i> &nbsp;&nbsp;Create New
                        </a>
                </div>
                <div class="block-content block-content-full">
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
                    <table class="table table-bordered   table-vcenter" id="schedules" style="width:100% !important;">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Setting Name</th>
                                <th>Devices</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $count = 1 @endphp
                            @foreach($settings as $row)
                            <tr>
                                <td>{{$count++}}</td>
                                <td>{{$row->setting_name}}</td>
                                <td></td>
                                <td>{{$row->created_at}}</td>
                                <td>{{$row->updated_at}}</td>
                                <td>
                                    <a href="{{ route('md-settings.edit',$row->id)}}">
                                        <button type="button" class="btn btn-sm btn-dark js-tooltip-enabled" data-placement="top" title="Edit User">
                                            <i class="fa fa-fw fa-pencil-alt"></i>
                                        </button>
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@endsection
@section('js')
@endsection
