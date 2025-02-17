<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Gallery;
use VideoThumbnail;
class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $images = Gallery::where('type', 'image')->get();
        return view('admin.gallery.index', compact('images'));
    }
    public function videos()
    {
        $videos = Gallery::where('type', 'video')->get();
        return view('admin.gallery.videos', compact('videos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $file = $request->file;
        $mime = $file->getMimeType();
        $mime2 =  explode('/', $mime);
        $response   = [];
        $thumbnail  = '';
        $duration   = NULL;
        $dimenssions = 'N/A';
        if($mime2[0] == 'image' || $mime2[0] == 'video'){
            if($mime2[0] == 'image'){
                $response           = $this->saveImage($request);
                $thumbnail          = $response['path'];
                $imageDimenssions   = getimagesize($file);
                $dimenssions        = $imageDimenssions? $imageDimenssions[0].' x '.$imageDimenssions[1]:'N/A';
            }
            $fileSize   = $this->formatBytes($file->getSize());
            $name = $file->getClientOriginalName();
            $dest = $mime2[0] == 'image'? 'images':'videos';
            $destinationPath = public_path() . '/uploads/'.$dest;
            $extension = $file->getClientOriginalExtension();
            $fileName = rand(11111,99999).'_'.time().'.'.$extension;
            $file->move($destinationPath, $fileName);
           
            
            if($mime2[0] == 'video'){
                $thumbName          = 'thumb_'.rand(11111,99999).'_'.time().'.png';
                $thumbnail          = 'uploads/videos/thumbs/'.$thumbName;
                $media              = \FFMpeg::fromDisk('videos')->open($fileName);
                $media->getFrameFromSeconds(3)->export()->toDisk('video_thumbs')->save($thumbName);
                $duration           = \FFMpeg::fromDisk('videos')->open($fileName)->getDurationInSeconds();
                
                // $dimessions = $media->getVideoStream()->getDimensions();
            }
            

           
            $gallery = Gallery::create([
                'type'          => $mime2[0],
                'url'           => '/uploads/' . $dest . '/' . $fileName,
                'thamnail_url'  => $thumbnail,
                'size'          => $fileSize,
                'name'          => $name,
                'dimessions'    => $dimenssions,
                'duration'      => $duration
            ]);
            return $gallery->id;
    
        }
            
        
    }
    private function formatBytes($size, $precision = 2) { 
        $base = log($size, 1024);
        $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    
        return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)]; 
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $ids = $request->ids;
        Gallery::whereIn('id',explode(",",$ids))->delete();
        return response()->json(['success'=>"Products Deleted successfully."]);
    }
   

    public function saveImage($request){
        $image = $request->file('file');
       
        $quality = 100;
        $image_name = "thumb_".time() . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
        $destinationPath = "/uploads/images/thumbs";
        $resize_image = \Image::make($image->getRealPath());
        
           $resize_image->resize(207,138)->save(public_path($destinationPath) . '/' . $image_name, $quality);
        
        $image_path = $image_name;
        return
            [
                'path' => $destinationPath.'/'.$image_path,
                'width' => $resize_image->width(),
                'height' => $resize_image->height()
            ];
    }
    public function merge(){
        \FFMpeg::fromDisk('videos')
    ->open(['15990_1680866217.mp4', '13058_1661322841.mp4', '24852_1661324206.mp4'])
    ->export()
    ->concatWithoutTranscoding()
    ->save('concat33.mp4');
    }
}
