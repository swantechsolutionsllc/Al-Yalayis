<!DOCTYPE html>
<html lang="en">
<head>
@include('sa.layouts.head')
</head>
<body>
    <style type="text/css">
        #pageloader
        {
          background: rgba( 255, 255, 255, 0.8 );
          display: none;
          height: 100%;
          position: fixed;
          width: 100%;
          z-index: 9999;
        }

        #pageloader img
        {
          left: 50%;
          margin-left: -32px;
          margin-top: -32px;
          position: absolute;
          top: 50%;
          height: 150px;
        }
    </style>
{{--@if($_SESSION['licence'] == "true")--}}
{{--    <div class="alert alert-danger">--}}
{{--        <stong>You are using free version</stong>--}}
{{--    </div>--}}
{{--@endif--}}
<div id="pageloader">
   <img src="{{asset('admin-assets/img/loader.gif')}}" alt="processing..." />
</div>
<div id="container" class="effect aside-float aside-bright mainnav-lg">
    @include('sa.layouts.header')
    <div class="boxed">
        <div id="content-container">
            <div id="page-head">
                <div id="page-title">
                    @yield('title')
                </div>
                <ol class="breadcrumb">
                    @yield('breadcrumb')
                </ol>
            </div>
            @yield('content')
        </div>
        @include('sa.layouts.sidebar')
    </div>
    @include('sa.layouts.footer')
</div>
@include('sa.layouts.scripts')
</body>
</html>

