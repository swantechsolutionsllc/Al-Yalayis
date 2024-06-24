<div class="tv-parent device-liveview-{{$d->id}}" >
    <div class="form-group tv-div">
        <div class="tv-queue-box" style="height:340px; background-color:#000;">
            <div class="col-lg-3 no-padding">
                <div style="width:100%; height:220px;background-color:#000">
                    <div class="row" style="height:20px;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:50px;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:50px;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:50px;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:50px;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                </div>
                <div style="height:70px; width:100%; border-right:1px solid #fff;">
                
                    @php
                        $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                        $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                    @endphp
                    <div class="box-1-image" id="image-box-1-device-{{$d->id}}">
                        @foreach($imagesBox1 as $key => $img)
                            <img style="height:70px; max-width:100%;" class="image-box-1-device-{{$d->id}} template-assets-{{$img->id}} {{$key > 0?'none':''}}" src="{{asset($img->asset_url)}}" >
                        @endforeach
                    </div>
                </div>
                <div class="tv-logo" style="border-right:1px solid #fff;">
                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;border:none; border-bottom:1px solid #fff;">
                </div>
            </div>
            <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                <div class="video_content video" id="video-box-1-device-{{$d->id}}">
                    @foreach($videosBox1 as $key =>  $v)
                    <div class="video-box-1-device-{{$d->id}} video template-assets-{{$v->id}}  {{$key > 0?'none':''}}">
                            <video width="100%" height="290px"    muted loop autoplay oncanplay="this.muted=true"   style="background: #000; border: 1px solid #fff">
                                <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                            </video>
                        </div>
                    @endforeach
                </div>
                <div class="tv-footer-parent" style="height: 44px;">
                    <footer class="bg-dark2" style="height:100%;background-color:#000 !important;border-bottom:1px solid #fff; padding:12px 0px;">
                    
                            <marquee>
                                <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                            </marquee>
                    
                    </footer>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-12 text-center">
            <div class="midS"></div>
        </div>
        <div class="col-md-12 text-center"> 
            <div class="midL"></div>
        </div>  
    </div>  
</div>