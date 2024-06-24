<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PlayList;
use App\DeviceTemplateData;
use App\DeviceTemplateAsssets;
use App\Device;
class PlayListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $playLists = PlayList::with('deviceTemplateData.device_templates')->get();
        return view('admin.play_lists.index', compact('playLists'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $playList =  PlayList::create([
            'name'=> $request->name
        ]);
        return redirect()->route('assing-templates', $playList->id);
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
        $playList = PlayList::where('id', $id)->first();
        $deviceTemplateData = DeviceTemplateData::with('device_templates')->where('organization_id', auth()->user()->organization_id)->where('is_deleted', 0)->get();
       return view('admin.play_lists.edit', compact('playList', 'deviceTemplateData'));
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
        $playList = PlayList::where('id', $id)->first();
        \DB::table('playlist_assets')->where('play_list_id', $id)->delete();
        foreach($request->duration as $key => $value){
            \DB::table('playlist_assets')->insert([
                'play_list_id' => $playList->id,
                'asset_id'     => $key,
                'duration'     => $value,
            ]);
        }
       $playList->name = $request->name;
        $playList->device_template_data_id = $request->template_id;
        $playList->update();
      
        return redirect()->route('play-lists.index')->with('success', 'Playlist Updated successfullly');;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $playList = PlayList::where('id', $id)->first();
        $playList->delete();
        return 1;
    }
    public function checkPlayListName(Request $request){
        $playList = PlayList::where('name', $request->name)->first();
        if($playList){
            return response()->json([
                'data' => null,
                'message' => 'This Playlist Name is Already Taken',
                'status' => false
            ]);
        }else{
            return response()->json([
                'status' => true
            ]);
        }
    }
    public function changeStatus(Request $request){
        $playList = PlayList::where('id', $request->id)->first();
        if($playList){
            if($request->status == 1){
                $devices = Device::whereHas('playlists', function($q) use($playList){
                    $q->where('play_lists.id', $playList->id);
                })->withCount(['playlists'=>function($q) {
                    $q->where('status', 1);
                } ])->get();
                foreach($devices as $d){
                    if($d->playlists_count){
                        return false;
                    }
                }
            }
            $playList->status = $request->status;
            $playList->update();
        }
        return true;
    }
    public function assignTemplates($id){
        $playList = PlayList::where('id', $id)->first();
        $deviceTemplateData = DeviceTemplateData::with('device_templates')->where('organization_id', auth()->user()->organization_id)->where('is_deleted', 0)->get();
       return view('admin.play_lists.assign_templates', compact('playList', 'deviceTemplateData'));
    }
    public function saveAssignedTemplates(Request $request){
   //     dd($request->all());
        $playList = PlayList::where('id', $request->id)->first();
        foreach($request->duration as $key => $value){
            \DB::table('playlist_assets')->insert([
                'play_list_id' => $playList->id,
                'asset_id'     => $key,
                'duration'     => $value,
            ]);
        }
       
        // foreach($request->templates as $key => $value){
        //     $playList->templates()->attach($value, ['duration'=>$request->duration[$key]]);
        // }
            $playList->device_template_data_id = $request->template_id;
            $playList->update();
      
        return redirect()->route('play-lists.index');
    }
    public function getTemplateAssets(Request $request, $id){
        $playlist_id = 0;
        if($request->playlist_id){
            $playlist_id = $request->playlist_id;
        }
        $template = DeviceTemplateData::with(['device_templates', 'template_assets'])->where(['is_deleted' => 0, 'id' => $id])->first();
        $template->imagesbox1 = DeviceTemplateAsssets::where(['template_data_id' => $template->id, 'asset_type'=> 'image', 'asset_box_number'=>1])->with('gallery')->get();
        $template->imagesbox2 = DeviceTemplateAsssets::where(['template_data_id' => $template->id, 'asset_type'=> 'image', 'asset_box_number'=>2])->with('gallery')->get();
        $template->imagesbox3 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'image', 'asset_box_number'=>3])->with('gallery')->get();
        $template->imagesbox4 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'image', 'asset_box_number'=>4])->with('gallery')->get();
        $template->videosbox1 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>1])->with('gallery')->get();
        $template->videosbox2 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>2])->with('gallery')->get();
        $template->videosbox3 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>3])->with('gallery')->get();
        $template->videosbox4 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>4])->with('gallery')->get();
        $t = $template->device_templates;
        return view('admin.play_lists.assets', compact('template', 't', 'playlist_id'))->render();
    }
    public function getDevices($play_list_id){
        $playList = PlayList::where('id',$play_list_id)->first();
        if($playList->status == 1){
            $devices = Device::where('device_type', 'md')->whereDoesntHave('playlists')->orWhereHas('playlists', function($q) use($play_list_id){
                $q->where('play_lists.id', $play_list_id);
                $q->orWhere('play_lists.status', 0);
            })->with('playlists')->get();        
        }else{
            $devices = Device::where('device_type', 'md')->get();
        }
        return view('admin.play_lists.devices', compact('devices', 'play_list_id'))->render();
    }
    public function getDevicePlaylist(Request $request){
        $device = Device::where('device_type', 'md')->where('id', $request->device_id)->first();
        if($request->status == 1){
            $device->playlists()->attach($request->play_list_id);
        }else{
            $device->playlists()->detach($request->play_list_id);
        }
        //$device->play_list_id = $request->play_list_id;
        //$device->update();
        return 1;
    }
}
