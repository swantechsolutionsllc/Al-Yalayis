<div class="modal fade" id="addDevice" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="deviceForm" action="{{route('devices.store')}}">
                @csrf
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Add Device in <span id="groupName"></span></h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            {{-- <div class="form-group">
                                <label for="val-select2">Device Type <span class="text-danger">*</span></label>
                                <br>
                                <div style="display: inline-flex; float:left;">
                                    <input type="radio" style="display: none;" checked name="device_type" id="cd" value="cd">
                                    <input type="radio" name="device_type" style="display: none;" id="md" value="md">
                                    <label for="cd" class="device-type cd orientation-selected"></label>
                                    <label for="md" class="device-type "></label>
                                </div>    
                                
                            </div> --}}
                            <div class="form-group playlists">
                                <label for="val-username">Device Type<span class="text-danger">*</span></label>
                                <select   name="device_type" id="device_type" required class="form-control">
                                    <option value="md"> Main Display</option>
                                    <option value="cd"> Counter Display</option>  
                                </select>
                                <span class="text-danger invalid-feedback" id="device_type_error">  </span>
                            </div>
                            <div class="form-group" id="md_counters">
                                <label for="val-username">Select Counters<span class="text-danger">*</span></label>
                                    <select   name="counters[]"  multiple class="form-control counters">
                                   @foreach($counters as $ct)
                                        <option value="{{$ct->id}}"> {{$ct->device_name}}</option>
                                    @endforeach
                                   
                                </select>
                                <span class="text-danger invalid-feedback" id="counters_error">  </span>
                            </div>
                            
                            
                            <div class="displayNone" id="background-image">
                                <div class="form-group">
                                    <label for="val-username">Content Type <span class="text-danger">*</span></label>
                                    <select id="content-type" class="form-control" name="content_type">
                                        <option value="image">Image</option>
                                        <option value="video">Video</option>
                                    </select>
                                
                                </div>
                                <div class="form-group" id="background-image">
                               
                                    <div class="row" style="margin-top:20px;">
                                        <div class="col-md-12" id="image-1">
                                            <label for="val-email">Select Staff Profile Image<span class="text-danger">*</span></label>
                                            <br>
                                            <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images displayNone">
                                                <img class="preview-image" id="previewimage" src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" >
                                            </a>
                                                <a href="#" data-toggle="modal" data-target="#modal-logo" >
                                                    <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:150px;">
                                                </a>
                                            
                                            @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'background_content', 'label'=>'Select Staff Profile Image', 'modalId'=>'logo', 'box'=>'image' ])
                                        </div>

                                        <div class="col-md-12" style="display:none;" id="video-1">
                                            <label for="val-email">Select Staff Profile Video<span class="text-danger">*</span></label>
                                            <br>
                                            <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images displayNone">
                                                <img class="preview-image" id="previewvideo" src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" >
                                            </a>
                                                <a href="#" data-toggle="modal" data-target="#modal-video-box" >
                                                    <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:150px;">
                                                </a>
                                            
                                                @include('admin.device_templates.modals.logoModal', ['assets'=> $gvideos, 'type'=>'radio', 'name'=>'background_content', 'label'=>'Select Video', 'modalId'=>'video-box', 'box'=> 'video' ])
                                        </div>
                                        <span class="text-danger invalid-feedback" id="background_image_error">  </span>
                                    </div>
                                    @error('logo')
                                        <span class="text-danger"> {{ $message }} </span>
                                    @enderror
                                    
                                </div>
                                @error('logo')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                                
                            </div>
                            
                            <div class="form-group">
                                <label for="val-select2">Device Orientation <span class="text-danger">*</span></label>
                                <br>
                                <div style="display: inline-flex; float:left;">
                                    <input type="radio" style="display: none;" checked name="device_orientation" id="landscape" value="landscape">
                                    <input type="radio" name="device_orientation" style="display: none;" id="portrait" value="portrait">
                                    <label for="landscape" class="orientation orientation-selected"></label>
                                    <label for="portrait" class="orientation potrait"></label>
                                </div>    
                                @error('device_orientation')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                                
                            </div>
                            <br><br><br>

                            <div class="form-group playlists" id="md_setting">
                                <label for="val-username">Main Display Settings<span class="text-danger">*</span></label>
                                <select   name="setting_id" id="setting_id"  class="form-control">
                                    <option value="">Select</option>
                                    @foreach($mdSetting as $row)
                                        <option value="{{$row->id}}"> {{$row->name}}</option>
                                    @endforeach 
                                </select>
                                <span class="text-danger invalid-feedback" id="device_type_error">  </span>
                            </div>
                            <div class="form-group">
                                <label for="val-username">Device Name <span class="text-danger">*</span></label>
                                <input required type="text" placeholder="Deivce Name" id="demo-hor-inputemail"
                                class="form-control" name="device_name" value="{{old('device_name')}}">
                                <span class="text-danger invalid-feedback" id="device_name_error">  </span>
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Name in QMS<span class="text-danger">*</span></label>
                                <input  type="text" placeholder="Deivce Name in QMS" 
                                class="form-control" name="qms_name" value="{{old('qms_name')}}">
                                <span class="text-danger invalid-feedback" id="qms_name_error">  </span>
                            </div>
                            
                            <div class="form-group">
                                <label for="val-username">IMEI/Mac Address<span class="text-danger">*</span></label>
                                <input required type="text" value="{{old('device_no')}}" placeholder="IMEI/Mac Address" id="imei"
                                class="form-control" name="device_no" >
                                <span class="text-danger invalid-feedback" id="device_no_error">  </span>
                                
                            </div>
                            <div class="form-group">
                                <label for="val-username">Device License Key <span class="text-danger">*</span></label>
                                <input required type="text" value="{{old('device_mac_address')}}" placeholder="Device License Key" id="demo-hor-inputemail"
                                class="form-control" name="device_mac_address" >
                                <span class="text-danger invalid-feedback" id="device_mac_address_error">  </span>
                                
                            </div>
                            <div class="form-group">
                                <label for="val-username">Device Model<span class="text-danger">*</span></label>
                                <input required type="text" placeholder="Device Model" id="demo-hor-inputemail"
                                class="form-control" name="device_model" value="{{old('device_model')}}">
                                <span class="text-danger invalid-feedback" id="device_model_error">  </span>
                                
                            </div>
                            <div class="form-group">
                                <label for="val-username">Device IP Address<span class="text-danger">*</span></label>
                                <input required type="text" placeholder="Device IP Address" id="demo-hor-inputemail"
                                class="form-control" name="ip_address" value="{{old('ip_address')}}">
                                <span class="text-danger invalid-feedback" id="ip_address_error">  </span>
                                
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Ticket Color <span class="text-danger">*</span></label>
                                <input required type="color"
                                class="form-control" name="ticket_color" value="{{old('ticket_color')}}">
                                <span class="text-danger invalid-feedback" id="ticket_color_error">  </span>
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Counter Number Color <span class="text-danger">*</span></label>
                                <input required type="color"
                                class="form-control" name="counter_no_color" value="{{old('counter_no_color')}}">
                                <span class="text-danger invalid-feedback" id="counter_no_color_error">  </span>
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Ticket Number Blinking Color <span class="text-danger">*</span></label>
                                <input required type="color"
                                class="form-control" name="ticket_no_blinking_color" value="{{old('ticket_no_blinking_color')}}">
                                <span class="text-danger invalid-feedback" id="ticket_no_blinking_color_error">  </span>
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Ticket Number Font Size <span class="text-danger">*</span></label>
                                <input  type="text"
                                class="form-control" name="ticket_no_font_size" value="{{old('ticket_no_font_size')}}">
                                <span class="text-danger invalid-feedback" id="ticket_no_font_size_error">  </span>
                            </div>
                            <div class="form-group cd-fields">
                                <label for="val-username">Counter Number Font Size <span class="text-danger">*</span></label>
                                <input  type="text"
                                class="form-control" name="counter_no_font_size" value="{{old('counter_no_font_size')}}">
                                <span class="text-danger invalid-feedback" id="counter_no_font_size_error">  </span>
                            </div>
                            <div class="form-group">
                                <label for="val-username">QMS Port Number <span class="text-danger">*</span></label>
                                <input required type="text"
                                class="form-control" name="qms_port_no" value="{{old('qms_port_no')}}">
                                <span class="text-danger invalid-feedback" id="qms_port_no_error">  </span>
                            </div>
                        </div>
                        <input type="hidden" name="device_group_id" id="deviceGroupId">
                        <input type="hidden" name="zone_id" id="zone_id">
                        <input type="hidden" name="city_id" id="city_id">
                        <input type="hidden" name="branch_id" id="branch_id">
                        
                    </div>
                    <div class="block-content block-content-full text-right border-top">
                        <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                        <button type="submit" id="deviceSubmitBtn" class="btn btn-primary" >Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
