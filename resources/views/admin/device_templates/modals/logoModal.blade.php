<div class="modal fade logoModal" id="modal-{{$modalId}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fromleft" aria-hidden="true">
    <div class="modal-dialog modal-dialog-fromleft modal-xl" role="document">
        <div class="modal-content">
            <div class="block block-rounded block-themed block-transparent mb-0">
                <div class="block-header bg-primary-dark">
                    <h3 class="block-title">{{$label}}</h3>
                    <div class="block-options">
                        <button type="button" class="btn-block-option" onclick="closeModal()">
                            <i class="fa fa-fw fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="block-content font-size-sm">
                    <div class="row items-push  img-fluid-100">
                        @foreach($assets as $asset)
                            <div class="col-sm-6 col-md-2 animated fadeIn">
                                <input type="{{$type}}" value="{{$asset->url}}" name="{{$name}}" {{ isset($selected) && in_array($asset->url, $selected ) ?'checked':''}} class="displayNone" id="asset-{{$asset->id}}-{{$box}}">
                                <a  data-id="asset-{{$asset->id}}-{{$box}}" data-box="{{$box}}"   data-type="{{$type}}" data-src="{{ asset($asset->thamnail_url)}}" class="img-link img-thumb img-lightbox toggleanchor toggleanchor-{{$type}} {{ isset($selected) && in_array($asset->url, $selected ) ?'selected':''}}" style="width:100%;"   href="#">
                                    <div>  <span class="spans float-left"><strong> Name :</span> </strong><span class="spans float-right"> {{ strlen($asset->name) > 14 ? substr($asset->name, 0,14).'..' : $asset->name}}</span></div>
                                    <img class="img-fluid" src="{{ asset($asset->thamnail_url)}}" alt="">
                                    
                                </a>
                                
                            </div>
                            @endforeach
                        
                    </div>
                </div>
                <div class="block-content block-content-full text-right border-top">
                    <button type="button" class="btn btn-alt-primary mr-1" onclick="closeModal()">Close</button>
      
                </div>
            </div>
        </div>
    </div>
</div>