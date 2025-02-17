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
    body{
      margin-bottom:0px;
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
        height:calc(100vh - 50px);
        margin-bottom:0px;
    }
  
 
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
  .video_content,  video{
      height:calc(100vh - (10vh + 64px));    
    }
    .video_content{
      border:1px solid #fff;
    }
    .marquee-text {
      display: table-cell;
        vertical-align: middle;
        font-size:2rem;
        transform: translateY(-50%);
        white-space: nowrap;
        animation: marquee 10s linear infinite;
    }
    .counter-number{
        border: 1px solid #fff;
        color: #fff;
        font-weight: bold;
        font-size: 21px;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0;
        margin: 0;
        border:1px solid #fff;
    }
</style>
<link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
</head>
<body>
  <div class="tv-parent device-liveview-{{$device->id}}" >
    <div class="form-group tv-div">
        <div class="tv-queue-box" style=" background-color:#000;">
            <div class="col-lg-3 no-padding">
                <div style="width:100%;  height:calc(100vh - (10vh + 64px)); background-color:#000">
                    <div class="row" style="height:10%;">
                        <div class="col-md-6 counter-number">Ticket No</div>
                        <div class="col-md-6 counter-number">Counter No</div>
                    </div>
                    <div class="row" style=" height:16%;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:16%;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:16%;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:16%;">
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                        <div class="col-md-6" style="border:1px solid #fff;"></div>
                    </div>
                    <div class="row" style="height:26%;">
                     
                        @php
                          $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                          $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                      @endphp
                          <div class="box-1-image" id="image-box-1-device-{{$device->id}}" style="height:100%;width:100%;border-left:1px solid #fff;display: flex;align-items: center;justify-content: center;">
                            @foreach($imagesBox1 as $key => $img)
                                <img   style="max-height:100%; width:100%;" class="image-box-1-device-{{$device->id}} template-assets-{{$img->id}} {{$key > 0?'none':''}}" src="{{asset($img->asset_url)}}" >
                            @endforeach
                          </div>
                    
                    
                    </div>
                </div>
                
                <div class="tv-logo" style="height:9vh;width:100%;border:1px solid #fff; display:table;">
                    <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;  max-height:9vh;border:none;">
                </div>
            </div>
            <div class="col-lg-9" style="padding:0px">
                <div class="video_content video" id="video-box-1-device-{{$device->id}}">
                    @foreach($videosBox1 as $key =>  $v)
                    <div class="video-box-1-device-{{$device->id}} video template-assets-{{$v->id}}  {{$key > 0?'none':''}}">
                            <video width="100%"   muted loop autoplay oncanplay="this.muted=true"   style="background: #000; border: 1px solid #fff">
                                <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                            </video>
                        </div>
                    @endforeach
                </div>
                <div class="tv-footer-parent" style="height: 9vh;">
                  <div class="tv-footer-parent text-white" style="background:#000;height:9vh;border:1px solid #fff; overflow: hidden;
                  position: relative;display:table;">
                    <div class="marquee-text">{{$template->ticker_text}}</div>
                  </div>
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

  @include('admin.layouts.scripts')
  @include('admin.layouts.socket')
</body>
</html>