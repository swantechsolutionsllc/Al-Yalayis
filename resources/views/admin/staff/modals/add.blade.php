<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{url('staff')}}" enctype="multipart/form-data" >
                @csrf
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Add Staff</h3>
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
                                <label for="val-username">Background Stay Time in sec <span class="text-danger">*</span></label>
                                <input id="background_stay_time" type="text" name="background_stay_time" placeholder="Background Stay time" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="val-email">Staff Id <span class="text-danger">*</span></label>
                                <input type="text" name="staff_id" placeholder="Staff ID" class="form-control" value="">
                            </div>
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
                                        
                                        @include('admin.device_templates.modals.logoModal', ['assets'=> $gImages, 'type'=>'radio', 'name'=>'staff_background_content', 'label'=>'Select Staff Profile Image', 'modalId'=>'logo', 'box'=>'image' ])
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
                                        
                                            @include('admin.device_templates.modals.logoModal', ['assets'=> $gvideos, 'type'=>'radio', 'name'=>'staff_background_content', 'label'=>'Select Video', 'modalId'=>'video-box', 'box'=> 'video' ])
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
