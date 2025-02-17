<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{url('users')}}" enctype="multipart/form-data" >
                @csrf
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Add User</h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                <input id="orgName" type="text" name="name" placeholder="User's Name" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="val-email">Email <span class="text-danger">*</span></label>
                                <input type="email" name="email" placeholder="Email" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                @foreach ($roles as $role)
                                   
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="example-radios-inline{{ $role->id }}"  name="role" value="{{ $role->id }}" {{ $loop->iteration == 1 ? 'checked':''}} >
                                        <label class="form-check-label roles-class {{ $loop->iteration == 1 ? 'selected-role':''}}" style="" for="example-radios-inline{{ $role->id }}"><i class="fa fa-user mr-2"></i> {{ $role->name }}</label>
                                    </div>
                                @endforeach
                            </div>
                            <div class="form-group">
                                <label class="d-block" for="val-email">Select Avatar<span class="text-danger">*</span></label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline1" name="avtar" value="assets/media/avatar/1.png" checked>
                                    <label class="form-check-label" for="example-radios-inline1"><img class="selected-img circle-img" src="{{ asset('assets/media/avatar/1.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline2" name="avtar" value="assets/media/avatar/2.png">
                                    <label class="form-check-label" for="example-radios-inline2"><img class="circle-img" src="{{ asset('assets/media/avatar/2.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline3" name="avtar" value="assets/media/avatar/3.png">
                                    <label class="form-check-label" for="example-radios-inline3"><img class="circle-img" src="{{ asset('assets/media/avatar/3.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline4" name="avtar" value="assets/media/avatar/4.png">
                                    <label class="form-check-label" for="example-radios-inline4"><img class="circle-img" src="{{ asset('assets/media/avatar/4.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline5" name="avtar" value="assets/media/avatar/5.png">
                                    <label class="form-check-label" for="example-radios-inline5"><img class="circle-img" src="{{ asset('assets/media/avatar/5.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline6" name="avtar" value="assets/media/avatar/6.png">
                                    <label class="form-check-label" for="example-radios-inline6"><img class="circle-img" src="{{ asset('assets/media/avatar/6.png') }}"></label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="example-radios-inline7" name="avtar" value="assets/media/avatar/7.png">
                                    <label class="form-check-label" for="example-radios-inline7"><img class="circle-img" src="{{ asset('assets/media/avatar/7.png') }}"></label>
                                </div>
                                
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label" for="avtar"><span id="upload-btn"><i class="fa fa-plus"></i></span></label>
                                </div>
                                <input style="display: none;" type="file" accept="image/*" onchange="document.getElementById('logo-preview').src = window.URL.createObjectURL(this.files[0]); document.getElementById('is_file').value=1;" id="select-img" class="form-control" id="val-email" name="logo">
                                <br><br>
                                <img id="logo-preview" src="{{ asset('assets/media/avatar/1.png') }}" style="max-width:100%;max-height:100px;">
                                @error('logo')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                                <input type="hidden" id="is_file" name="is_file" value="0">                                
                            </div>
                            <div class="form-group">
                                <label for="val-password">Password <span class="text-danger">*</span></label>
                                <input type="password" name="password" placeholder="Password" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="val-confirm-password">Confirm Password <span class="text-danger">*</span></label>
                                <input type="password" name="password_confirmation" placeholder="Re-Enter Password" class="form-control" value="">
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
