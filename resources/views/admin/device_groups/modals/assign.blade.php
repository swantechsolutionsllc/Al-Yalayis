<div class="modal fade" id="assignDeviceGroup" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST"  method="POST" action="{{url('assign-device-groups')}}">
                @csrf
                @method("POST")
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Assign Devices</h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-username">Device Group<span class="text-danger">*</span></label>
                                <select class="js-select2 form-control" id="example-select2" name="name" style="width: 100%;" data-placeholder="Choose one..">
                                    <option value=""></option>
                                    @foreach($deviceGroups as $device)
                                    <option value="{{$device->id}}">{{$device->name}}</option>
                                @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="val-username">Devices <span class="text-danger">*</span></label>
                                    <select class="js-select2 form-control" id="example-select2-multiple" name="device[]" style="width: 100%;" data-placeholder="Choose many.." multiple>
                                            
                                    <option value=""></option>
                                    @foreach($devices as $device)
                                        <option value="{{$device->id}}">{{$device->device_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="block-content block-content-full text-right border-top">
                        <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" >Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
