<div class="modal fade" id="addBranch" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{url('branches')}}">
                @csrf
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Add Branch in <span id="cityName"></span></h3>
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
                                <input id="orgName" type="text" name="name[]" placeholder="Name"
                                class="form-control" value="">
                            </div>
                            <div id="more-content-Branch">
                            
                            </div>
                            <div class="form-group">
                                <button type="button"  data-type="Branch" class="btn btn-outline-info addMore" > <i class="fa fa-plus"></i> Add More</button>
                            </div>
                        </div>
                    </div>
                    <input  type="hidden" id="cityID" name="city_id">
                    <div class="block-content block-content-full text-right border-top">
                        <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" >Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
