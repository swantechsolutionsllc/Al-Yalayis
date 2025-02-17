<div class="modal fade" id="assignBranches" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST"  method="POST" action="{{url('assign-branches')}}">
                @csrf
                @method("POST")
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Assign Branches to City
                        </h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-username">Branch Name <span class="text-danger">*</span></label>
                                <select class="js-select2 form-control" id="example-select2" name="branch_name" style="width: 100%;" data-placeholder="Choose one..">
                                    <option value=""></option>
                                    @foreach($branches as $b)
                                        <option value="{{$b->id}}">{{$b->branch_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="val-username">Device Groups <span class="text-danger">*</span></label>
                                    <select class="js-select2 form-control" id="example-select2-multiple" name="device_group[]" style="width: 100%;" data-placeholder="Choose many.." multiple>
                                            
                                    <option value=""></option>
                                    @foreach($device_groups as $d)
                                        <option value="{{$d->id}}">{{$d->name}}</option>
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
