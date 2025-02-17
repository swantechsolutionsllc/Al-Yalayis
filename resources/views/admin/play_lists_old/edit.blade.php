@extends('admin.layouts.master')
@section('pageTitle', 'Play Lists')
@section('styles')
<link rel="stylesheet" href="{{ asset('assets/css/gallery.css')}}">
    <style>
        
        .content-block{
            background:#edf0f2;
            padding:20px;
        }
       .name-color{
            color:#8a939d;
       }
       .bars{
            background: #fff;
            padding: 9px 30px;
            border: 1px solid;
       }
       
       .select2-container{
            border: 1px solid #000 !important;
            height: 46px !important;
       }
       .select2-container--default .select2-selection--single{
            border-radius: 0px;
            height: 44px;
       }
       .form-group{
            margin-bottom:10px;
        }
        .fa-plus, .fa-times{
            margin-top:15px;
        }
        .no-padding{
            padding:0px;
        }
        .preview-image{
            width:100%; 
            height: 140px;
           
        }
        .preview-images{
            width:150px;
            background-color: #d4d4d4;
            padding: 5px;
            margin: 0px 5px 10px;
            height: 150px;
        }
        .padding{
            padding:10px;
        }
        .image-info{
            width: 60%;
            margin-bottom: 10px;
            display: inline-block;
            float: right;
            font-size: 11px;
            font-weight: 500;
            color: #000;
            padding: 5px 3px;
        }
        .image-info span{
            display: block;
        }
        .form-control{
            border:1px solid black;
            border-radius:0px;
        }
        .form-control-assets{
            border:none;
            box-shadow: none;
            border-bottom: 1px solid black;
            border-radius:0px;
        }
        .form-control-assets:focus{
            border:none;
            box-shadow: none;
            border-bottom: 1px solid black;
        }
        
    </style>
@endsection
@section('content')


<div class="content">
   
    <div class="block block-rounded">
       
        <div class="block-content block-content-full">
            <div class="row" >
                <div class="col-sm-12">
                   <div class="content-block" style="">
                        <div class="row form-group" style="margin-bottom:20px;">
                            <div class="col-md-4 col-sm-12" >
                                <label><a href="{{route('play-lists.index')}}">Assign Templates </a> <i class="fa fa-angle-right"></i> <span class="name-color">{{$playList->name}} <i class="fa fa-angle-right"></i> Update</span></label>
                            </div>
                        </div>
                        <form method="post" action="{{route('play-lists.update', $playList)}}">
                            @csrf
                            @method('put')
                            <input  type="hidden"  name="id" value="{{$playList->id}}">
                            <div class="row form-group">
                                <div class="col-md-12 text-left" >
                                    <label>Play List Name</label>
                                </div>
                                
                            </div>
                            <div class="row form-group">
                                <div class="col-md-4 text-center" >
                                    <div class="form-group playlists">
                                        <input required type="text" id="playListName" name="name" value="{{$playList->name}}" class="form-control">
                            
                                        
                                    </div>
                                </div>
                            
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12 text-left" >
                                    <label>Select Template</label>
                                </div>
                                
                            </div>
                            <div class="row form-group">
                                <div class="col-md-4 text-center" >
                                    <div class="form-group playlists">
                                        <select   name="template_id" id="template_id" class="form-control deviceTemplates">
                                            <option value=""></option>
                                            @foreach($deviceTemplateData as $deviceTemplate)
                                                <option value="{{$deviceTemplate->id}}" {{ $deviceTemplate->id == $playList->device_template_data_id ? 'selected':'' }} title="{{$deviceTemplate->device_templates->template_images}}"> {{$deviceTemplate->name}}</option>
                                            @endforeach
                                        </select>
                                        
                                    </div>
                                </div>
                            
                            </div>
                            <div class="" id="assets">

                            </div>
                            <div class="row form-group">
                                <div class="col-md-9"  >
                                
                                </div>
                            
                                <div class="col-md-3 text-right playlists" >
                                    <button type="submit" id="submit" class="btn bg-dark text-white">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>
       
    </div>
    
</div>
@endsection
@section('js')
    <script>
      
        var url = "{{url('/')}}/";
        function templateImages(){
            $("body .deviceTemplates").select2({
                placeholder: "Select Device Template",
                allowClear: true,
                templateResult: function (idioma) {
                    if(idioma.id>0){
                        
                        var $span = $("<span><img width='50' height='50' src='"+url+idioma.title+"'/>  "+idioma.text+" </span>");
                        return $span;
                    }
                },
                templateSelection: function (idioma) {
                if(idioma.id>0){
                        var $span = $("<span>" + "<img  style='width: 37px;\n" +
                            "    height: 24px;\n" +
                            "    border-radius: 3px;' src='"+url+idioma.title+"'/>"+idioma.text+"</span>");
                        return $span;
                }else{
                    return "Select Device Template";
                }
                }
            });
        }
        templateImages();
        $("#template_id").change(function(){
            var id = $(this).val();
            $.ajax({
                url:"{{url('get-template-assets')}}/"+id+"?playlist_id={{$playList->id}}",
                type:'get',
                success:function(data){
                   $("#assets").html(data);
                }
            });
            console.log();
        });
        $("#template_id").trigger('change');
    </script>
@endsection