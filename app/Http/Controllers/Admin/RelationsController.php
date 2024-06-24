<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Zone;
use Illuminate\Http\Request;
use App\Gallery;
use App\MdSetting;
use App\CdSetting;
use App\Device;
class RelationsController extends Controller
{
    public function index()
    {
        $data['zones']      = Zone::where('organization_id', auth()->user()->organization_id)->with('cities.branches.device_group.devices')->get();
        $data['gImages']    = Gallery::where('type', 'image')->orderBy('created_at', 'DESC')->get();
        $data['gvideos']    = Gallery::where('type', 'video')->orderBy('created_at', 'DESC')->get();
        $data['mdSetting'] = MdSetting::select('setting_name as name', 'id')->get();
        $data['cdSetting']  = CdSetting::all();
        $data['counters']   = Device::where(['device_type'=>'cd'])->get();
        return view('admin.relations.index',$data);
    }
    public function relationNew()
    {
        $zones = Zone::where('organization_id', auth()->user()->organization_id)->with('cities.branches.device_group.devices')->get();

        return view('admin.relations.newRelation', compact('zones'));
    }
    public function treeView()
    {
        $zones = Zone::select(['id','name'])->where('organization_id', auth()->user()->organization_id)->with('cities.branches.device_group.devices')->get()->toArray();
        //$zones = json_encode($zones);
       // dd($zones);
        $data['name'] = 'Graph';
        $data['title'] = 'New Graph';
        $children = [];

        foreach($zones as $zone){
            $z['name'] = $zone['name'];
            $z['title'] = "zone";
            $z['className']= 'middle-level';
            if($zone['cities']){
                $cities = [];
                foreach($zone['cities'] as $city){
                   $c['name'] = $city['name'];
                   $c['title'] = 'City';
                   $c['className']= 'product-dept';
                   if($city['branches']){
                        $branches = [];
                        foreach($city['branches'] as $branch){
                            $b['name'] = $branch['branch_name'];
                            $b['title'] = 'Branch';
                            $b['className']= 'pipeline1';
                            if($branch['device_group']){
                                $deviceGroups = [];
                                foreach($branch['device_group'] as $dGgroup){
                                    $dg['name'] = $dGgroup['name'];
                                    $dg['title'] = 'Device Group';
                                    $dg['className'] = 'rd-dept';
                                    if($dGgroup['devices']){
                                        $devices = [];
                                        foreach($dGgroup['devices'] as $device){
                                            $d['name'] = $device['device_name'];
                                            $d['title'] = 'Devices';
                                            $d['className'] = 'frontend1';
                                            array_push($devices , $d);
                                        }
                                        $dg['children'] = $devices;        
                                    }
                                    array_push($deviceGroups, $dg);
                                }
                                $b['children'] = $deviceGroups;
                            }
                            array_push($branches,$b);
                        }
                        $c['children'] = $branches;
                   }
                   array_push($cities,$c);  
                }
                $z['children'] = $cities;
                array_push($children,$z);

            }
        }
        $data['children'] = $children;
       // dd($data );
        return view('admin.relations.treeView', compact('zones', 'data'));
    }
    
}
