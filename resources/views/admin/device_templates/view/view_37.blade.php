@extends('admin.layouts.master')
@section('pageTitle', 'All Categories')
@section('breadcrumb')
    <li><a href="{{url('/')}}"><i class="demo-pli-home"></i></a></li>
    <li><a href="{{url('/')}}">Dashboard</a></li>
    <li class="active"><a href="{{url('device-templates')}}"> Device Templates</a></li>
@endsection
<link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
@section('content')
    <div id="page-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading">
                        <h3 class="panel-title">Template View</h3>
                    </div>
                    <div class="panel-body">
                        <div class="tv-bg">
                            <img src="{{asset('admin-assets/img/static-img.jpeg')}}" style="width:100%;">   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

