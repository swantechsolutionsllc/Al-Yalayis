<div class="modal fade" id="addZone" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{route('superadmin.roles.store')}}">
                @csrf
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Add Role</h3>
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
                                <input id="orgName" type="text" required name="name" placeholder="Role Name"
                                class="form-control" value="">
                            </div>
                                                    </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-select2">Select Organization <span class="text-danger">*</span></label>
                                <select class="js-select2 form-control"  required name="organization" style="width: 100%;" data-placeholder="Choose one..">
                                    <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                    @foreach ($orgs as $org)
                                    <option value="{{ $org->id }}">{{ $org->name }}</option>
                                @endforeach
                                </select>
                                @error('organization')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                                
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
