@foreach($branches as $branch)
<div class="modal fade" id="deleteBranch{{$branch->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" id="delZone{{ $branch->id }}" action="{{url('branches/' . $branch->id)}}">
                @csrf
                {{method_field('delete')}}
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Are you sure you want to delete?</h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="modal-body text-center">

                                <i style="color:red;" class="fas fa-trash fa-4x animated rotateIn"></i>
            
                            </div>
                        </div>
                    </div>
                    <div class="block-content block-content-full text-right border-top">
                        <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" >Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endforeach