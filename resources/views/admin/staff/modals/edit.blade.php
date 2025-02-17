@foreach($staff as $user)
<div class="modal fade" id="edituser{{$user->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{url('users/' . $user->id)}}">
                @csrf
                @method('PUT')
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Edit User</h3>
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
                                <input id="orgName" type="text" name="name" placeholder="Staff Name" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="val-email">Staff Id <span class="text-danger">*</span></label>
                                <input type="text" name="staff_id" placeholder="Staff ID" class="form-control" value="">
                            </div>
                           
                            <div class="form-group" id="background-image">
                               
                                <div class="row" style="margin-top:20px;">
                                    <div class="col-md-12">
                                        <label for="val-email">Select Staff Profile Image<span class="text-danger">*</span></label>
                                        <br>
                                        <a class="img-link img-link-zoom-in img-thumb img-lightbox preview-images displayNone">
                                            <img class="preview-image" id="previewLogo" src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" >
                                        </a>
                                            <a href="#" data-toggle="modal" data-target="#modal-logo" >
                                                <img src="{{asset('assets/img/add-square-svgrepo-com.svg')}}" style="width:150px;">
                                            </a>
                                        
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'staff_background_content', 'label'=>'Select Staff Profile Image', 'modalId'=>'logo', 'box'=>'image' ])
                                    </div>
                                    <span class="text-danger invalid-feedback" id="background_image_error">  </span>
                                </div>
                                @error('logo')
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

    </div>
@endforeach
