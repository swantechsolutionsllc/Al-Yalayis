@extends('admin.layouts.templates')
@section('pageTitle', 'Create Categories')

@section('content')
    <form style="height: 100%" method="post" enctype="multipart/form-data" action="{{url('submit-template-assets')}}">
        @csrf
    @foreach($template->rows as $r)
        <div style="height: {{$r->height}}%;display:flex;justify-content: center;align-items: center;">
        
             @foreach($r->colunms as $c)
                <div style="width: {{$c->width}}%; border:1px solid red; height: 100%;">
                    <input type="hidden" name="colunm_id[]" value="{{$c->id}}">
                    <input type="hidden" name="type[]" value="{{$c->colunm_widget_type}}">
                    @if($c->colunm_widget_type == 1)
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Image</label>
                                <input type="file" name="content{{$c->id}}" class="form-control">

                                <input type="hidden" name="sliding_direction[]" value="">
                                <input type="hidden" name="text_color[]" value="">
                                <input type="hidden" name="text_size[]" value="">
                                <input type="hidden" name="background_color[]" value="">
                            </div>
                            
                        </div>
                    </div>
                    @elseif($c->colunm_widget_type==2)
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Enter Sliding Text </label>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Slider Text"  name="content{{$c->id}}" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="text_color[]" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="background_color[]" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Size </label>
                                     <select name="text_size[]" class="form-control">
                                    @for($i=1; $i<100; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                               </select> 
                            </div>
                            
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Select Sliding Direction</label>
                               <select name="sliding_direction[]" class="form-control">
                                    <option value="">Select Text Direction</option>
                                    <option value="right">Left to Right</option>
                                    <option value="left">Right to Left</option>
                                    <option value="down">Top to Bottom</option>
                                    <option value="up">Bottom to Top</option>
                               </select>    
                            </div>
                            
                        </div>
                    </div>
                   
                   @elseif($c->colunm_widget_type==3)
                   <div class="row">
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="text_color[]" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="background_color[]" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Text Size </label>
                                     <select name="text_size[]" class="form-control">
                                    @for($i=1; $i<100; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                               </select> 
                            </div>
                            
                        </div>
                         <input type="hidden" name="content{{$c->id}}" class="form-control" value="">
                          <input type="hidden" name="sliding_direction[]" class="form-control" value="">
                    </div>
                   @else
                   <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Video</label>
                                <input type="file" name="content{{$c->id}}" class="form-control">
                                 <input type="hidden" name="sliding_direction[]" value="">
                                <input type="hidden" name="text_color[]" value="">
                                <input type="hidden" name="text_size[]" value="">
                                <input type="hidden" name="background_color[]" value="">    
                            </div>
                            
                        </div>
                    </div>
                   @endif
                </div>
            @endforeach
                   
        </div>
    @endforeach
    <center>
        <br><br>
    <input type="submit" name="" value="Submit Assets" class="btn btn-primary"><br><br></center>
</form>
@endsection