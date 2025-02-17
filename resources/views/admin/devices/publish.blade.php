@extends('admin.layouts.master')
@section('pageTitle', 'Devices')
@section('styles')
    <style>
         .column_6 {
            margin: 0 !important;
            padding-left: 0px !important;        
            padding-right: 0px !important;
        }
        .block-content-small img {
            max-width: 70%;
        }
        .bredcrumpp ul {
            padding: 0px;
            font-size: 12px;
            width: 100%;
        }
        .bredcrumpp ul li {
            list-style: none;
            display: inline-block;
            width: 24%;
        }
        .bredcrumpp ul li a {
            display: block;
            padding-left: 12px;
            background: rgb(24,45,124);
            margin: 0px;
            margin-bottom: 5px;
            font-weight: 600;
            position: relative;
            transition: all 0.3s ease-in;
            margin-right: 5px;
            color: #fff !important;
        }
        .bredcrumpp ul li a::before {
            position: absolute;
            content: "";
            left: 100%;
            top: 0px;
            border-top: 9px solid transparent;
            border-left: 8px solid rgb(24,45,124);
            border-bottom: 9px solid transparent;
            transition: all 0.3s ease-in;
        }
        .bredcrumpp ul li a::after {
            position: absolute;
            content: "";
            left: 0px;
            top: 0px;
            border-top: 9px solid transparent;
            border-left: 8px solid #ffffff;
            border-bottom: 9px solid transparent;
            transition: all 0.3s ease-in;
        }
        .no-padding {
            padding: 0px;
        }
        .no-margin {
            margin: 0px !important;
        }
        .ribbon-bottom .ribbon-box {
            font-size: 12px;
            top: 0.2rem !important;
        }
        .small-font {
            font-size: 10px;
        }
        .action-btns {
            padding: 5px;
        }
        .progress {
            height: 20px;
            margin-bottom: 0px !important;
        }
        .font-size-sm {
            font-size: 13px !important;
        }
        .diplay-flex {
            display: inline-flex;
            align-items: center;
        }
        .small-font-info {
            font-size: 12px;
        }
        .none {
            display: none;
        }
        .background-image {
            max-width: 100%;
            height: 40px;
        }
        .progress {
            height: 20px;
            margin-bottom: 0px !important;
        }
    </style>
@endsection
@section('content')
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
    <div class="row">   
        <div class="col-md-12">
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title">Devices list</h3>
                </div>
                
                <form method="post" id="publish-content">
                    @csrf
                    <div class="block-content block-content-full">
                        <div class="row">
                            <div id="app" class="container border rounded mt-2">
                                <div class="row h4"> </div> 
                                <div class="row h4">
                                    <div class="col-1"> <input type="checkbox" id="check-all"></div>
                                    <div class="col-4">Device</div>
                                    {{-- <div class="col-2">Requested At</div> 
                                    <div class="col-2">Completed At</div> 
                                    <div class="col-2">Total Attempts</div>  --}}
                                    <div class="col-7">Progress</div> 
                                    {{-- <div class="col-1 text-center">Action</div> --}}
                                </div>
                                @foreach($devices as $d)
                                    @php
                                        $width = $d->content_download_page;
                                        if($width < 30){
                                            $class = 'bg-danger';
                                        }elseif($width > 30 && $width <= 50){
                                            $class = 'bg-warning';
                                        }elseif($width > 50 && $width <= 80){
                                            $class = 'bg-info';
                                        }else{
                                            $class = 'bg-success';
                                        }
                                    @endphp
                                    <div class="row mt-2">
                                        <div class="col-1 h6">
                                            <input type="checkbox" name="device_id[]" value="{{$d->id}}">
                                        </div> 
                                      
                                        <div class="col-4 h6">{{$d->device_name}}</div> 
                                        {{-- <div class="col-2 ">{{$d->actionQueue && $d->actionQueue->requested_at? $d->actionQueue->requested_at:'N/A'}}</div> 
                                        <div class="col-2 ">{{$d->actionQueue && $d->actionQueue->completed_at? $d->actionQueue->completed_at:'N/A'}}</div>  --}}
                                        {{-- <div class="col-2 "></div>  --}}
                                        <div class="col-7 h6">
                                            @if($d->actionQueue)
                                                <div class="progress">
                                                    <div role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" id="device-progress-{{$d->id}}" class="progress-bar progress-bar-striped progress-bar-animated {{$class}}" style="width: {{ $width }}%;">{{ $width }}%</div>
                                                </div>
                                            @endif
                                        </div>
                                        {{-- <div class="col-1 text-center">
                                            <span class="btn btn-primary fa fa-eye"></span> 
                                            <span class="btn btn-danger fa fa-times"></span>
                                        </div> --}}
                                    </div>
                                @endforeach
                                <br>
                                <br>
                                 <div class="row h4">
                                    <div class="col-1"></div>
                                    <div class="col-4"></div> 
                                    <div class="col-5"></div> 
                                    <div class="col-2 text-right">
                                        <button type="submit" style="width:100%;" class="btn btn-primary">Submit</button>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
<script>
    function fetchData() {
        $.ajax({
            url: "{{ route('admin.fetch-udp-data') }}", // Route to your controller method for fetching data
            success: function(response) {
                var array = response.split(",");
                $("#device-progress-" + array[0]).text(array[1] + '%');
                $("#device-progress-" + array[0]).css("width", array[1] + '%');
            }
        });
    }

    $(document).ready(function() {
        fetchData();
        setInterval(fetchData, 5000);

        $('#publish-content').on('submit', function(e) {
            if ($('input[name="device_id[]"]:checked').length === 0) {
                Swal.fire(
                    'Warnning!',
                    'Please select at least one device.',
                    'error'
                    )
                e.preventDefault(); // Prevent form submission
            }
        });
        $('#check-all').on('click', function() {
            if($(this).prop('checked')){
                $('input[name="device_id[]"]').prop('checked', true);
            }else{
                $('input[name="device_id[]"]').prop('checked', false);
            }
        });
    });
</script>
@endsection
