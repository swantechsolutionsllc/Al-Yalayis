<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<title>@yield('pageTitle') - Digital Signage System</title>
<link rel="shortcut icon" href="{{ asset('assets/media/favicons/favicon.png')}}">
<link rel="icon" type="image/png" sizes="192x192" href="{{ asset('assets/media/favicons/favicon-192x192.png')}}">
<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/media/favicons/apple-touch-icon-180x180.png')}}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/datatables/dataTables.bootstrap4.css') }}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/datatables/buttons-bs4/buttons.bootstrap4.min.css')}}">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/sweetalert2/sweetalert2.min.css')}}">
<link rel="stylesheet" href="{{ asset('assets/js/plugins/select2/css/select2.min.css')}}">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  
<link rel="stylesheet" id="css-main" href="{{ asset('assets/css/oneui.min.css')}}">
<style>
    .circle-img{
        height: 50px;
        width:50px;
        border-radius:50%;
    }
    .form-check-input{
       display: none;
    }
    .selected-img{
        border:2px solid #000;
    }
    .form-check-inline{
        margin:0px;
    }
    #upload-btn{
        font-size: 20px;
        background: #edf0f2;
        padding: 9px 15px;
        /* height: 50px; */
        border-radius: 50%;
        /* width: 50px; */
        display: inline-block;
        cursor: pointer;
    }
</style>
@yield('styles')