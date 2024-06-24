<!DOCTYPE html>
<html lang="en">
<head>
@include('admin.layouts.head')
</head>
<body>
   <style type="text/css">
        html, 
        body {
            height: 100%;
        }
    </style>

            @yield('content')
        
@include('admin.layouts.scripts')
</body>
</html>

