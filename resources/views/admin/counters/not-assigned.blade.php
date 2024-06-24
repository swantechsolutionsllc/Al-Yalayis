@extends('admin.layouts.master')
@section('pageTitle', 'Devices')
@section('styles')
    
@endsection
@section('content')

    <!-- Page Content -->
    <div class="content">  
    </div>
@endsection
@section('js')
    <script>
        $(document).ready(function(){
            Swal.fire(
                'Not Assigned!',
                'Either Playlist is not assigned to this device or Playlist is Inactive',
                'error'
                ).then(function(){
                    window.top.close();
                });
        })
    </script>
@endsection