
@if($t->images_required > 0)
    @for($i = 1;  $i <= $t->images_required; $i++)
        <div class="row form-group">
            <div class="col-md-12">
                <h4 class="bg-dark text-white padding">Box {{$i}} Images</h4>          
            </div>
        </div>
        @foreach($template['imagesbox'.$i]->chunk(5) as $images)
            <div class="row form-group" style="margin-bottom: 30px;">
                @foreach($images as $img)
                            <div class="col-md-2 text-center">
                                <a class="img-link img-thumb img-lightbox"  style="margin-bottom:10px;"   href="#">
                                    <img class="img-fluid" src="{{ asset($img->gallery->thamnail_url)}}" alt="">
                                    <div> <strong> <span class="spans float-left"> Name :</span></strong><span class="spans float-right"> {{ strlen($img->gallery->name) > 14 ? substr($img->gallery->name, 0,14).'..' : $img->gallery->name}}</span></div>
                                    <div class="playlists">
                                        @php
                                            $value = '';
                                            if($playlist_id){
                                                $value = $img->getDuration($playlist_id, $img->id);
                                            }

                                        @endphp
                                        <input  type="text" placeholder="Minutes" value="{{$value}}" onkeypress="return /[0-9]/i.test(event.key)" name="duration[{{$img->id}}]" class="form-control form-control-assets">
                                        <input type="hidden" name="asset_ids[]" value="{{$img->id}}">
                                    </div>
                                </a>
                                
                            </div>
                            
                  
                @endforeach
            </div>
            @endforeach
    @endfor
@endif

@if($t->videos_required > 0)
    @for($i = 1;  $i <= $t->videos_required; $i++)
        <div class="row form-group">
            <div class="col-md-12">
                <h4 class="bg-dark text-white padding">Box {{$i}} Videos</h4>          
            </div>
        </div>
        @foreach($template['videosbox'.$i]->chunk(5) as $videos)
            <div class="row form-group" style="margin-bottom: 30px;">
                @foreach($videos as $v)
                            <div class="col-md-2 text-center">
                                <a class="img-link img-thumb img-lightbox"  style="margin-bottom:10px;"   href="#">
                                    <img class="img-fluid" src="{{ asset($v->gallery->thamnail_url)}}" alt="">
                                    <div> <strong> <span class="spans float-left"> Name :</span></strong><span class="spans float-right">{{ strlen($v->gallery->name) > 14 ? substr($v->gallery->name, 0,14).'..' : $v->gallery->name}}</span></div>
                                    <div class="playlists">
                                        @php
                                            $value = '';
                                            if($playlist_id){
                                                
                                                $value = $v->getDuration($playlist_id, $v->id);
                                            }else{
                                                $value = $v->gallery->duration;
                                            }
                                        @endphp
                                        <input  type="text" value="{{$value}}" placeholder="Minutes" onkeypress="return /[0-9]/i.test(event.key)" name="duration[{{$v->id}}]" class="form-control form-control-assets">
                                        <input type="hidden" name="asset_ids[]" value="{{$v->id}}">
                                    
                                    </div>
                                </a>
                                
                            </div>
                            
                  
                @endforeach
            </div>
            @endforeach
    @endfor
@endif
<script>
    $(".img-lightbox").click(function(e){
        e.preventDefault();
    });

</script>