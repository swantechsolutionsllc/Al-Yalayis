<div class="main-box device-liveview-{{$d->id}}">
    <div class="tv-parent">
       <div class="row">
            <div class="col-md-3"></div>    
            <div class="col-md-6 no-padding" style="height:390px;border:10px solid #000; background:#000;">
                <div style="border:1px solid #fff; height:100%;">
                    <div class="tv-logo" style="border-bottom:2px solid #fff;">
                        <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;border:none; border-bottom:1px solid #fff;">
                    </div>
                    <div class="row" style="max-width:100%;height:50px;border:none; border-bottom:1px solid #fff;">
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div>
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div>
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div>
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div>
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div>
                        <div class="col-md-2 no-padding" style="border:1px solid #fff;"></div> 
                    </div>
                    <div class="row" style="height:115px; ">
                        <div class="col-md-12 no-padding">
                            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                @php
                                    $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                                    $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                               @endphp
                               <div class="slider box-1-image" id="image-box-1-device-{{$d->id}}" style="height:105px;" >
                                @foreach($imagesBox1 as $key =>  $img)
                                        <img width="100%" height="100%" class="image-box-1-device-{{$d->id}} template-assets-{{$img->id}}  {{$key > 0?'none':''}}"  src="{{asset($img->gallery->url)}}" alt="">
                                        @endforeach
                               </div>  
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" style="height:121px; ">
                        <div class="col-md-12  no-padding">
                            <div class="box-1-video" id="video-box-1-device-{{$d->id}}" >
                                @foreach($videosBox1 as $key => $v)
                                <div class="video-box-1-device-{{$d->id}} video template-assets-{{$v->id}}  {{$key > 0?'none':''}}" style="height:100% !important;">
                                        <video width="100%" height="120px"   muted loop autoplay oncanplay="this.muted=true"  >
                                            <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                        </video>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="row" style="height:40px; ">
                        <div class="col-md-12  no-padding">
                            <div class="tv-footer-parent text-white" style="height:30px;border-top:1px solid #fff;">
                                <marquee>
                                    <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                </marquee>
                            </div>
                        </div>
                    </div>
                                    
                </div>
            </div>
            <div class="col-md-12 text-center"> 
                <div class="midL" style="width:100%;"></div>
            </div> 
        </div>
    </div>
</div>