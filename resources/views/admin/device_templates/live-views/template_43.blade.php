<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{$device->device_name}} | Live View</title>
  <link rel="shortcut icon" href="{{ asset('assets/media/favicons/favicon.png')}}">
  <link rel="stylesheet" id="css-main" href="{{ asset('assets/css/oneui.min.css')}}">

  <link rel="stylesheet" href="{{asset('admin-assets/live-views/samsung/styles.css')}}">
 
  <style>
    
    .no-padding{
        padding:0px;
    }
    .no-margin{
        margin:0px;
    }
    .ribbon-bottom .ribbon-box {
        font-size: 12px;
        top: 3.20rem !important;
    }
    .font-size-sm{
        font-size:13px !important;
    }
   .container-template {
        box-shadow: 0px 0px 5px 0px lightgrey;
        padding: 15px 10px;
        background: #fff;
    }
   
    .row{
        padding:0px;
        margin:0px;
    }
    .no-padding{
        padding:0px !important;
    }
    .templates-div{
        background:#fff;
    }
    .tv-div{
        background:#fff;
        border:10px solid #000; 
        height:360px;
        margin-bottom:0px;
    }
    * {box-sizing: border-box;}
    
    .main-box{
        padding:0px 5px;
    }
    .tv-parent{
        background:#fff; 
       
    }
    .tv-logo{
        display: block; 
        height:50px; 
        max-width:100%; 
        text-align:center;
    }
    .tv-queue-box{
        display:flex;
    }
    .tv-footer-parent{
        display: block; 
        height:50px; 
        width:100%; 
        text-align:center;
    }
    .midS{
        width: 50px; 
        margin: auto;
        height: 30px;
        background: #000;
    }
    .midL{
        width: 190px; 
        margin: auto;
        height: 20px;
        background: #000;
        border-radius: 20px 20px 0px 0px;
    }
    .ticket-1{
      height:100%;
    }
.ticket-no-heading, .ticket-no {
    font-size: 0.8rem;
}
.marquee-text {
  display: table-cell;
    vertical-align: middle;
    font-size:2rem;
    transform: translateY(-50%);
    white-space: nowrap;
    animation: marquee 10s linear infinite;
    
  }
  .ticket-1{
   
  }
</style>
<link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
</head>
<body>
  <div class="main-box device-liveview-{{$device->id}}">
    <div class="tv-parent">
       <div class="row">
            <div class="col-md-4"></div>    
            <div class="col-md-4 no-padding" style="height:calc(100vh - 22px); 100vh;border:10px solid #000; background:#000;">
                <div style="border:1px solid #fff; height:100%;">
                    <div class="tv-logo" style="border-bottom:2px solid #fff; height:10vh;">
                        <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:100%;border:none;">
                    </div>
                    <div class="ticket_counter" style="height:12vh;padding:5px;">
        
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Ticket</span>
                        </div>
                        <div class="ticket-no">
                          <span>1001</span>
                        </div>
                      </div>
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Counter</span>
                        </div>
                        <div class="ticket-no">
                          <span>1</span>
                        </div>
                      </div>
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Ticket</span>
                        </div>
                        <div class="ticket-no">
                          <span>1001</span>
                        </div>
                      </div>
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Counter</span>
                        </div>
                        <div class="ticket-no">
                          <span>1</span>
                        </div>
                      </div>
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Ticket</span>
                        </div>
                        <div class="ticket-no">
                          <span>1001</span>
                        </div>
                      </div>
                      <div class="ticket-1">
                        <div class="ticket-no-heading">
                          <span>Counter</span>
                        </div>
                        <div class="ticket-no">
                          <span>2</span>
                        </div>
                      </div>
                    </div>
                    <div class="row" style="height:31vh; ">
                        <div class="col-md-12 no-padding">
                            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                @php
                                    $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                                    $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                               @endphp
                               <div class="slider box-1-image" id="image-box-1-device-{{$device->id}}"  style="height:31vh; " >
                                @foreach($imagesBox1 as $key =>  $img)
                                        <img width="100%" height="100%" class="image-box-1-device-{{$device->id}} template-assets-{{$img->id}}  {{$key > 0?'none':''}}"  src="{{asset($img->gallery->url)}}" alt="">
                                        @endforeach
                               </div>  
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" style="height:31vh; ">
                        <div class="col-md-12  no-padding">
                            <div class="box-1-video" id="video-box-1-device-{{$device->id}}" >
                                @foreach($videosBox1 as $key => $v)
                                <div class="video-box-1-device-{{$device->id}} video template-assets-{{$v->id}}  {{$key > 0?'none':''}}" style="height:30vh !important;">
                                        <video width="100%" style="height:31vh;"   muted loop autoplay oncanplay="this.muted=true"  >
                                            <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                        </video>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="row" style="height:8vh;">
                        <div class="col-md-12  no-padding">
                            <div class="tv-footer-parent text-white" style="height:8vh;border-top:1px solid #fff; overflow: hidden;
                            position: relative;display:table;">
                              <div class="marquee-text">{{$template->ticker_text}}</div>
                            </div>
                        </div>
                    </div>
                                    
                </div>
            </div>
            <div class="col-md-12 text-center"> 
                <div class="midL" style="width:50%;"></div>
            </div> 
        </div>
    </div>
</div>
  @include('admin.layouts.scripts')
  @include('admin.layouts.socket')
</body>
</html>