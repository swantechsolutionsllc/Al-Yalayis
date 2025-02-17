@extends('admin.layouts.master')
@section('pageTitle', 'Update Counter Settings')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/js/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css')}}">
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{route('cd-settings.update', $setting->id)}}" enctype="multipart/form-data" id="myform">
        @csrf
        @method('PUT')
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Counter Display Settings:</h2>
                    <div class="form-group col-md-6">
                        <label for="val-username">Settings Name<span class="text-danger">*</span></label>
                        <input required type="text" placeholder="Settings Name" id="demo-hor-inputemail"
                        class="form-control" name="name" value="{{old('name', $setting->name)}}" required>
                    </div>
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Ticket Name Setting:</h2>

                    <div class="row items-push">
                        <div class="form-group col-md-4">
                            <label for="history_area_heading_bg_color">Ticket Number Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 ticket_color" value="{{old('ticket_color', $setting->ticket_color)}}" name="ticket_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_area_heading_text_size">Ticket Number Font Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" min="0" class="form-control" id="example-group1-input2 ticket_font_size" value="{{old('ticket_font_size', $setting->ticket_font_size)}}" name="ticket_font_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_area_content_color_odd">Ticket Number Blinking Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 ticket_blinking_color" value="{{old('ticket_blinking_color', $setting->ticket_blinking_color)}}" name="ticket_blinking_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                       
                       
                    </div>  
                </div>
                  
        
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Counter Number:</h2>

                    <div class="row items-push">
                       
                        <div class="form-group col-md-4">
                            <label for="header_background_color">Counter Number Color</label>
                            <div class="js-colorpicker input-group" data-format="hex"> 
                                <input type="text" class="form-control" id="example-colorpicker2 counter_number_color" value="{{old('counter_number_color', $setting->counter_number_color)}}" name="counter_number_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group col-md-4">
                            <label for="history_area_heading_text_size">Counter Number Font Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" min="0" class="form-control" id="example-group1-input2 counter_number_font_size" value="{{old('counter_number_font_size', $setting->counter_number_font_size)}}" name="counter_number_font_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                       
                    </div>  
                </div>
                
                
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Service Name:</h2>
                    <div class="row items-push">
                    <div class="form-group col-md-4">
                        <label for="ticket_background_color">Service Name Color</label>
                        <div class="js-colorpicker input-group" data-format="hex">
                            <input type="text" class="form-control" id="example-colorpicker2 service_name_color" value="{{old('service_name_color', $setting->service_name_color)}}" name="service_name_color" required>
                            <div class="input-group-append">
                                <span class="input-group-text colorpicker-input-addon">
                                    <i></i>
                                </span>
                            </div>
                        </div>
                    </div>

                   

                    <div class="form-group col-md-4">
                            <label for="ticket_text_size">Service Name Font Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" min="0" class="form-control" id="example-group1-input2 service_font_size" value="{{old('service_font_size', $setting->service_font_size)}}" name="service_font_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                    
                        
                       
                    </div>  
                </div>
                                            <!-- Submit -->
                <div class="row items-push">
                    <div class="col-lg-2" style="margin-left:88.0%">
                        <button type="submit" class="btn btn-alt-primary" style="height:50px; width:104px; font-size:22px">Submit</button>
                    </div>
                </div>
                <!-- END Submit -->
            </div>
        </div>
    </form>
    <!-- jQuery Validation -->
</div>
@endsection
@section('js')
<script src="{{ asset('assets/js/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js')}}"></script>
<script>jQuery(function () { One.helpers(['flatpickr', 'datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']);  });</script>
@endsection