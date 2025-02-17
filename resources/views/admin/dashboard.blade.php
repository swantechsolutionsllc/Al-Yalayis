@extends('admin.layouts.master')
@section('pageTitle')Dashboard @endsection
@section('styles')
<style>
    .overlay-item{
        top:15px;
        right: 25px;
    }
    .block-link-pop{
        border-radius: 25px !important;
        
    }
    .font-w600, .font-w400{
        color:#fff !important;
        text-align: center !important;
    }
    .block-cards{
        min-height: 350px;
    }
    .none{
        display: none;
    }
    .templatesRows{
        margin-bottom: 10px;
    }
    .block-content-custom{
        margin-bottom: 0px !important;
    }
    .device-card-box{
        margin-top:20px;
    }
    .block-rows{
        border-top:none !important;
        min-height:100px;
        background:#fff;
    }
    .bottom-border-none{
        border-bottom:none !important;
        /* background:#f6f7f8; */
    }
    .block-content-small{
        padding:10px 20px !important;
    }
    .block-content-small p{
        text-align:left;
        font-size: 12px; 
    }
    .block-content-small p{
        margin-bottom: 0px; 
    }
    .block-content-small p span{
        font-weight: 800;
    }
    .block-content-small img{
        max-width: 70%;
    }
    .bredcrumpp ul{
        padding:0px;
        font-size: 12px;
    }
    .bredcrumpp ul li{
        list-style: none;
        display: inline-block;
        width:24%;
    }
    .bredcrumpp ul li a{
        display: block;
        padding-left:12px;
        background: rgb(24,45,124);
        margin: 0px;
        margin-bottom: 5px;
        font-weight: 600;
        position: relative;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
        margin-right:5px;
        color:#fff !important;

    }
    .bredcrumpp ul li a::before{
        position: absolute;
        content: "";
        left: 100%;
        top: 0px;
        border-top: 9px solid transparent;
        border-left: 8px solid rgb(24,45,124);
        border-bottom: 9px solid transparent;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
    }
    .bredcrumpp ul li a::after{
        position: absolute;
        content: "";
        left: 0px;
        top: 0px;
        border-top: 9px solid transparent;
        border-left: 8px solid #ffffff;
        border-bottom: 9px solid transparent;
        -webkit-transition: all 0.3s ease-in;
        -o-transition: all 0.3s ease-in;
        transition: all 0.3s ease-in;
    }
    .no-padding{
        padding:0px;
    }
    .no-margin{
        margin:0px;
    }
    .ribbon-bottom .ribbon-box {
        font-size: 12px;
        top: 3.20rem !important;
    }
</style>
@endsection
@section('content')
<div class="content">
    <!-- Stats -->
    <div class="row">
        <div class="col-6 col-md-3 col-lg-6 col-xl-3">
            <a class="block block-rounded block-link-pop bg-danger" href="javascript:void(0)">
                <div class="block-content block-content-full">
                    <div class="font-size-sm font-w600 text-uppercase">Zones</div>
                    <div class="font-size-h2 font-w400 text-dark">{{count($zones)}}</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-md-3 col-lg-6 col-xl-3">
            <a class="block block-rounded block-link-pop bg-primary" href="javascript:void(0)">
                <div class="block-content block-content-full">
                    <div class="font-size-sm font-w600 text-uppercase">Cities</div>
                    <div class="font-size-h2 font-w400 text-dark">{{$cities}}</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-md-3 col-lg-6 col-xl-3">
            <a class="block block-rounded block-link-pop bg-success" href="javascript:void(0)">
                <div class="block-content block-content-full">
                    <div class="font-size-sm font-w600 text-uppercase">Branches</div>
                    <div class="font-size-h2 font-w400 text-dark">{{$branches}}</div>
                </div>
            </a>
        </div>
        <div class="col-6 col-md-3 col-lg-6 col-xl-3">
            <a class="block block-rounded block-link-pop bg-warning" href="javascript:void(0)">
                <div class="block-content block-content-full">
                    <div class="font-size-sm font-w600 text-uppercase">Device Groups</div>
                    <div class="font-size-h2 font-w400 text-dark">{{$deviceGroups}}</div>
                </div>
            </a>
        </div>
    </div>
    <div class="row row-deck">
        <!-- Latest Customers -->
      

        <!-- Latest Orders -->
        <div class="col-lg-12">
            <div class="block block-rounded block-mode-loading-oneui">
                <div class="block-header block-header-default">
                    <h3 class="block-title">Overview</h3>
                    <div class="col-sm-2" style="max-width: 14%; flex: 0 0 16.666667%">
                        <button type="button" class="btn btn-outline-secondary active dbtns" id="main_display">Main Displays</button>
                    </div>
                    <div class="col-sm-2" style="max-width: 16%; flex: 0 0 16.666667%">
                        <button type="button" class="btn btn-outline-secondary dbtns" id="counter_display">Counter Displays</button>
                    </div>
                    <a href="{{route('dashboard')}}" title="Dashboard"><i class="nav-main-link-icon si si-speedometer"></i></a>
                    &nbsp;&nbsp;&nbsp;<a href="{{route('advance-dashboard')}}" title="Advance Dashboard"><i class="nav-main-link-icon si si-grid"></i></a>
                </div>
                
            </div>
        </div>
        <!-- END Latest Orders -->
    </div>
    <div id="mds">
        <h2>Main Displays</h2>
    @foreach($mds->chunk(3) as $device)
        <div style="position: relative">
            <div class="row" >
                @foreach ($device as $d)
                    <div class="col-md-4 device-card-box" >
                        <div class="block block-bordered block-cards block-content-custom ribbon @if(count($d->schedules) == 0) ribbon-danger ribbon-bottom @endif" data-id="device-row{{ $d->id }}">
                            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}"  >
                                <h3 class="block-title text-white" >{{ $d->device_name }}</h3>
                            </div>
                            <div class="block-content" style="min-height: 201px;">
                              
                                <div class="text-center">
                                    <img style="max-width: 50%;" src="{{asset('admin-assets/img/tv-new.jpeg')}}" class="img-rounded" align="center" />
                                </div>
                                <br>
                                <div class="bredcrumpp" >
                                    <ul>
                                        @if ($d->zone)
                                            <li><a>{{ substr($d->zone->name,0,8) }}</a></li>
                                        @endif
                                        @if ($d->city)
                                            <li><a>{{ substr($d->city->name,0,8)}}</a></li>
                                        @endif
                                        @if ($d->branches)
                                            <li><a>{{ substr($d->branches->branch_name,0,8)}}</a></li>
                                        @endif
                                        @if ($d->device_group)
                                            <li><a>{{ substr( $d->device_group->name,0,8)}}</a></li>
                                        @endif
                                        
                                    </ul>    
                                </div>
                                <hr>
                                
                            </div>
                            <div class="block-content no-padding">
                            
                                <table class="table table-bordered mt-4 table-vcenter tab-full-width no-margin">
                                    <thead>
                                        <tr class="bg-light">
                                            <th class="d-none d-sm-table-cell" style="width:35%">Info
                                            </th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="font-size-sm">
                                                Lisence Expiery
                                            </td>
                                            <td class="font-size-sm">
                                                {!! $d->dl? $d->checkLisenceStatus($d->dl->expiery):'' !!}
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="font-size-sm">
                                                Playlist
                                            </td>
                                            <td class="font-size-sm" style="word-break:break-all">
                                                @php
                                                    $playlist =    $d->activePlayList()->first();
                                                @endphp
                                                <a href="{{ $playlist ? url('device-templates/edit/'.$playlist->device_template_data_id): '#'}}">{{$playlist?$playlist->name:'N/A'}} </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                @endforeach
                
            </div>
            @foreach ($device as $d)
                @if(count($d->schedules))
                    <div class="row templatesRows none" id="device-row{{ $d->id }}">
                        <div class="col-md-12 text-center">
                            <div class="block block-bordered block-rows block-content-custom">
                                <div class="block-content">
                                    @if(count($d->schedules))
                                        @foreach($d->schedules->chunk(4) as $scedules)
                                            <div class="row">
                                                @foreach($scedules as$s)
                                                    <div class="col-md-3 text-center">
                                                        <div class="block ">
                                                            <div class="block-content block-content-small">
                                                                <img  src="{{ asset($s->deviceTemplateData->device_templates->template_images) }}">
                                                                <p>
                                                                    Status: <span class="{{  strtotime($s->start_time) < strtotime(date('Y-m-d H:i:s')) ? 'text-success': 'text-danger' }}" style="float: right;">{{  strtotime($s->start_time)  < strtotime(date('Y-m-d H:i:s'))? 'Active': 'Incomming' }}</span>
                                                                </p>
                                                                <p>
                                                                    Start Time: <span  style="float: right;">{{ $s->start_time }}</span>
                                                                </p>
                                                                <p>
                                                                    End Time: <span  style="float: right;">{{ $s->end_time }}</span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endforeach
                                    @else
                                    
                                        {{-- <h2></h2> --}}
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    @endforeach
    <br>
</div>
<div id="cds" style="display:none;">
<h2>Counter Displays</h2>
    @foreach($cds->chunk(3) as $device)
        <div style="position: relative">
            <div class="row" >
                @foreach ($device as $d)
                    <div class="col-md-4 device-card-box" >
                        <div class="block block-bordered block-cards block-content-custom ribbon @if(count($d->schedules) == 0) ribbon-danger ribbon-bottom @endif" data-id="device-row{{ $d->id }}">
                            <div class="block-header block-header-default {{$d->is_online?'bg-success':'bg-danger'}} " id="device-status-{{$d->id}}"  >
                                <h3 class="block-title text-white" >{{ $d->device_name }}</h3>
                            </div>
                            <div class="block-content" style="min-height: 201px;">
                              
                                <div class="text-center">
                                    <img style="max-width: 50%;" src="{{asset('admin-assets/img/tv-new.jpeg')}}" class="img-rounded" align="center" />
                                </div>
                                <br>
                                <div class="bredcrumpp" >
                                    <ul>
                                        @if ($d->zone)
                                            <li><a>{{ substr($d->zone->name,0,8) }}</a></li>
                                        @endif
                                        @if ($d->city)
                                            <li><a>{{ substr($d->city->name,0,8)}}</a></li>
                                        @endif
                                        @if ($d->branches)
                                            <li><a>{{ substr($d->branches->branch_name,0,8)}}</a></li>
                                        @endif
                                        @if ($d->device_group)
                                            <li><a>{{ substr( $d->device_group->name,0,8)}}</a></li>
                                        @endif
                                        
                                    </ul>    
                                </div>
                                <hr>
                                
                            </div>
                            <div class="block-content no-padding">
                            
                                <table class="table table-bordered mt-4 table-vcenter tab-full-width no-margin">
                                    <thead>
                                        <tr class="bg-light">
                                            <th class="d-none d-sm-table-cell" style="width:35%">Info
                                            </th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="font-size-sm">
                                                Lisence Expiery
                                            </td>
                                            <td class="font-size-sm">
                                                {!! $d->dl? $d->checkLisenceStatus($d->dl->expiery):'' !!}
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                @endforeach
                
            </div>
            @foreach ($device as $d)
                @if(count($d->schedules))
                    <div class="row templatesRows none" id="device-row{{ $d->id }}">
                        <div class="col-md-12 text-center">
                            <div class="block block-bordered block-rows block-content-custom">
                                <div class="block-content">
                                    @if(count($d->schedules))
                                        @foreach($d->schedules->chunk(4) as $scedules)
                                            <div class="row">
                                                @foreach($scedules as$s)
                                                    <div class="col-md-3 text-center">
                                                        <div class="block ">
                                                            <div class="block-content block-content-small">
                                                                <img  src="{{ asset($s->deviceTemplateData->device_templates->template_images) }}">
                                                                <p>
                                                                    Status: <span class="{{  strtotime($s->start_time) < strtotime(date('Y-m-d H:i:s')) ? 'text-success': 'text-danger' }}" style="float: right;">{{  strtotime($s->start_time)  < strtotime(date('Y-m-d H:i:s'))? 'Active': 'Incomming' }}</span>
                                                                </p>
                                                                <p>
                                                                    Start Time: <span  style="float: right;">{{ $s->start_time }}</span>
                                                                </p>
                                                                <p>
                                                                    End Time: <span  style="float: right;">{{ $s->end_time }}</span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endforeach
                                    @else
                                    
                                        {{-- <h2></h2> --}}
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    @endforeach
    <br>
</div>
   </div>

@endsection
@section('js')
    <script>
        $(".block-cards").click(function(){
            var id = $(this).attr('data-id');
            $(".block-content-custom").removeClass('bottom-border-none');
            $(this).addClass('bottom-border-none');
            $('.templatesRows').addClass('none');
            $('#'+id).removeClass('none');
            
        });

        // Add event listener to the button
        // document.getElementById('#main_display').addEventListener('click', function() {
        //     var cds = document.getElementById('cds');
        //     cds.classList.add('hidden');
        // });

        $(document).ready(function() {
            $("#main_display").on("click", function() {
                $(".dbtns").removeClass('active');
                $(this).addClass('active');
                $("#cds").hide();
                $("#mds").show();

            });
        
            $("#counter_display").on("click", function() {
                $(".dbtns").removeClass('active');
                $(this).addClass('active');
                $("#cds").show();
                $("#mds").hide();
            });
        });
        function fetchData() {
            $.ajax({
                url: "{{route('admin.send-ping-to-devices')}}", // Route to your controller method for fetching data
                success: function(response) {
                    $.each(response, function(key, value){
                        if(value.is_online == 1 && value.total_pings <= 10){
                            $("#device-status-"+value.id).removeClass('bg-danger');
                            $("#device-status-"+value.id).addClass('bg-success');
                            $(".device-"+value.id).attr('disabled', false);
                        }else{
                            $("#device-status-"+value.id).removeClass('bg-success');
                            $("#device-status-"+value.id).addClass('bg-danger');
                            $(".device-"+value.id).attr('disabled', true);
                        }
                    })
                }
            });
        }

        $(document).ready(function() {
            fetchData();
            setInterval(fetchData, 10000);
        });
    </script>
@endsection