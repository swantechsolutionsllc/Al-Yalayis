@extends('admin.layouts.master')
@section('pageTitle', 'Create Device')
@section('styles')
<link rel="stylesheet" href="{{asset('assets/js/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css')}}">
@endsection
@section('content')

<div class="content">
    
    <form class="form-horizontal" method="POST" action="{{route('md-settings.update', $setting->id)}}" enctype="multipart/form-data" id="myform">
        @csrf
        @method("PUT")
        <div class="block block-rounded">
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Main Display Settings</h2>
                    <div class="form-group col-md-6">
                        <label for="val-username">Settings Name<span class="text-danger">*</span></label>
                        <input required type="text" placeholder="Settings Name" id="demo-hor-inputemail"
                        class="form-control" name="setting_name" value="{{old('setting_name', $setting->setting_name)}}" required>
                    </div>
                <div class="col-lg-12">
                    <h2 class="content-heading border-bottom mb-4 pb-2" style="font-size: 25px;">Queue Area Setting:</h2>

                    <div class="row items-push">
                        <div class="form-group col-md-4">
                            <label for="main_area_heading_bg_color">Main Heading Area BG Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="main_area_heading_bg_color" name="main_area_heading_bg_color" value="{{old('main_area_heading_bg_color', $setting->main_area_heading_bg_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="main_area_heading_text_color">Main Heading Area Text Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="main_area_heading_text_color" name="main_area_heading_text_color" value="{{old('main_area_heading_text_color', $setting->main_area_heading_text_color)}}" required>
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
                                <input type="number" class="form-control" id="main_area_heading_text_size" name="main_area_heading_text_size" value="{{old('main_area_heading_text_size', $setting->main_area_heading_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="main_area_content_bg_color">Main Content Area BG Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="main_area_content_bg_color" name="main_area_content_bg_color" value="{{old('main_area_content_bg_color', $setting->main_area_content_bg_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="main_content_area_text_color">Main Content Area Text Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="main_content_area_text_color" name="main_content_area_text_color" value="{{old('main_content_area_text_color', $setting->main_content_area_text_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-3">
                            <label for="main_content_area_text_size">Main Content Area Text Size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="main_content_area_text_size" name="main_content_area_text_size" value="{{old('main_content_area_text_size', $setting->main_content_area_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="main_content_area_blinking_color">Main Content Area Blinking Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="main_content_area_blinking_color" name="main_content_area_blinking_color" value="{{old('main_content_area_blinking_color', $setting->main_content_area_blinking_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_heading_area_bg_color">History Heading Area BG Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_heading_area_bg_color" name="history_heading_area_bg_color" value="{{old('history_heading_area_bg_color', $setting->history_heading_area_bg_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_heading_area_bg_text_color">History Heading Area BG text color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_heading_area_bg_text_color" name="history_heading_area_bg_text_color" value="{{old('history_heading_area_bg_text_color', $setting->history_heading_area_bg_text_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_heading_area_text_size">History Heading Area BG text size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="history_heading_area_text_size" name="history_heading_area_text_size" value="{{old('history_heading_area_text_size', $setting->history_heading_area_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group col-md-4">
                            <label for="history_content_area_odd_bg_color">History Content area odd bg color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_content_area_odd_bg_color" name="history_content_area_odd_bg_color" value="{{old('history_content_area_odd_bg_color', $setting->history_content_area_odd_bg_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="history_content_area_odd_text_color">History Content area odd text color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_content_area_odd_text_color" name="history_content_area_odd_text_color" value="{{old('history_content_area_odd_text_color', $setting->history_content_area_odd_text_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_content_area_odd_text_size">History Content area odd text size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="history_content_area_odd_text_size" name="history_content_area_odd_text_size" value="{{old('history_content_area_odd_text_size', $setting->history_content_area_odd_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group col-md-4">
                            <label for="history_content_area_even_bg_color">History Content area even bg color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_content_area_even_bg_color" name="history_content_area_even_bg_color" value="{{old('history_content_area_even_bg_color', $setting->history_content_area_even_bg_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="history_content_area_even_text_color">History Content area even text color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="history_content_area_even_text_color" name="history_content_area_even_text_color" value="{{old('history_content_area_even_text_color', $setting->history_content_area_even_text_color)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text colorpicker-input-addon">
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="history_content_area_even_text_size">History Content area even text size<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="history_content_area_even_text_size" name="history_content_area_even_text_size" value="{{old('history_content_area_even_text_size', $setting->history_content_area_even_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>


                        <div class="form-group col-md-4">
                            <label for="no_of_rows">No of Rows<span class="text-danger">*</span></label>
                            <input required type="number" placeholder="No of Rows" id="no_of_rows"
                            class="form-control" name="no_of_rows" value="{{old('no_of_rows', $setting->no_of_rows)}}" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="text_alignment">Text Alignment<span class="text-danger">*</span></label>
                            <select class="form-control" id="text_alignment" name="text_alignment" required>
                                <option value="">Select</option>
                                <option value="left" {{old('text_alignment', $setting->text_alignment) == 'left'?'selected':''}}>Left</option>
                                <option value="right" {{old('text_alignment', $setting->text_alignment) == 'right'?'selected':''}}>Right</option>
                                <option value="center" {{old('text_alignment', $setting->text_alignment) == 'center'?'selected':''}}>Center</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="audio">Select Audio<span class="text-danger">*</span></label>
                            <select class="form-control" id="audio" name="audio" required>
                                <option value="">Select</option>
                                <option value="male" {{old('audio', $setting->audio) == 'male'?'selected':''}}>Male</option>
                                <option value="female" {{old('audio', $setting->audio) == 'female'?'selected':''}}>Female</option>
                            </select>
                        </div>
                        
                        <div class="form-group col-md-4">
                            <label for="language">Annoucment Language<span class="text-danger">*</span></label>
                            <select class="form-control" id="language" name="language" required>
                                <option value="">Select</option>
                                <option value="en" {{old('language', $setting->language) == 'en'?'selected':''}}>ENGLISH</option>
                                <option value="ar" {{old('language', $setting->language) == 'ar'?'selected':''}}>ARABIC</option>
                                <option value="en_ar" {{old('language', $setting->language) == 'en_ar'?'selected':''}}>ENGLISH + ARABIC</option>
                                <option value="ar_en" {{old('language', $setting->language) == 'ar_en'?'selected':''}}>ARABIC + ENGLISH</option>
                            </select>
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
                                <option value="left" {{old('logo_alignment', $setting->logo_alignment) == 'left'?'selected':''}}>Left</option>
                                <option value="right" {{old('logo_alignment', $setting->logo_alignment) == 'right'?'selected':''}}>Right</option>
                                <option value="center" {{old('logo_alignment', $setting->logo_alignment) == 'center'?'selected':''}}>Center</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="header_background_color">Background Color</label>
                            <div class="js-colorpicker input-group" data-format="hex">
                                <input type="text" class="form-control" id="header_background_color" name="header_background_color" value="{{old('header_background_color', $setting->header_background_color)}}" required>
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
                                <input type="text" class="form-control" id="date_time_color" name="date_time_color" value="{{old('date_time_color',  $setting->date_time_color)}}" required>
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
                                <input type="number" class="form-control" id="logo_image_size" name="logo_image_size" value="{{old('logo_image_size', $setting->logo_image_size)}}" required>
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
                                <option value="hide" {{old('visibility', $setting->visibility) == 'hide'?'selected':''}}>Hide</option>
                                <option value="show" {{old('visibility', $setting->visibility) == 'show'?'selected':''}}>Show</option>
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
                            <input type="text" class="form-control" id="ticket_background_color" name="ticket_background_color" value="{{old('ticket_background_color', $setting->ticket_background_color)}}" required>
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
                            <input type="text" class="form-control" id="ticket_text_color" name="ticket_text_color" value="{{old('ticket_text_color', $setting->ticket_text_color)}}" required>
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
                                <input type="number" class="form-control" id="ticket_text_size" name="ticket_text_size" value="{{old('ticket_text_size', $setting->ticket_text_size)}}" required>
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        px
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ticket_font_family">Font Family</label>
                                <input type="text" class="form-control" id="ticket_font_family" name="ticket_font_family" value="{{old('ticket_font_family', $setting->ticket_font_family)}}" required>
                        </div>
                    
                        <div class="form-group col-md-4">
                            <label for="ticket_text_direction">Text Direction<span class="text-danger">*</span></label>
                            <select class="form-control" id="ticket_text_direction" name="ticket_text_direction" required>
                                <option value="">Select</option>
                                <option value="left" {{old('ticket_text_direction', $setting->ticket_text_direction) == 'left'?'selected':''}}>Left to Right</option>
                                <option value="right" {{old('ticket_text_direction', $setting->ticket_text_direction) == 'right'?'selected':''}}>Right to Left</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="ticket_text_speed">Text Speed<span class="text-danger">*</span></label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="ticket_text_speed" name="ticket_text_speed" value="{{old('ticket_text_speed', $setting->ticket_text_speed)}}" required>
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