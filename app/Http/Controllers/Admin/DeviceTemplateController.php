<?php

namespace App\Http\Controllers\Admin;

use App\Device;
use App\DeviceTemplateAsssets;
use App\DeviceTemplateData;
use App\DeviceTemplates;
use App\Http\Controllers\Controller;
use App\Http\Requests\DeviceTemplateRequest;
use App\ScheduleTemplates;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades;
use App\DynamicTemplate;
use DB;
use App\TemplateColunm;
use Kreait\Firebase\Factory;
use App\Gallery;
class DeviceTemplateController extends Controller
{
    public function index()
    {
        $templates = DeviceTemplateData::where('organization_id', auth()->user()->organization_id)->with(['device_templates', 'template_assets'])->where('is_deleted' , 0)->get();

        foreach ($templates as $template) {
            $template->images = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where('asset_type', 'image')->get();

            $template->videos = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where('asset_type', 'video')->get();
        }

        return view('admin.device_templates.index', compact('templates'));
    }

    public function create()
    {
        $devices = Device::all();

        return view('admin.device_templates.set_teamplate', compact('devices'));
    }

    public function show()
    {
        $queueTemplates = DeviceTemplates::where(['quebox_required'=>1, 'is_special'=>0])->orderBy('id', 'ASC')->get();
        $simpleTemplates = DeviceTemplates::where(['quebox_required'=>0, 'is_special'=>0])->orderBy('id', 'ASC')->get();
        $specialTemplates = DeviceTemplates::where(['is_special'=>1])->orderBy('id', 'ASC')->get();
        
        return view('admin.device_templates.new-index', compact('queueTemplates', 'simpleTemplates', 'specialTemplates'));
    }

    
    public function store_template(Request $request, DeviceTemplateRequest $deviceTemplateRequest)
    {
        
        $storeTemplateData = new DeviceTemplateData();
        $storeTemplateData->ticker_text = $request->ticker_text;
        $storeTemplateData->template_id = $request->template_id;
        $storeTemplateData->name        = $request->name; 
        $storeTemplateData->content_type= isset($request->content_type)?$request->content_type:Null;
        if($request->rss_feed){
            $content = file_get_contents($request->rss_feed);
            $storeTemplateData->rss_feed  = $content;
        
        }

        if ($request->logo) {
            $storeTemplateData->logo =  $request->logo;
        }

        $storeTemplateData->save();

        $templateId = $request->template_id;

        $template = DeviceTemplates::query()->find($templateId);

        $requiredImages = $template->images_required;
        $requiredVideos = $template->videos_required;
        $requiredPPT = $template->ppt_required;
        $box_no = 0;
        for ($i = 1; $i <= $requiredVideos; $i++) { // requiredVideos = template required videos from database

            if ($request['video_' . $i]) {
                if(!in_array($templateId, [29,30,31,32])){
                    $box_no++;
                }
                

                foreach ($request['video_' . $i] as $key => $videos) {
                    $this->save_template_assets_latest('video', $i, $videos, 'videos', $storeTemplateData->id, $box_no>0?$box_no:3);
                }
            }
        }

        for ($i = 1; $i <= $requiredImages; $i++) { // requiredVideos = template required videos from database

            if ($request['image_' . $i]) {
                $box_no++;
                foreach ($request['image_' . $i] as $key => $images) {
                   // $fileName = Gallery::where('id', $images)->first()->url;
                    $this->save_template_assets_latest('image', $i, $images, 'images', $storeTemplateData->id, $box_no);
                }
            }
        }
        for ($i = 1; $i <= $requiredPPT; $i++) { // requiredVideos = template required videos from database

            if ($request->hasFile('ppt_' . $i)) {

                foreach ($request->file('ppt_' . $i) as $key => $ppt) {
                    $destinationPath = public_path() . '/uploads/ppt';
                    $fileName = $ppt->getClientOriginalName();
                    $ppt->move($destinationPath, $fileName);

                    $this->save_template_assets('ppt', $i, $fileName, 'ppt', $storeTemplateData->id);
                }
            }
        }

        return redirect('device-templates/live-view')->with('success', 'Template created successfullly');
    }

    
    public function update($id, Request $request)
    {
        $storeTemplateData = DeviceTemplateData::find($id);
        $storeTemplateData->ticker_text = $request->ticker_text;
        $storeTemplateData->name        = $request->name; 
        $storeTemplateData->content_type= isset($request->content_type)?$request->content_type:Null;
        if($request->rss_feed){
            $content = file_get_contents($request->rss_feed);
            $storeTemplateData->rss_feed  = $content;
            
        }
        $storeTemplateData->asset_cur_version += 1;
        $storeTemplateData->asset_prev_vesrion += 1;
        
        if ($request->logo) {
            $storeTemplateData->logo = $request->logo;
        }

        $storeTemplateData->save();

        $templateId = $storeTemplateData->template_id;

        $template = DeviceTemplates::query()->find($templateId);

        $requiredImages = $template->images_required;
        $requiredVideos = $template->videos_required;
        $requiredPPT = $template->ppt_required;
        $box_no = 0;
        DeviceTemplateAsssets::where(['template_data_id'=> $storeTemplateData->id])->delete();
        for ($i = 1; $i <= $requiredVideos; $i++) { // requiredVideos = template required videos from database

            if ($request['video_' . $i]) {
                //DeviceTemplateAsssets::where(['template_data_id'=> $storeTemplateData->id, 'asset_type'=> 'video', 'box_no'=>$i])->delete();
                if(!in_array($templateId, [29,30,31,32])){
                    $box_no++;
                }
                

                foreach ($request['video_' . $i] as $key => $videos) {
                    $this->save_template_assets_latest('video', $i, $videos, 'videos', $storeTemplateData->id, $box_no>0?$box_no:3);
                }
            }
        }

        for ($i = 1; $i <= $requiredImages; $i++) { // requiredVideos = template required videos from database
            
            if ($request['image_' . $i]) {
                //DeviceTemplateAsssets::where(['template_data_id'=> $storeTemplateData->id, 'asset_type'=> 'image', 'box_no'=>$i])->delete();
                $box_no++;
                foreach ($request['image_' . $i] as $key => $images) {
                    $fileName = $images;
                    $this->save_template_assets_latest('image', $i, $fileName, 'images', $storeTemplateData->id, $box_no);
                }
            }
        }
        for ($i = 1; $i <= $requiredPPT; $i++) { // requiredVideos = template required videos from database

            if ($request->hasFile('ppt_' . $i)) {

                foreach ($request->file('ppt_' . $i) as $key => $ppt) {
                    $destinationPath = public_path() . '/uploads/ppt';
                    $fileName = $ppt->getClientOriginalName();
                    $ppt->move($destinationPath, $fileName);

                    $this->save_template_assets('ppt', $i, $fileName, 'ppt', $storeTemplateData->id);
                }
            }
        }
        $origiNalTemp =DeviceTemplates::where('id', $storeTemplateData->template_id)->first();

        if($origiNalTemp->content_option   == 1){
            
            if($request->content_type == 'video'){
                DeviceTemplateAsssets::where(['template_data_id'=> $id , 'asset_type'=> 'image'])->delete();
            }else if($request->content_type == 'image'){
                DeviceTemplateAsssets::where(['template_data_id'=> $id , 'asset_type'=> 'video'])->delete();
            }
        }
        return redirect('device-templates/live-view')->with('success', 'Template Updated successfullly');
    }
    public function delete_template($id)
    {
        $template_data = DeviceTemplateData::query()->findOrFail($id);

        $template_data->is_deleted = 1;

        $template_data->update();

        return redirect('device-templates/live-view')->with('success','Template and Template Data deleted successfully');
    }

    public function validateFields($startDate, $endDate, $deviceId)
    {
        $validation = ScheduleTemplates::query()
            ->whereBetween('start_date', [$startDate, $endDate])
            ->orWhereBetween('end_date', [$startDate, $endDate])->count();

        if ($validation > 1) {
            return false;
        } else {
            return true;
        }
    }

    public function format_date($date)
    {
        $date_fromat = Carbon::createFromFormat('m/d/Y h:i A', $date);

        $date_fromat = Carbon::parse($date_fromat)->format('Y-m-d H:i:s');

        return $date_fromat;
    }

    public function next_step(Request $request)
    {
        
        $ppt_count = $request->ppt_count;
        $content_option = $request->content_option;
        
        $video_count = $request->video_count;
        $images_count = $request->images_count;
        $logo_count = $request->logo_count;
        $ticker_text_count = $request->ticker_text_count;
        $logo_count = $request->logo_count;
        $template_id = $request->template_id;
        $rss_feed = $request->rss_feed;
        $image_path = $request->image_path;
        $gImages = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $gvideos = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        
        return view('admin.device_templates.next', compact('content_option','gImages', 'gvideos', 'image_path','ppt_count', 'video_count', 'images_count', 'template_id', 'ticker_text_count', 'logo_count', 'rss_feed'))->render();

        
    }

    public function save_template_assets($type, $box_no, $fileName, $folderName, $template_id, $b_no)
    {
        $template_asset_data = new DeviceTemplateAsssets();

        $template_asset_data->template_data_id = $template_id;
        $template_asset_data->asset_url = 'uploads/' . $folderName . '/' . $fileName;
        $template_asset_data->asset_type = $type;
        $template_asset_data->asset_box_number = $box_no;
        $template_asset_data->box_no = $b_no;
        $template_asset_data->save();
    }
    public function view($id){
        $template = DeviceTemplateData::with(['device_templates', 'template_assets'])->where(['is_deleted' => 0, 'id' => $id])->first();
        $template->imagesbox1 = DeviceTemplateAsssets::where(['template_data_id' => $template->id, 'asset_type'=> 'image', 'asset_box_number'=>1])->with('gallery')->get();
        $template->imagesbox2 = DeviceTemplateAsssets::where(['template_data_id' => $template->id, 'asset_type'=> 'image', 'asset_box_number'=>2])->with('gallery')->get();
        $template->imagesbox3 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'image', 'asset_box_number'=>3])->with('gallery')->get();
        $template->imagesbox4 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'image', 'asset_box_number'=>4])->with('gallery')->get();
        $template->videosbox1 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>1])->with('gallery')->get();
        $template->videosbox2 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>2])->with('gallery')->get();
        $template->videosbox3 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>3])->with('gallery')->get();
        $template->videosbox4 = DeviceTemplateAsssets::where(['template_data_id' => $template->id,'asset_type'=> 'video', 'asset_box_number'=>4])->with('gallery')->get();
        $view = $template->device_templates->id;
        //dd();
        return view('admin.device_templates.view.view_'.$view, compact('template'));
    }
    public function liveView(){
        $templates = DeviceTemplateData::where('organization_id', auth()->user()->organization_id)->with(['device_templates'])->where('is_deleted' , 0)->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $total =  DeviceTemplateData::where('organization_id', auth()->user()->organization_id)->where('is_deleted' , 0)->get()->count();
        foreach ($templates as $template) {
            $template->imagesbox1 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>1])->get();
            $template->imagesbox2 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>2])->get();
            $template->imagesbox3 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>3])->get();
            $template->imagesbox4 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>4])->get();
            $template->videosbox1 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>1])->get();
            $template->videosbox2 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>2])->get();
            $template->videosbox3 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>3])->get();
            $template->videosbox4 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>4])->get();
        }
        //dd($templates);
        return view('admin.device_templates.liveView', compact('templates', 'total'));
    }
    public function loadMore(Request $request){
        
        $templates = DeviceTemplateData::where('organization_id', auth()->user()->organization_id)->with(['device_templates'])->where('is_deleted' , 0)->orderBy('id', 'DESC')->skip($request->current)->take(2)->get();
        foreach ($templates as $template) {
            $template->imagesbox1 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>1])->get();
            $template->imagesbox2 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>2])->get();
            $template->imagesbox3 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>3])->get();
            $template->imagesbox4 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'image', 'asset_box_number'=>4])->get();
            $template->videosbox1 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>1])->get();
            $template->videosbox2 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>2])->get();
            $template->videosbox3 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>3])->get();
            $template->videosbox4 = DeviceTemplateAsssets::query()
                ->where('template_data_id', $template->id)->where(['asset_type'=> 'video', 'asset_box_number'=>4])->get();
        }
        return view('admin.device_templates.ajax-view', compact('templates'));
    }
    public function dynamic(){
        return view('admin.device_templates.dynamic');
    }
    public function createDynamic(Request $request){
       // dd($request->all());
        $data = $request->all();
        $template = DynamicTemplate::create([
            'name' => 'New Dynamic Templae'
        ]);
        foreach($request->height as $key => $value){
            $row = $template->rows()->create([
                        'row_number' => $key+1,
                        'height'     => $value
                    ]);
            $rowId = $row->id; 
            for($i=1; $i<=$request->cols[$key]; $i++){
                if($request->cols[$key] == 1){
                    $t = $key + 1;
                    $type = $request['widgets'.$t];
                    DB::table('template_colunms')->insert([
                        'template_row_id' => $rowId,
                        'colunm_widget_type'    => $type,
                        'width'                 => 100
                    ]); 
                }else{
                    $keyy = $key + 1;
                    $colWidth = $request['widthRow'.$keyy];
                    $type = $request['multiWidgets'.$keyy];
                    $width = $colWidth[$i - 1];
                    $row->colunms()->create([
                        'colunm_widget_type'    => $type[$i - 1],
                        'width'                 => $width
                    ]);
                }   
            }
             

        }
        $template = DynamicTemplate::whereId(1)->with('rows.colunms')->first();
        
        return view('admin.device_templates.dynamic_create', compact('template'));
    }
    public function saveAssets(Request $request){
        
    }
    public function edit_template($id){
        $data['template_id'] = $id;
        $temp = DeviceTemplateData::where('id', $id)->with('device_templates')->first();
        $temp->imagesbox1 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'image', 'asset_box_number'=>1])->get();
        $temp->imagesbox2 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'image', 'asset_box_number'=>2])->get();
        $temp->imagesbox3 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'image', 'asset_box_number'=>3])->get();
        $temp->imagesbox4 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'image', 'asset_box_number'=>4])->get();
        $temp->videosbox1 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'video', 'asset_box_number'=>1])->get();
        $temp->videosbox2 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'video', 'asset_box_number'=>2])->get();
        $temp->videosbox3 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'video', 'asset_box_number'=>3])->get();
        $temp->videosbox4 = DeviceTemplateAsssets::where(['template_data_id'=> $id, 'asset_type'=> 'video', 'asset_box_number'=>4])->get();
        $temp->imagesboxArray1 = $temp->imagesbox1->pluck('asset_url')->toArray();
        $temp->imagesboxArray2 = $temp->imagesbox2->pluck('asset_url')->toArray();
        $temp->imagesboxArray3 = $temp->imagesbox3->pluck('asset_url')->toArray();
        $temp->imagesboxArray4 = $temp->imagesbox4->pluck('asset_url')->toArray();
        $temp->videosboxArray1 = $temp->videosbox1->pluck('asset_url')->toArray();
        $temp->videosboxArray2 = $temp->videosbox2->pluck('asset_url')->toArray();
        $temp->videosboxArray3 = $temp->videosbox3->pluck('asset_url')->toArray();
        $temp->videosboxArray4 = $temp->videosbox4->pluck('asset_url')->toArray();
        
        $data['video_count']        = $temp->device_templates->videos_required;
        $data['logo_count']        = $temp->device_templates->logo_required;
        $data['ticker_text_count']  = $temp->device_templates->ticker_text_required;
        $data['images_count']       = $temp->device_templates->images_required;
        $data['rss_feed']        = $temp->device_templates->rss_feed_required;
        $data['temp'] = $temp;
        $data['gImages'] = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $data['gvideos'] = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        $data['template']  =DeviceTemplates::where('id', $temp->template_id)->first();
        return view('admin.device_templates.edit_template', $data);        
    }
    // public function deleteAsset($id){
    //     $asset = DeviceTemplateAsssets::find($id);
    //     unlink(public_path().'/' .$asset->asset_url);
    //     $asset->delete($id);
    //     return 1;

    // }
    public function save_template_assets_latest($type, $box_no, $fileName, $folderName, $template_id, $b_no)
    {
        $template_asset_data = new DeviceTemplateAsssets();

        $template_asset_data->template_data_id = $template_id;
        $template_asset_data->asset_url = $fileName;
        $template_asset_data->asset_type = $type;
        $template_asset_data->asset_box_number = $box_no;
        $template_asset_data->box_no = $b_no;
        $template_asset_data->save();
    }
    public function deleteAsset($id){
        $asset = DeviceTemplateAsssets::find($id);
        //unlink(public_path().'/' .$asset->asset_url);
        $asset->delete($id);
        return 1;

    }
}
