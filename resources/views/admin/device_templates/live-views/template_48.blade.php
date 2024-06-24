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
    html,body {
    height:100%;
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
    .bg-white{
        background-color:#fff;
        color:#000 !important;
    }
    .bg-red{
        background-color:#D8BB6C;
        color:#fff;
    }
</style>
<link href="{{asset('admin-assets/tv-view/css/shop-item.css')}}" rel="stylesheet">
    <style>
        .counter-number{
            color:#000 !important;
            font-size:14px;
            text-align:center;
        }
        .bg-white .col-md-6, .bg-red .col-md-6{
              border:1px solid #c0c1c1;
        }
        .small-padding{
            padding:5px;
        }
        .logo{
            max-width:100%;
            max-height:100%;
            padding:0px;
        }
        .time{
            color:#000;
            font-size:25px;
            font-weight:600;
            display: flex;
            align-items: center;
            justify-content: right;
        }
        .onscrren-counter{
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 20px;
            font-weight: 600;
        }
        .pull-right{
            float:right;
        }
    </style>
</head>
<body>
  <div class="tv-parent device-liveview-{{$device->id}}" >
    <div class="form-group tv-div">
        <div class="tv-queue-box" style=" background-color:#fff;">
            <div class="col-lg-3 small-padding">
                <div style="width:100%;  height:calc(100vh - (9vh + 4px)); background-color:#fff;  border:1px solid #c0c1c1;border-radius:5px;">
                    <div class="row bg-white" style="height:10%;">
                        <div class="col-md-6 counter-number ">تذكرة رقم<br>Ticket No</div>
                        <div class="col-md-6 counter-number">رقم العداد<br>Counter No</div>
                    </div>
                    <div class="row bg-red" style=" height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6"></div>
                    </div>
                    <div class="row bg-white" style="height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6" ></div>
                    </div>
                    <div class="row bg-red" style="height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6"></div>
                    </div>
                    <div class="row bg-white" style="height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6" ></div>
                    </div>
                    <div class="row bg-red" style="height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6"></div>
                    </div>
                    <div class="row bg-white" style="height:15%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6" ></div>
                    </div>
                   
                    @php
                          $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                          $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                      @endphp
                   
                </div>
            </div>

            <div class="col-lg-9 small-padding">
                <div style="width:100%;  height:calc(100vh - (9vh + 4px)); background-color:#fff;">
                    <div class="row" style="height:10%;">
                        <div class="col-md-6 no-padding">
                            <img src="{{url('/') . $template->logo}}" class="logo" style="height:60px;">
                        </div>
                        <div class="col-md-6 no-padding time">
                            {{ date('l', strtotime("Y-m-d"))}}
                            {{ date('d.m.Y h:i:a')}}
                        </div>
                    </div>
                    <div class="row" style=" height:60%;">
                        <div class="col-md-12 no-padding" style="height: -webkit-fill-available;">
                            @if($template->content_type == 'image')
                                <div class="box-1-image" id="image-box-1-device-{{$device->id}}" style="width:100%;border-left:1px solid #fff;display: flex;align-items: center;justify-content: center; height: -webkit-fill-available;">
                                    @foreach($imagesBox1 as $key => $img)
                                        <img   style="width:100%;height: -webkit-fill-available;" class="image-box-1-device-{{$device->id}} template-assets-{{$img->id}} {{$key > 0?'none':''}}" src="{{asset($img->asset_url)}}" >
                                    @endforeach
                                </div>
                    
                            @else
                            <div class="box-1-video" id="video-box-1-device-{{$device->id}}" style="width:100%;border-left:1px solid #fff;display: flex;align-items: center;justify-content: center; height: -webkit-fill-available;">
                                @foreach($videosBox1 as $key => $v)
                                    <div class="video-box-1-device-{{$device->id}} video template-assets-{{$v->id}} {{$key > 0?'none':''}}" style="width:100%; height:100%;">
                                        <video width="100%" style="width:100%; height:100%;" muted loop autoplay oncanplay="this.muted=true">
                                            <source src="{{asset($v->asset_url)}}" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                    </div>
                                @endforeach
                            </div>
                            
                            @endif

                        </div>
                       
                    </div>
                    <div class="row bg-red" style="height:6%;margin-top:5px;  border-radius: 10px 10px 0px 0px;">
                        <div class="col-md-6 onscrren-counter" style=" border-radius: 10px 0px 0px 0px;"><span class= "pull-left">Ticket No</span><span class="pull-right onscrren-counter">تذكرة رقم</span></div>
                        <div class="col-md-6 onscrren-counter "  style=" border-radius: 0px 10px 0px 0px;"><span class= "pull-left">Counter No</span><span class="pull-right onscrren-counter">رقم العداد</span></div>
                    </div>
                    <div class="row bg-white" style="height:17%;">
                        <div class="col-md-6"></div>
                        <div class="col-md-6"></div>
                    </div>
                    <div class="row bg-red" style="height:6%;  border-radius: 0px 0px 10px 10px;">
                        <div class="col-md-12 onscrren-counter">
                            <marquee>{{$template->ticker_text}}</marquee>
                        </div>
                       
                    </div>
                   
                    @php
                          $imagesBox1 = $template->template_assets()->where(['asset_type'=>'image'])->with('gallery')->get();
                          $videosBox1 = $template->template_assets()->where(['asset_type'=>'video'])->with('gallery')->get();
                      @endphp
                   
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