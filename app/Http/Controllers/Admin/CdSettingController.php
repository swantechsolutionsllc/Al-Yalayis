<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CdSetting;

class CdSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['settings'] = CdSetting::all();
        return view('admin.settings.cd.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.settings.cd.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        CdSetting :: create([
            'name'                      => $request->name,
            'ticket_color'              => $request->ticket_color,
            'counter_number_color'      => $request->counter_number_color,
            'ticket_blinking_color'     => $request->ticket_blinking_color,
            'ticket_font_size'          => $request->ticket_font_size,
            'counter_number_font_size'  => $request->counter_number_font_size,
            'service_name_color'        => $request->service_name_color,
            'service_font_size'         => $request->service_font_size,
        ]);
        return redirect()->route('cd-settings.index')->with('success','Settings Created Successfully');
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
        $data['setting'] = CdSetting::findOrFail($id);
        return view('admin.settings.cd.edit', $data);
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
        $setting = CdSetting::findOrFail($id);
        $setting->name                      = $request->name;
        $setting->ticket_color              = $request->ticket_color;
        $setting->counter_number_color      = $request->counter_number_color;
        $setting->ticket_blinking_color     = $request->ticket_blinking_color;
        $setting->ticket_font_size          = $request->ticket_font_size;
        $setting->counter_number_font_size  = $request->counter_number_font_size;
        $setting->service_name_color        = $request->service_name_color;
        $setting->service_font_size         = $request->service_font_size;
        $setting->update();

        return redirect()->route('cd-settings.index')->with('success','Settings Updated Successfully');
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
