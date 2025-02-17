@extends('admin.layouts.master')
@section('pageTitle', 'Relations')
@section('styles')
<style>
    .tree ul {
  margin: 0 0 0 150px;
  padding: 0;
  list-style: none;
  color: #369;
  position: relative;
}
.tree:before, .tree ul:before {
  content: "";
  display: block;
  width: 0px;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  border-left: 1px solid;
  background: #edf0f2;
  z-index: -1;
}
ol, ul {
    list-style: none;
}
.tree li {
  font-weight: bold;
  line-height: 3em;
  margin: 0;
  padding: 1.5em 0 0 2em;
  position: relative;
  /* z-index: -1; */
}
.tree li:before {
  border-top: 1px solid;
  content: "";
  display: block;
  height: 100%;
  left: 0;
  margin-top: 1em;
  position: absolute;
  top: 1.5em;
  width: 2em;
}
.tree li:last-child:before {
  background: #edf0f2;
  bottom: 0;
  height: auto;
  top: 1.5em;
}
.tree > li:before {
  border-top: none !important;
}
.tree li div {
  border-radius: 5px;
  border: 1px solid #afafaf;
  margin: 0;
  max-width: 150px;
  min-width: 150px;
  padding: 0.25em 0.5em;
  background: white;
  box-shadow: 1px 1px 4px #8F949A;
  color: #369;
  font-weight: bold;
}

ul.tree {
  margin-left: 0px;
}
ul.tree:before {
  border-left: none;
}

.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 0px;
  width: 100%;
}
    
</style>
@endsection
@section('content')

<div class="content">
    <!-- Dynamic Table Full -->
    <div class="row">
       
        
        <div class="col-md-12">
            <div class="">
                
               
                
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
                    <!-- DataTables init on table by adding .js-dataTable-full class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
                    <div>

                        <ul class="tree">
                            <li>
                                <div class="sticky">
                                    <button data-toggle="modal" data-target="#addZone" type="button"  class="btn-sm btn btn-outline-secondary btn-rounded">Add New Zone</button>
                                </div>
                            </li>
                          <!-- Root node (Category) -->
                          @foreach($zones as $zone)
                            <li><div class="sticky">{{ $zone->name }}</div>
                                <ul>
                                    <li><div class="sticky"><button zone-id="{{ $zone->id }}" class="btn-sm btn btn-outline-info btn-rounded addCity">Add New City</button></div></li>
                                    @if($zone->cities)
                                        @foreach($zone->cities as $city)
                                            <li><div class="sticky">{{ $city->name }}</div>
                                                <ul>
                                                    <li><div><button class="btn-sm btn btn-outline-success btn-rounded">Add Branch</button></div>
                                                    </li>    
                                                    @if($city->branches)
                                                        @foreach($city->branches as $branch)
                                                            <li><div class="sticky">{{ $branch->branch_name }}</div>
                                                                <ul>
                                                                    <li><div><button class="btn-sm btn btn-outline-warning btn-rounded deviceGroup" branch-id="{{ $branch->id }}" >Add Device Group</button></div>
                                                                    </li>
                                                                    @if($branch->device_group)
                                                                        @foreach($branch->device_group as $dg)
                                                                            <li><div class="sticky">{{ $dg->name }}</div>
                                                                                <ul>
                                                                                    @if($dg->devices)
                                                                                        @foreach($dg->devices as $d)
                                                                                            <li><div>{{ $d->device_name }}</div></li>
                                                                                        @endforeach
                                                                                    @endif
                                                                                    
                                                                                </ul>
                                                                            </li>    
                                                                        @endforeach
                                                                    @endif
                                                                    
                                                                </ul>
                                                            </li>
                                                        @endforeach
                                                    @endif
                                                    
                                                </ul>       
                                                
                                            </li> 
                                        @endforeach
                                    
                                    @endif
                                    
                            </ul>
                            </li>
                            
                          @endforeach
                          
                          
                        </ul>
                      
                      
                      </div>
                        
                </div>
               
            </div>
        </div>
    </div>
    
</div>
@include('admin.device_groups.modals.add')
@include('admin.cities.modals.add')    
@include('admin.zones.modals.add')
   
@endsection
@section('js')
<script>
    $(".addCity").click(function(){
        var zoneId = $(this).attr('zone-id');
        $("#zoneID").val(zoneId);
        $("#addCity").modal('show');
    });
    $(".deviceGroup").click(function(){
        var branchID = $(this).attr('branch-id');
        $("#branchID").val(branchID);
        $("#addDeviceGroup").modal('show');
    });
</script>
@endsection
