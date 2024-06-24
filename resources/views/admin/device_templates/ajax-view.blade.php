@foreach($templates->chunk(2) as $temps)
    <div class="row">
        @foreach($temps as $template)
            @if($template->device_templates->id == 43)
                @include('admin.device_templates.special.template_43')
            @else
                <div class="col-md-6 main-box">
                    <div class="tv-parent">
                        @php
                            $height = 332;
                            if($template->device_templates->logo_required){
                                $height -= 50;  
                            }
                            if($template->device_templates->ticker_text_required){
                                $height -= 50;  
                            }else{
                                $height += 8;
                            }
                        @endphp
                        <div class="form-group tv-div">
                            @if($template->device_templates->id == 42)
                                @include('admin.device_templates.special.template_42' )
                            
                            @else
                                @if($template->device_templates->logo_required)
                                    <div class="tv-logo">
                                        <img src="{{url('/') . $template->logo}}"  class="logo-img" style="max-width:100%;height:50px;">
                                    </div>
                                @endif
                                <div class="tv-queue-box" style="height:{{ $height }}px;">
                                    @if($template->device_templates->quebox_required)
                                        <div class="col-lg-3 no-padding">
                                            <img src="{{ asset('admin-assets/img/queue_area.png') }}" style="width:100%; height:100%;">
                                        </div>
                                    @endif
                                    @if($template->device_templates->id == 1 || $template->device_templates->id == 2 || $template->device_templates->id == 3 || $template->device_templates->id == 4 || $template->device_templates->id == 38 || $template->device_templates->id == 39)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                @foreach($template->videosbox1 as $v)
                                                    <div>
                                                        <video width="100%" height="{{ $height }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                        </video>
                                                    </div>
                                                @endforeach
                                            </div>
                                            
                                        </div>
                                    @elseif($template->device_templates->id == 5 || $template->device_templates->id == 6 || $template->device_templates->id == 7 || $template->device_templates->id == 8 || $template->device_templates->id == 40 || $template->device_templates->id == 41 )
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                @foreach($template->imagesbox1 as $img)
                                                    <div style="height:{{ $height }}px">
                                                        <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                    </div>
                                                @endforeach
                                            </div>
                                            
                                        </div>
                                    @elseif($template->device_templates->id == 9 || $template->device_templates->id == 10 || $template->device_templates->id == 11 || $template->device_templates->id == 12)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-12 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox1 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-12 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox2 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @elseif($template->device_templates->id == 13 || $template->device_templates->id == 14 || $template->device_templates->id == 15 || $template->device_templates->id == 16)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                @foreach($template->imagesbox1 as $img)
                                                    <div style="height:{{ $height/2 }}px">
                                                        <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                    </div>
                                                @endforeach
                                            </div>
                                            <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                @foreach($template->imagesbox2 as $img)
                                                    <div style="height:{{ $height/2 }}px">
                                                        <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    @elseif($template->device_templates->id == 17 || $template->device_templates->id == 18 || $template->device_templates->id == 19 || $template->device_templates->id == 20)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox1 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox2 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox3 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox4 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @elseif($template->device_templates->id == 21 || $template->device_templates->id == 22 || $template->device_templates->id == 23 || $template->device_templates->id == 24)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                        @foreach($template->imagesbox1 as $img)
                                                            <div style="height:{{ $height/2 }}px">
                                                                <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                        @foreach($template->imagesbox2 as $img)
                                                            <div style="height:{{ $height/2 }}px">
                                                                <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                    
                                                </div>
                                                
                                            </div>
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                        @foreach($template->imagesbox3 as $img)
                                                            <div style="height:{{ $height/2 }}px">
                                                                <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                        @foreach($template->imagesbox4 as $img)
                                                            <div style="height:{{ $height/2 }}px">
                                                                <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                
                                            </div>
                                                    
                                        </div>
                                    @elseif($template->device_templates->id == 25 || $template->device_templates->id == 26 || $template->device_templates->id == 27 || $template->device_templates->id == 28)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox1 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 no-padding">
                                                    <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                        @foreach($template->videosbox2 as $v)
                                                            <div>
                                                                <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                    <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                                </video>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row" style="height:{{ $height/2 }}px;">
                                                <div class="col-sm-12 no-padding">
                                                    <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                        @foreach($template->imagesbox1 as $img)
                                                            <div style="height:{{ $height/2 }}px">
                                                                <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>
                                                
                                                
                                            </div>
                                                    
                                        </div>
                                    
                                    @elseif($template->device_templates->id == 29 || $template->device_templates->id == 30 || $template->device_templates->id == 31 || $template->device_templates->id == 32)
                                    <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                        <div class="row" style="height:{{ $height/2 }}px;">
                                            <div class="col-sm-6 no-padding">
                                                <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                    @foreach($template->imagesbox1 as $img)
                                                        <div style="height:{{ $height/2 }}px">
                                                            <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="col-sm-6 no-padding">
                                                <div class="js-slider slick-dotted-inner slick-dotted-white" data-dots="true" data-="true" data--speed="3000">
                                                    @foreach($template->imagesbox2 as $img)
                                                        <div style="height:{{ $height/2 }}px">
                                                            <img width="100%" height="100%" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                            
                                            
                                        </div>
                                        <div class="row" style="height:{{ $height/2 }}px;">
                                            <div class="col-sm-12 no-padding">
                                                <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                    @foreach($template->videosbox1 as $v)
                                                        <div>
                                                            <video width="100%" height="{{ $height/2 }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                            </video>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                            
                                            
                                        </div>
                                                    
                                    </div>
                                    @elseif($template->device_templates->id == 42 || $template->device_templates->id == 44 || $template->device_templates->id == 45 || $template->device_templates->id == 46 || $template->device_templates->id == 47  || $template->device_templates->id == 48)
                                        <div class="{{$template->device_templates->quebox_required==1?'col-lg-9':'col-lg-12'}}" style="padding:0px">
                                            <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
                                                @if($template->content_type == 'image')
                                                
                                                    @foreach($template->imagesbox1 as $img)
                                                        <div style="height:{{ $height }}px">
                                                            <img width="100%" height="100%;" src="{{asset($img->asset_url)}}"  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                        </div>
                                                    @endforeach
                                                @else
                                                    @foreach($template->videosbox1 as $v)
                                                        <div>
                                                            <video width="100%" height="{{ $height }}px"   controls  style="background: #e8e8d3; border: 5px solid #c1c1c1">
                                                                <source src="{{asset($v->asset_url)}}"  type="video/mp4">Your browser does not support the video tag.
                                                            </video>
                                                        </div>
                                                    @endforeach
                                                @endif
                                            </div>
                                        </div>
                                    @endif
                                </div>
                                @if($template->device_templates->ticker_text_required)
                                    <div class="tv-footer-parent">
                                        <footer class="bg-dark2">
                                            <div class="container">
                                                <marquee>
                                                    <p class="m-0 text-center text-white">{{$template->ticker_text}}</p>
                                                </marquee>
                                            </footer>
                                        </footer>
                                    </div>
                                @endif
                            @endif
                            <div class="overlay">
                                <a href="{{url('device-templates/edit/'.$template->id)}}" class="btn btn-success btn-sm btn-circle" ><i class="fa fa-fw fa-pencil-alt"></i></a>
                                <a class="btn btn-danger btn-sm btn-circle" data-toggle="modal" data-target="#delete-{{$template->id}}"><i class="fas fa-trash"></i></a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-12 text-center">
                                <p style="margin: 0px;text-align: left;display: inline-block;position: absolute;left: 0;">{{$template->name}}</p>
                                <div class="midS"></div>
                            </div>
                            <div class="col-md-12 text-center"> 
                                <div class="midL"></div>
                            </div>  
                        </div>  
                    </div>                
                </div>
            @endif
        @endforeach
    </div>
    <br><br>

@endforeach
@include('admin.device_templates.modals.delete')