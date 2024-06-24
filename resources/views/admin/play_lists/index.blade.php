@extends('admin.layouts.master')
@section('pageTitle', 'Play Lists')
@section('styles')
    <style>
        /* .playlists .form-control{
            border:1px solid #000;
            border-radius: 0px;
            background:#edf0f2;
        } */
        .playlists .btn{
          
            width:100%;
        }
        .no-padding{
            padding:0px;
        }
        .content-block{
            background:#edf0f2;
            padding:20px;
        }
        .table{
            border-collapse: separate; 
            border-spacing: 0px 5px;
        }
        .table tr{
            background:#fff;
           
        }
        .table td,  .table th{
            text-align:center;
         
        }
        .lr-border{
            border-left: none !important;
            border-right:none !important;
        }
        .remove-left-border{
            border-left: none !important;
        }
        .remove-right-border{
            border-right: none !important;
        }
        .hidden_row{
            display: none;
        }
        .custom-control-input:checked~.custom-control-label::before {
            color: #fff;
            border-color: #343a40;
            background-color: #343a40;
        }
        .template-images{
            width:50px;
            height:auto;
        }
        .template-names{
            margin-top:5px !important;
            margin-bottom: 0px !important;
            font-size:9px;
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
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <form method="post" id="playListForm">
                    @csrf
                    <div class="row">
                        <div class="col-md-4 col-sm-12" >
                            <label>Create</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <div class="form-group playlists">
                                <input required type="text" id="playListName" name="name" class="form-control">
                                <span class="text-danger" id="errorMsg"></span>
                            </div>
                        </div>
                        <div class="col-md-1 col-sm-12 no-padding" >
                            <div class="form-group playlists">
                            
                                <button type="submit" id="submit"  disabled class="btn bg-dark text-white">Create</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="row" >
                    <div class="col-sm-12">
                        <div class="content-block" style="">
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table" >
                                        <tr>
                                            <th class="remove-right-border text-left">Playlist Name</th>
                                            <th class="lr-border">Active / In-active</th>
                                            <th class="lr-border">Template</th>
                                            <th class="lr-border">Devices</th>
                                            <th class="remove-left-border">Actions</th>
                                        </tr>
                                        @foreach($playLists as $playList)
                                            <tr >
                                                <td class="remove-right-border text-left">{{$playList->name}}</td>
                                                <td class="lr-border">
                                                    <div class="custom-control custom-switch mb-1">
                                                        <input type="checkbox" id="checkbox{{$playList->id}}" class="custom-control-input status"   value="{{ $playList->id}}"  {{$playList->status==1?'checked':''}}>
                                                        <label class="custom-control-label" for="checkbox{{$playList->id}}" ></label>
                                                    </div>
                                                </td>
                                                <td>
                                                    @if($playList->deviceTemplateData)
                                                        <img class="template-images" src="{{asset($playList->deviceTemplateData->device_templates->template_images)}}">
                                                        <p class="template-names">{{$playList->deviceTemplateData->name}}</p>           
                                                    @endif
                                                </td>
                                                 <td class="lr-border showrow" id="showrow-{{$playList->id}}" data-playlistid="{{$playList->id}}"  {{-- onclick="showHideRow('{{$playList->id}}')" --}}>
                                                    <button type="button" class="btn btn-sm rounded-pill bg-dark text-white">
                                                    <i class="fa  fa-angle-down"></i> </button></td>
                                                <td class="remove-left-border">
                                                    <a href="{{route('play-lists.edit',$playList->id)}}" style="color:#000;" ><i
                                                    class="fa fa-fw fa-pencil-alt"></i></a>
                                                    <a href="#" style="color:#000;" class="delete" data-id="{{$playList->id}}" ><i class="fas fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr  id="hidden_row{{$playList->id}}" class="devices_rows hidden_row">
                                            <td colspan="5">
                                                <div class="devices" id="devices_row{{$playList->id}}"></div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
       
    </div>
    
</div>
@endsection
@section('js')
<script>
    $(".showrow").click(function(){
        var id = $(this).attr('data-playlistid'); 
        $(".devices_rows").hide();
        if($(this).hasClass('showed')){
            $(this).removeClass('showed')
            return false;
        }
        $(".devices").html('');
        $.ajax({
            url:"{{url('get-devices')}}/"+id,
            type:'get',
            success:function(data){
                $("#devices_row" + id).html(data);
                $("#showrow-"+id).addClass('showed');
            }
        });
        $("#hidden_row" + id).toggle();
    });
    $("#playListName").change(function(){
        var name = $(this).val();
        $("#submit").attr('disabled', true);
        $("#errorMsg").text('');
        if(name){
            $.ajax({
                url:"{{route('check-playlist-name')}}",
                type:'POST',
                data:{'name':name, '_token': '{{csrf_token()}}'},
                success:function(data){
                    if(data.status){
                        $("#submit").attr('disabled', false);             
                    }else{
                        $("#errorMsg").text(data.message);
                    }
                }
            })
        }
    });
    $(".status").change(function(e){
        var status = 0;
        var id = $(this).val();
        if($(this).prop('checked') == true){
            var status = 1;
        }
        $.ajax({
            url: "{{route('change-play-list-status')}}",
            type: 'post',
            headers: {'X-CSRF-TOKEN': '{{csrf_token()}}'},
            data: {'status':status, 'id':id},
            success: function (data) {
                if(data){
                    Swal.fire(
                    'Success!',
                    'Playlist status has changed successfully',
                    'success'
                    ).then(function(){
                        location.reload();
                    });
                }else{
                    Swal.fire(
                    'Warnning!',
                    'Some devices of this playlist are already has other active playlist',
                    'error'
                    ).then(function(){
                        location.reload();
                    });
                }
                
            }
        });        
    });
    $(".delete").click(function(){
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
                var id = $(this).attr('data-id');
                $.ajax({
                    url: "{{url('play-lists')}}/"+id,
                    type: 'DELETE',
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},   
                    success: function (data) {
                        Swal.fire(
                            'Deleted!',
                            'Your selected playlist has been deleted.',
                            'success'
                            ).then(function(){
                                location.reload();
                            });
                    }
                    
                });
            }
        });
    });
    $(document).on('change', '.paly-list-devices', function(){
        var device_id       = $(this).attr('data-device-id');
        var play_list_id    = $(this).val();
        var status          = 0;
        if ($(this).is(':checked')) {
            status    = 1;
        }
        $.ajax({
            url: "{{route('update-device-playlist')}}",
            type: 'post',
            headers: {'X-CSRF-TOKEN': '{{csrf_token()}}'},
            data: {'device_id':device_id, 'play_list_id':play_list_id, 'status':status},
            success: function (data) {
                One.helpers('notify', {type: 'success', icon: 'fa fa-check mr-1', message:'Status has changed successfully'});
            }
        });
        
    })
    </script>
@endsection