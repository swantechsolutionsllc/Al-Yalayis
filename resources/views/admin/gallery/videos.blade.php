@extends('admin.layouts.master')
@section('pageTitle', 'Gallery')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">

@endsection
@section('content')

<!-- Page Content -->
    <div class="content">
        
        
        <div class="block-header">
            <h3 class="block-title">Gallery</h3>
               
            @can('upload_gallery')
                <button class="btn btn-outline-secondary" id="selectMultiple">Select Multiple</button>
                <button class="btn btn-outline-secondary" id="delete">Delete Selected (0)</button>
                <button class="btn btn-outline-secondary" id="cancel">Cancel</button>
                
                <a href="{{ route('gallery.create') }}" class="btn btn-outline-secondary"><i
                class="fa fa-file"></i> &nbsp;&nbsp;Upload New
                </a>
            @endcan
            
            
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!-- Block Tabs Default Style -->
                <div class="block block-rounded">
                    
                    <ul class="nav nav-tabs nav-tabs-block">
                        <li class="">
                            <a class="nav-link" href="{{url('gallery')}}">Images</a>
                        </li>
                        <li class="">
                            <a class="nav-link  @if(Request::is('video-gallery')) active @endif" href="{{url('video-gallery')}}">Videos</a>
                        </li>
                        
                    </ul>
                
                </div>
                <div class="row items-push  img-fluid-100">
                    @foreach($videos as $video)
                        <div class="col-sm-6 col-md-2 animated fadeIn">
                            <a class="img-link  img-thumb img-lightbox" style="width:100%;" data-duration="{{$video->duration}}" data-name="{{$video->name}}" data-size="{{$video->size}}" data-url="{{$video->url}}" data-uploaded="{{$video->created_at}}" data-dimessions="{{$video->dimessions}}"  href="{{ asset($video->url)}}">
                                <div>  <span class="spans float-left"><strong> Name :</span> </strong><span class="spans float-right"> {{ strlen($video->name)>15? substr($video->name, 0,15).'..':$video->name}}</span></div>
                                <img class="img-fluid" src="{{ asset($video->thamnail_url)}}" alt="">
                                <div class="play"><img src="http://cdn1.iconfinder.com/data/icons/flavour/button_play_blue.png" /> </div>
                                <div> <strong> <span class="spans float-left"> Size :</span></strong><span class="spans float-right"> {{ $video->size}}</span></div>
                                
                            </a>
                            <input type="checkbox" name="ids[]" value="{{$video->id}}" class="check-boxes ">
                        </div>
                        @endforeach
                    
                </div>
                
                
            </div>
            
        </div>    
        
    </div>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        
        <p id="loading-msg">Loading....</p>
        <h3>Media Info</h3>
      
        <video id="gallery-image" controls 
                width="100%">
            <source src="" type="video/mp4">
            Your browser does not support the video tag.
        </video>
       <div class="info-div">
            <table class="table table-striped table-bordered">
                <tr>
                    <td><strong>Name</strong></td>
                    <td id="file-name" class="spans2"></td>
                </tr>
                <tr>
                    <td><strong>Size</strong></td>
                    <td id="file-size" class="spans2"></td>
                </tr>
                <tr>
                    <td><strong>Dimenssions</strong></td>
                    <td id="file-dimession" class="spans2"></td>
                </tr>
                <tr>
                    <td><strong>Uploaded at</strong></td>
                    <td  id="file-uploaded" class="spans2"></td>
                </tr>
                <tr>
                    <td><strong>Duration</strong></td>
                    <td  id="file-duration" class="spans2"></td>
                </tr>
                <tr>
                    <td><strong>Url</strong></td>
                    <td   class="spans2"><span id="file-url" style="font-size:9px;" ></span></td>
                </tr>
            </table>
            
       </div>
    </div>
@endsection
@section('js')
<script src="{{ asset('assets/js/plugins/sweetalert2/sweetalert2.min.js')}}"></script>

<!-- Page JS Code -->
<script src="{{ asset('assets/js/pages/be_comp_dialogs.min.js')}}"></script>
<script>
    var url = "{{url('/')}}"
    $(".img-lightbox").click(function(e){
        e.preventDefault();
        
        $("#mySidenav").css('width', '450px');
        $("#mySidenav").css('padding', '60px 20px 10px 20px');
        $("#mySidenav").css('box-shadow','20px 10px 10px 15px #7e7878');
            
        var src = $(this).attr('href');
        $("#file-name").text($(this).attr('data-name'));
        $("#file-size").text($(this).attr('data-size'));
        $("#file-dimession").text($(this).attr('data-dimessions'));
        $("#file-uploaded").text($(this).attr('data-uploaded'));
        $("#file-duration").text($(this).attr('data-duration')+' sec');
        var filePath = $(this).attr('data-url');
        filePath = url+filePath;
        $("#file-url").html("<a href='"+filePath+"' target='_blank' >"+filePath+"</a>");
        
        setTimeout(function() {
            $("#loading-msg").hide();
            $("#gallery-image").show(); 
            $("#gallery-image source").attr('src', src);
			$("#gallery-image")[0].load();
           
            
            $(".info-div").show();
         }, 500);
       
    });
    
    function closeNav() {
        $(".info-div").hide();
        document.getElementById("mySidenav").style.width = "0";
        $("#mySidenav").css('padding', '0px');
        $("#mySidenav").css('box-shadow', '');
        $("#gallery-image").hide(); 
        $("#loading-msg").show();   
        
        
    }
    $("#selectMultiple").click(function(){
        $(".img-lightbox").addClass('topPadding');
        $(".check-boxes").show('slow');
        $(this).hide('slow');
        $("#delete").show('slow');
        $("#cancel").show('slow');
    });
    $("#cancel").click(function(){
        $('input:checkbox').prop('checked', false);
        $(".check-boxes").hide('slow');
        $(this).hide('slow');
        $("#delete").hide('slow');
        $(".img-lightbox").removeClass('topPadding');
        $("#selectMultiple").show('slow');
        $("#delete").text('Delete Selected (0)');
        
    });
    $(".check-boxes").change(function(){
        var checked = $('.check-boxes').filter(':checked').length;
        $("#delete").text('Delete Selected ('+checked+')');
        
    });
    $("#delete").click(function(){
        var checked = $('.check-boxes').filter(':checked').length;
          
        if(!checked > 0){
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Please select atleast one file to delete'
            });
        }else{
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    var allVals = [];  
                    $(".check-boxes:checked").each(function() {  
                            allVals.push($(this).val());
                    });
                    var join_selected_values = allVals.join(","); 
                    $.ajax({
                        url: "{{route('delete-multiple-media')}}",
                        type: 'DELETE',
                        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        data: 'ids='+join_selected_values,
                        success: function (data) {
                            Swal.fire(
                                'Deleted!',
                                'Your selected media has been deleted.',
                                'success'
                                ).then(function(){
                                    location.reload();
                                }
                                    
                                );
                        }
                        
                    });
                    
                }
                })
        }
    });
    </script>
       
    
@endsection