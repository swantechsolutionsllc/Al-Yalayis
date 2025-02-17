@extends('admin.layouts.master')
@section('pageTitle', 'All Categories')
@section('breadcrumb')
    <li><a href="{{url('/')}}"><i class="demo-pli-home"></i></a></li>
    <li><a href="{{url('/')}}">Dashboard</a></li>
    <li class="active"><a href="{{url('branches')}}"> Device Templates</a></li>
@endsection
@section('content')
    <div id="page-content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading">
                        <h3 class="panel-title">Create Templates</h3>
                    </div>
                    <div class="panel-body panel-colorful">
                        <div class="row">
                            
                            <div class="col-sm-2">
                                <input id="rows" type="number" placeholder="Number of rows" class="form-control">
                            </div>
                            
                            <div class="col-sm-3">
                                <button id="element-create" class="btn btn-primary" type="submit">Create</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bordered">
                    <div class="panel-heading  panel-colorful">
                        <h3 class="panel-title">Dynamic Templates</h3>
                    </div>
                    <form action="{{url('create-dynamic')}}" method="post">
                        @csrf
                        <div id="rows-area" class="panel-body panel-colorful">

                        </div>
                        <div class="panel-footer">
                            <input type="submit" name="submit" value="submit" class="btn btn-primary">
                        </div>    
                    </form>
                </div>
            </div>
        </div>
    </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
    $("#element-create").on('click', function(){
        var rows = $("#rows").val();
        var html = '';
        for(var i=1; i<=rows; i++){
            html += "<div class='row'><div class='col-md-6'><div class='form-group'><label>Height of row "+i+" in Percentage</label><input type='text' name='height[]' class='form-control'></div></div><div class='col-md-6'><div class='form-group'><label>No of Colunms in  row "+i+"</label><input type='text' name='cols[]' class='form-control cols' data-id='"+i+"'></div></div></div><div  id='cols-"+i+"'></div>";
        }

        $("#rows-area").html('');
        $("#rows-area").append(html);
    });
    $(document).on('change', '.cols', function (e) {
        var cols = $(this).val();
        var id = $(this).attr('data-id');
        var idd = id;
        if(cols > 1){
            var html = '';
            for(var i = 1; i<=cols; i++){
                html += "<div class='row'><div class='col-sm-6'><div class='form-group'><label>Width of Colunm "+i+" in %</label><input type='text' class='form-control' name='widthRow"+id+"[]'></div></div><div class='col-sm-6'><div class='form-group'><label>Select Colunm Widget Type</label><select class='form-control' name='multiWidgets"+id+"[]'><option value=''></option><option value='1'>Pictures widget </option><option value='2'>Slider text widget</option><option value='3'>Queue number area</option><option value='4'>Video widget</option></select></div></div></div>"
            }
            $("#"+id).html('');
            $("#cols-"+id).append(html);
        }else{
            var html = '';
            
                html += "<div class='form-group'><label>Select Colunm Widget Type</label><select class='form-control' name='widgets"+id+"'><option value=''></option><option value='1'>Pictures widget </option><option value='2'>Slider text widget</option><option value='3'>Queue number area</option><option value='4'>Video widget</option></select></div>"
            $("#"+id).html('');
            $("#cols-"+id).append(html);
        }
    })
</script>
@endsection