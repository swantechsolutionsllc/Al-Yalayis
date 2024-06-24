<style type="text/css">
    .queueboxtext{
        font-size:12px; 
        color:#fff;
        @if($template->device_templates->id == 42)
            height: 10%;
        @else
            height: 16%;
        @endif
        padding:20px;
        text-align: center;
    }
        .multiimages{
            height:40%;
        }
        .queuebox{
            background: #295235 !important;
        }
    
</style>
<div class="col-lg-3 queuebox">
   {{--  <div class="row" >
        <div class="col-lg-12 queueboxtext" >QMS Numbers</div>
        
    </div> --}}
    <div class="row" >
        <div class="col-lg-6 queueboxtext" style="font-size: 12">Counter#</div>
        <div class="col-lg-6 queueboxtext" style="font-size: 12px">Ticket#</div>
    </div>
    <div class="row" >
        <div class="col-lg-6 queueboxtext" >1 </div>
        <div class="col-lg-6 queueboxtext">{{rand(0,9999)}}</div>
    </div>
    <div class="row" >
        <div class="col-lg-6 queueboxtext" >2</div>
        <div class="col-lg-6 queueboxtext">{{rand(0,9999)}}</div>
    </div>
    <div class="row" >
        <div class="col-lg-6 queueboxtext" >3</div>
        <div class="col-lg-6 queueboxtext">{{rand(0,9999)}}</div>
    </div>
    <div class="row" >
        <div class="col-lg-6 queueboxtext" >4</div>
        <div class="col-lg-6 queueboxtext">{{rand(0,9999)}}</div>
    </div>
    
    @if($template->device_templates->id == 42)
        <div class="row "  >
            
            <div class="col-lg-12 multiimages">
                <div id="demo-carousel" class="carousel slide" data-ride="carousel">
					
	                <ol class="carousel-indicators out">
                        @foreach($template->imagesbox1 as $image)
	                        <li  class="@if($loop->iteration == 1) active @endif" data-slide-to="{{ $loop->iteration - 1 }}" data-target="#demo-carousel"></li>
	                    @endforeach
	                </ol>
	                
	                <div class="carousel-inner text-center">
	
	                    <!--Item 1-->
	                    @foreach($template->imagesbox1 as $image)
                            <div class="item @if($loop->iteration == 1) active @endif" style="padding-top:0px;">
                                <img src="{{asset($image->asset_url)}}" style="height:100%;width:100%;">
                            </div>
                        @endforeach
	                    
	                </div>
	
	                
	            </div>
                
            </div>
        </div>
    
    @endif
</div>