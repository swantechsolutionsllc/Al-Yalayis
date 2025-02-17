@foreach($organizations as $org)
<div class="modal fade" id="deleteOrg{{$org->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{ route('superadmin.organizations.destroy', $org->id) }}">
                @csrf
                {{method_field('delete')}}
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Delete Organization</h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <p><b class="text-danger">Important: </b>If you performed this action all of the data will also be delete so be carefull.</p>
                            </div>
                           
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-password">Your Password <span class="text-danger">*</span></label>
                                <input id="demo-hor-inputemail" required type="password" name="password"
                                       placeholder="Your Password"
                                       class="form-control" value="">
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

    </div>
@endforeach
