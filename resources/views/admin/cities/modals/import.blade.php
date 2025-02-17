
    <div class="modal fade" id="importCities" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="POST" action="{{url('import-cities')}}" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    <div class="block block-rounded block-themed block-transparent mb-0">
                        <div class="block-header bg-primary-dark">
                            <h3 class="block-title">Import Cities</h3>
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
                                    <input id="excel" type="file" name="excel_file" class="form-control" value="">
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
