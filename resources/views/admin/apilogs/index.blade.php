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
                                <th>User</th>
                                <th>Ip</th>
                                <th>Method</th>
                                <th>Call Time</th>
                                <th>User Agent</th>
                                <th>Response Code</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                           
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@endsection
@section('js')
<script>
    

var oTable =    $('#schedules').DataTable({
        processing: true,
        serverSide: true,
        searching: false,
        scrollY: 200,
        scrollX: true,
        autoWidth: true,

       ajax: {
        url: '{{ url('api-logs') }}',
        },
       columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex' },
                { data: 'user_id', name: 'user_id' },
                { data: 'ip', name: 'ip' },
                { data: 'method', name: 'method' },
                { data: 'call_time', name: 'call_time' },
                { data: 'user_agent', name: 'user_agent' },
                { data: 'response_code', name: 'response_code' },
               
             ]
    });


</script>

@endsection
