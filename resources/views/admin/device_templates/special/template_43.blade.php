<div class="col-md-6 main-box">
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
                                @foreach($template->imagesbox1 as $img)
                                    <div style="height:105px;">
                                        <img width="100%" height="100%" src="{{asset($img->asset_url)}}" >
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" style="height:116px; ">
                        <div class="col-md-12  no-padding">
                            <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                @foreach($template->videosbox1 as $v)
                                    <div>
                                        <video width="100%" height="116px"   muted loop autoplay oncanplay="this.muted=true"  >
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
                    <div class="overlay">
                        <a href="{{url('device-templates/edit/'.$template->id)}}" class="btn btn-success btn-sm btn-circle" ><i class="fa fa-fw fa-pencil-alt"></i></a>
                        <a class="btn btn-danger btn-sm btn-circle" data-toggle="modal" data-target="#delete-{{$template->id}}"><i class="fas fa-trash"></i></a>
                    </div>              
                </div>
            </div>
            <div class="col-md-12 text-center"> 
                <div class="midL" style="width:100%;"></div>
            </div> 
        </div>
    </div>
</div>