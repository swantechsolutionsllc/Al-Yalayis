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
                    <h3 class="block-title">Api Logs</h3>
                </div>
                
                <div class="block-content block-content-full">
                    
                    <table class="table table-bordered   table-vcenter" id="schedules" style="width:100% !important;">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Device</th>
                              <th>Sent At</th>
                                <th>Response Code</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                           @foreach($logs as $log)
                            <tr>
                                <td><code>{{$loop->iteration}} </code></td>
                                <td><code>{{$log->device?$log->device->device_name:'N/A'}} </code></td>
                                <td><code>{{$log->created_at}} </code></td>
                                <td>
                                    <code>
                                        {{$log->message_content}}
                                    </code>

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
