@foreach($deviceGroups as $device)
    <div class="modal fade" id="editDeviceGroup{{ $device->id }}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="POST" action="{{url('device-group/' . $device->id)}}/">
                    @csrf
                    @method('put')
                    <div class="block block-rounded block-themed block-transparent mb-0">
                        <div class="block-header bg-primary-dark">
                            <h3 class="block-title">Edit Device Group</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="fa fa-fw fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content font-size-sm">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="val-username">Name <span class="text-danger">*</span></label>
                                    <input id="orgName" type="text" name="name" placeholder="Device Group Name"
                                    class="form-control" value="{{ $device->name }}">
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
@endforeach