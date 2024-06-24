<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<title>@yield('pageTitle') - Digital Signage System</title>
<meta name="csrf-token" content="{{ csrf_token() }}" />
 <!-- Page JS Plugins CSS -->
 <link rel="stylesheet" href="{{asset('assets/js/plugins/magnific-popup/magnific-popup.css')}}">

<link rel="shortcut icon" href="{{ asset('assets/media/favicons/favicon.png')}}">
<link rel="icon" type="image/png" sizes="192x192" href="{{ asset('assets/media/favicons/favicon-192x192.png')}}">
<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/media/favicons/apple-touch-icon-180x180.png')}}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/datatables/dataTables.bootstrap4.css') }}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/datatables/buttons-bs4/buttons.bootstrap4.min.css')}}">
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"> -->
<link rel="stylesheet" href="{{ asset('assets/js/plugins/sweetalert2/sweetalert2.min.css')}}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/select2/css/select2.min.css')}}">
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="{{ asset('assets/js/plugins/dropzone/dist/min/dropzone.min.css')}}">
         
<link rel="stylesheet" id="css-main" href="{{ asset('assets/css/oneui.min.css')}}">
<link href="{{  asset('assets/toaster/build/toastr.css')}}" rel="stylesheet" type="text/css" />
<style>

        .active-link {
    color: #fff;
    background-color: #646c74;
    border-radius: 5px;
    padding-right: 20px !important;
    }
    .active-link .nav-main-link-icon{
        color: #fff !important;
    }
    .nav-main-link{
        padding:12px 8px;
    }
    </style>
@yield('styles')