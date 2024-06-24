@extends('admin.layouts.master')
@section('pageTitle', 'Create Device')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/js/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css')}}">
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{route('md-settings.store')}}" enctype="multipart/form-data" id="myform">
        @csrf
        
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Main Display Settings</h2>
                    <div class="form-group col-md-6">
                        <label for="val-username">Settings Name<span class="text-danger">*</span></label>
                        <input required type="text" placeholder="Settings Name" id="demo-hor-inputemail"
                        class="form-control" name="setting_name" required>
                    </div>
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Queue Area Setting:</h2>

                    <div class="row items-push">
                        <div class="form-group col-md-4">
                            <label for="history_area_heading_bg_color">History Area Heading BG Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 history_area_heading_bg_color" name="history_area_heading_bg_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_area_heading_text_size">History Area Heading Text Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="example-group1-input2 history_area_heading_text_size" name="history_area_heading_text_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_area_content_color_odd">History Area Content BG Color Odd</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 history_area_content_color_even" name="history_area_content_color_even" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_area_content_color_even">History Area Content BG Color Even</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 history_area_content_color_even" name="history_area_content_color_even" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="main_area_heading_bg_color">Main Area Heading BG Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 main_area_heading_bg_color" name="main_area_heading_bg_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="main_area_heading_text_size">Main Area Heading Text Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="example-group1-input2 main_area_heading_text_size" name="main_area_heading_text_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="mai_area_content_bg_color_odd">Main Area Content BG Color Odd</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 mai_area_content_bg_color_odd" name="mai_area_content_bg_color_odd" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="mai_area_content_bg_color_even">Main Area Content BG Color Even</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 mai_area_content_bg_color_even" name="mai_area_content_bg_color_even" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="no_of_column">No of Columns<span class="text-danger">*</span></label>
                            <input required type="number" placeholder="No Of Column" id="no_of_column"
                            class="form-control" name="no_of_column" required>
                        
                        </div>
                        <div class="form-group col-md-4">
                            <label for="no_of_rows">No of Rows<span class="text-danger">*</span></label>
                            <input required type="number" placeholder="No of Rows" id="no_of_rows"
                            class="form-control" name="no_of_rows" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="text_alignment">Text Alignment<span class="text-danger">*</span></label>
                            <select class="form-control" id="text_alignment" name="text_alignment" required>
                                <option value="">Select</option>
                                <option value="left">Left</option>
                                <option value="right">Right</option>
                                <option value="center">Center</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="audio_1">Select Audio<span class="text-danger">*</span></label>
                            <select class="form-control" id="audio_1" name="audio_1" required>
                                <option value="">Select</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="audio_2">Select Audio<span class="text-danger">*</span></label>
                            <select class="form-control" id="audio_2" name="audio_2" required>
                                <option value="">Select</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="language">Annoucment Language<span class="text-danger">*</span></label>
                            <select class="form-control" id="language" name="language" required>
                                <option value="">Select</option>
                                <option value="en">ENGLISH</option>
                                <option value="ar">ARABIC</option>
                                <option value="en_ar">ENGLISH + ARABIC</option>
                                <option value="ar_en">ARABIC + ENGLISH</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="blinking_color">Blinking Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="blinking_color" name="blinking_color" required>
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
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Header Area:</h2>

                    <div class="row items-push">
                        <div class="form-group col-md-4">
                            <label for="logo_alignment">Logo Alignment<span class="text-danger">*</span></label>
                            <select class="form-control" id="logo_alignment" name="logo_alignment" required>
                                <option value="">Select</option>
                                <option value="left">Left</option>
                                <option value="right">Right</option>
                                <option value="center">Center</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="header_background_color">Background Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 header_background_color" name="header_background_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group col-md-4">
                            <label for="date_time_color">Date Time Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="example-colorpicker2 date_time_color" name="date_time_color" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="logo_image_size">Logo Image Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="example-group1-input2 logo_image_size" name="logo_image_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="visibility">Visibility<span class="text-danger">*</span></label>
                            <select class="form-control" id="visibility" name="visibility" required>
                                <option value="">Select</option>
                                <option value="hide">Hide</option>
                                <option value="show">Show</option>
                            </select>
                        </div>
                    </div>  
                </div>
                
                
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Ticker Area:</h2>
                    <div class="row items-push">
                    <div class="form-group col-md-4">
                        <label for="ticket_background_color">Background Color</label>
                        <div class="js-colorpicker input-group" data-format="hex">
                            <input type="text" class="form-control" id="example-colorpicker2 ticket_background_color" name="ticket_background_color" required>
                            <div class="input-group-append">
                                <span class="input-group-text colorpicker-input-addon">
                                    <i></i>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="ticket_text_color">Text Color</label>
                        <div class="js-colorpicker input-group" data-format="hex">
                            <input type="text" class="form-control" id="example-colorpicker2 ticket_text_color" name="ticket_text_color" required>
                            <div class="input-group-append">
                                <span class="input-group-text colorpicker-input-addon">
                                    <i></i>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group col-md-4">
                            <label for="ticket_text_size">Text Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="example-group1-input2 ticket_text_size" name="ticket_text_size" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ticket_font_family">Font Family</label>
                                <input type="text" class="form-control" id="ticket_font_family" name="ticket_font_family" required>
                        </div>
                    
                        <div class="form-group col-md-4">
                            <label for="ticket_text_direction">Text Direction<span class="text-danger">*</span></label>
                            <select class="form-control" id="ticket_text_direction" name="ticket_text_direction" required>
                                <option value="">Select</option>
                                <option value="left">Left to Right</option>
                                <option value="right">Right to Left</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ticket_text_speed">Text Speed<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="example-group1-input2 ticket_text_speed" name="ticket_text_speed" required>
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