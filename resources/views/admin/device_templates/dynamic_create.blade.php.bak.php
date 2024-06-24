@extends('admin.layouts.templates')
@section('pageTitle', 'Create Categories')

@section('content')
    
    @foreach($height as $key => $value)
        <div style="height: {{$value}}%; border:1px solid green;display:flex;justify-content: center;align-items: center;">
         @for($i=1; $i<=$cols[$key]; $i++)
             @if($cols[$key] == 1)
                <div style="width: 100%; border:1px solid red; height: 100%;">
                   @php
                    $t = $key + 1;
                    $type = ${'widgets'.$t}; 
                   @endphp
                   
                   @if($type == 1)
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Image</label>
                                <input type="file" name="" class="form-control">    
                            </div>
                            
                        </div>
                    </div>
                    @elseif($type==2)
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Enter Sliding Text </label>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Slider Text"  name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Size </label>
                                     <select name="" class="form-control">
                                    <option value="">Select Text Size</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select> 
                            </div>
                            
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Select Sliding Direction</label>
                               <select name="" class="form-control">
                                    <option value="">Select Text Sliding Direction</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select>    
                            </div>
                            
                        </div>
                    </div>
                   
                   @elseif($type==3)
                   <div class="row">
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Queue Box Text Size </label>
                                     <select name="" class="form-control">
                                    <option value="">Select Text Size</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select> 
                            </div>
                            
                        </div>
                        
                    </div>
                   @else
                   <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Video</label>
                                <input type="file" name="" class="form-control">    
                            </div>
                            
                        </div>
                    </div>
                   @endif
                </div>
            @else
            @php
                $keyy = $key + 1;
                $colWidth = ${'widthRow'.$keyy};
                $type = ${'multiWidgets'.$keyy};
            @endphp
            <div style="width: {{$colWidth[$i - 1]}}%; border:1px solid red; height: 100%;">
                   
                   @if($type[$i - 1] == 1)
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Image</label>
                                <input type="file" name="" class="form-control">    
                            </div>
                            
                        </div>
                    </div>
                    @elseif($type[$i - 1]==2)
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Enter Sliding Text </label>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Slider Text"  name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label>Select Sliding Text Size </label>
                                     <select name="" class="form-control">
                                    <option value="">Select Text Size</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select> 
                            </div>
                            
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Select Sliding Direction</label>
                               <select name="" class="form-control">
                                    <option value="">Select Text Sliding Direction</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select>    
                            </div>
                            
                        </div>
                    </div>
                   
                   @elseif($type[$i - 1]==3)
                   <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Queue Box Text Color </label>
                                <input type="color" placeholder="Slect Text Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Queue Box Color </label>
                                <input type="color" placeholder="Select Back Ground Color" name="" class="form-control">    
                            </div>
                            
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Queue Box Text Size </label>
                                     <select name="" class="form-control">
                                    <option value="">Select Text Size</option>
                                    <option>Left to Right</option>
                                    <option>Right to Left</option>
                                    <option>Top to Bottom</option>
                                    <option>Bottom to Top</option>
                               </select> 
                            </div>
                            
                        </div>
                        
                    </div>
                   @else
                   <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select Video</label>
                                <input type="file" name="" class="form-control">    
                            </div>
                            
                        </div>
                    </div>
                   @endif  
                </div>
            @endif
            
         @endfor
        </div>
    @endforeach
@endsection