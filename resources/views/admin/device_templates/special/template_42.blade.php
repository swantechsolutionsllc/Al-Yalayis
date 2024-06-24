
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
            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                @foreach($template->imagesbox1 as $img)
                   
                        <img style="height:70px; widht:100%;" src="{{asset($img->asset_url)}}" >
                   
                @endforeach
            </div>
            </div>
            <div class="tv-logo" style="border-right:1px solid #fff;">
                <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;border:none; border-bottom:1px solid #fff;">
            </div>
        </div>
        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
            <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                @foreach($template->videosbox1 as $v)
                    <div>
                        <video width="100%" height="270px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                            <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                        </video>
                    </div>
                @endforeach
            </div>
           <div class="tv-footer-parent">
                <footer class="bg-dark2" style="background-color:#000 !important;border-bottom:1px solid #fff; padding:12px 0px;">
                   
                        <marquee>
                            <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                        </marquee>
                 
                </footer>
            </div>
        </div>
        
</div>