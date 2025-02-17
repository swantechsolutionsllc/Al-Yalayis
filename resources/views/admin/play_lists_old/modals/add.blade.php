<div class="modal fade" id="addDevice" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="deviceForm" action="{{url('zones')}}">
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
                            <div class="form-group">
                                <label for="val-select2">Device Type <span class="text-danger">*</span></label>
                                <br>
                                <div style="display: inline-flex; float:left;">
                                    <input type="radio" style="display: none;" checked name="device_type" id="cd" value="cd">
                                    <input type="radio" name="device_type" style="display: none;" id="md" value="md">
                                    <label for="cd" class="device-type cd orientation-selected"></label>
                                    <label for="md" class="device-type "></label>
                                </div>    
                                
                            </div>
                            <br><br><br>
                            
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
                            <div class="form-group">
                                <label for="val-username">Device Name <span class="text-danger">*</span></label>
                                <input required type="text" placeholder="Deivce Name" id="demo-hor-inputemail"
                                class="form-control" name="device_name" value="{{old('device_name')}}">
                                <span class="text-danger invalid-feedback" id="device_name_error">  </span>
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
