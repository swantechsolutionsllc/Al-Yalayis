<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\MdSetting;

class MdSettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['settings'] = MdSetting::all();
        return view('admin.settings.md.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.settings.md.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());

        MdSetting :: create([
            'setting_name'                      => $request->setting_name,
            'history_area_heading_bg_color'     => $request->history_area_heading_bg_color,
            'history_area_heading_text_size'    => $request->history_area_heading_text_size,
            'history_area_content_color_even'   => $request->history_area_content_color_even,
            'main_area_heading_bg_color'        => $request->main_area_heading_bg_color,
            'main_area_heading_text_size'       => $request->main_area_heading_text_size,
            'main_area_content_bg_color_odd'     => $request->mai_area_content_bg_color_odd,
            'main_area_content_bg_color_even'    => $request->mai_area_content_bg_color_even,
            'no_of_column'                      => $request->no_of_column,
            'no_of_rows'                        => $request->no_of_rows,
            'text_alignment'                    => $request->text_alignment,
            'audio_1'                           => $request->audio_1,
            'audio_2'                           => $request->audio_2,
            'language'                          => $request->language,
            'blinking_color'                    => $request->blinking_color,
            'logo_alignment'                    => $request->logo_alignment,
            'header_background_color'           => $request->header_background_color,
            'date_time_color'                   => $request->date_time_color,
            'logo_image_size'                   => $request->logo_image_size,
            'visibility'                        => $request->visibility,
            'ticket_background_color'           => $request->ticket_background_color,
            'ticket_text_color'                 => $request->ticket_text_color,
            'ticket_text_size'                  => $request->ticket_text_size,
            'ticket_font_family'                => $request->ticket_font_family,
            'ticket_text_direction'             => $request->ticket_text_direction,
            'ticket_text_speed'                 => $request->ticket_text_speed,
        ]);
        return redirect()->route('md-settings.index')->with('success','Settings Created Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['setting'] = MdSetting::findOrFail($id);
        return view('admin.settings.md.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());
        $setting = MdSetting::findOrFail($id);
            $setting->setting_name                      = $request->setting_name;
            $setting->history_area_heading_bg_color     = $request->history_area_heading_bg_color;
            $setting->history_area_heading_text_size    = $request->history_area_heading_text_size;
            $setting->history_area_content_color_even   = $request->history_area_content_color_even;
            $setting->main_area_heading_bg_color        = $request->main_area_heading_bg_color;
            $setting->main_area_heading_text_size       = $request->main_area_heading_text_size;
            $setting->main_area_content_bg_color_odd     = $request->mai_area_content_bg_color_odd;
            $setting->main_area_content_bg_color_even    = $request->mai_area_content_bg_color_even;
            $setting->no_of_column                      = $request->no_of_column;
            $setting->no_of_rows                        = $request->no_of_rows;
            $setting->text_alignment                    = $request->text_alignment;
            $setting->audio_1                           = $request->audio_1;
            $setting->audio_2                           = $request->audio_2;
            $setting->language                          = $request->language;
            $setting->blinking_color                    = $request->blinking_color;
            $setting->logo_alignment                    = $request->logo_alignment;
            $setting->header_background_color           = $request->header_background_color;
            $setting->date_time_color                   = $request->date_time_color;
            $setting->logo_image_size                   = $request->logo_image_size;
            $setting->visibility                        = $request->visibility;
            $setting->ticket_background_color           = $request->ticket_background_color;
            $setting->ticket_text_color                 = $request->ticket_text_color;
            $setting->ticket_text_size                  = $request->ticket_text_size;
            $setting->ticket_font_family                = $request->ticket_font_family;
            $setting->ticket_text_direction             = $request->ticket_text_direction;
            $setting->ticket_text_speed                 = $request->ticket_text_speed;

        $setting->update();

        return redirect()->route('md-settings.index')->with('success','Settings Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
