@extends('admin.layouts.master')
@section('pageTitle', 'View Device Templates')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/js/plugins/slick-carousel/slick.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/js/plugins/slick-carousel/slick-theme.css') }}">
    <style>
       .container-template {
            box-shadow: 0px 0px 5px 0px lightgrey;
            padding: 15px 10px;
            background: #fff;
        }
        input[type=radio] {
            width: 20px;
            height: 20px;
            position: absolute;
            bottom: 35px;
            left: 33px;
        }
        .row{
            padding:0px;
            margin:0px;
        }
        .no-padding{
            padding:0px !important;
        }
        .templates-div{
            background:#fff;
        }
        .tv-div{
            background:#fff;
            border:10px solid #000; 
            height:360px;
            margin-bottom:0px;
        }
        * {box-sizing: border-box;}
        .overlay {
            position: relative; 
            background: rgb(0, 0, 0);
            background: rgba(0, 0, 0, 0.5); /* Black see-through */
            color: #f1f1f1; 
            width: 100%;
            transition: .5s ease;
            opacity:0;
            color: #fff;
            font-size: 20px;
            padding: 17px;
            text-align: center;
            bottom:58px;
        }
        .tv-div:hover .overlay, .tv-parent:hover .overlay {
            opacity: 1;
        }
        .main-box{
            padding:0px 5px;
        }
        .tv-parent{
            background:#fff; 
            padding:10px;
        }
        .tv-logo{
            display: block; 
            height:50px; 
            max-width:100%; 
            text-align:center;
        }
        .tv-queue-box{
            display:flex;
        }
        .tv-footer-parent{
            display: block; 
            height:50px; 
            width:100%; 
            text-align:center;
        }
        .midS{
            width: 50px; 
            margin: auto;
            height: 30px;
            background: #000;
        }
        .midL{
            width: 190px; 
            margin: auto;
            height: 20px;
            background: #000;
            border-radius: 20px 20px 0px 0px;
        }
    </style>
    <link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
@endsection
@section('content')
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
        <div class="block block-rounded">
            <div class="block-header">
                <h3 class="block-title">Manage Device Templates</h3>
                <a href="{{url('device-templates/show')}}" class="btn btn-outline-secondary"><i
                    class="fa fa-plus"></i> &nbsp;&nbsp;Select 
                </a>
            </div>
            
        </div>
        @if($templates->count() > 0)
            
            <div class="row">
                <div class="col-md-12 no-padding" id="templates">
                    @include('admin.device_templates.ajax-view')
                </div>
            </div>
        
        @if($total > 4)
            <input type="hidden" value="{{ count($templates) }}" id="currentLoaded">
            
            <div class="row">
                <div class="col-md-12 no-padding text-center">
                    <button class="btn btn-outline-secondary" id="load-more">Load More</button>
                </div>
            </div>
            <br><br>
        @endif
    @endif
</div>
@endsection
@section('js')

<!-- Page JS Plugins -->
<script src="{{ asset('assets/js/plugins/slick-carousel/slick.min.js') }}"></script>

<!-- Page JS Helpers (Slick Slider Plugin) -->
<script>jQuery(function () { One.helpers('slick'); });</script>
<script>
    var total = "{{ $total }}";
    $("#load-more").click(function(){
        $(this).hide();
        var current = parseInt($("#currentLoaded").val());
        if(current < total){
            $.ajax({
                url:"{{ url('device-templates/load-more') }}",
                data:{current:current},
                success:function(data){
                    $("#templates").append(data);
                    jQuery(function () { One.helpers('slick'); });
                    var newTotal = current + 4;
                    $("#currentLoaded").val(newTotal);
                    if(newTotal < total){
                        $("#load-more").show();
                    }
                    
                } 
            });
        }
        
    });
</script>
@endsection