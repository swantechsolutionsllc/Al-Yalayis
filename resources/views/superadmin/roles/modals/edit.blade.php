@foreach($roles as $role)
    <div class="modal fade" id="editZone{{$role->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="POST" method="POST" action="{{route('superadmin.roles.update', $role->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="block block-rounded block-themed block-transparent mb-0">
                        <div class="block-header bg-primary-dark">
                            <h3 class="block-title">Edit Role</h3>
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
                                    <input id="orgName" type="text" name="name" placeholder="Zone Name"
                                    class="form-control" value="{{ $role->name }}">
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
                                        <option value="{{ $org->id }}" {{ $role->organization_id == $org->id?'selected':''}}>{{ $org->name }}</option>
                                    @endforeach
                                    </select>
                                    @error('country')
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
@endforeach