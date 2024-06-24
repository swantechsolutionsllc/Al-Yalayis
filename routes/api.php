<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//Route::group(['middleware' => ['hasEmail', 'api.logger']], function () { 
Route::group(['middleware' => ['api.logger']], function () { 
    Route::get('test-socket','API\ZonesController@testSocket');

    Route::get('zones','API\ZonesController@zones')->name('zones');
    Route::get('cities/{id?}','API\CitiesController@cities')->name('cities');
    Route::get('branches/{id?}','API\BranchesController@branches')->name('branches');
    Route::get('device-groups/{id?}','API\DeviceGroupsController@deviceGroups')->name('deviceGroups');
    Route::get('devices/{id?}','API\DevicesController@index')->name('devices');
    Route::get('playlist/{id}','API\DevicesController@devicePlaylist')->name('device-playlist');
    Route::post('online-license', 'API\DevicesController@dlcheck')->name('dl-check');
    Route::post('android-device-online-license', 'API\DevicesController@dlCheckForAndroid')->name('andorid-dl-check');
    Route::post('submit-template-file', 'API\TemplateController@store');
    Route::get('single-device/{id}','API\DevicesController@show');
    Route::get('staff-details/{staffid}','API\DevicesController@staffDetails');
    Route::get('check-device-status/{name_qms}','API\DevicesController@deviceStatus');
    Route::get('counter-content/{id}','API\DevicesController@counterContent');
#    Route::get('device-templates/{id}','API\DeviceTemplatesController@device_templates')->name('device_templates');
#    Route::post('update-device','API\DevicesController@update_device');
 #   Route::get('get-schedule-single','API\ScheduleController@getSingleSchedule')->name('single-schedule');
 #   Route::get('get-schedules-all','API\ScheduleController@getAllSchedules')->name('all-schedules');
 #   Route::post('devices','API\DevicesController@insert')->name('insert-device');
    
 #   Route::get('asset-download-schedules','API\ScheduleController@getAssetsDownloadSchedules');
 #   Route::get('get-templates','API\TemplateController@templates');

 #   Route::get('log','API\DeviceTemplatesController@log')->name('log');



  #  Route::get('device-asset-download-schedules','API\ScheduleController@deviceSchedules');
    
});
Route::post('frontend-license', 'API\DevicesController@dlcheckNew')->name('dl-check-new');
Route::get('get-ips', 'API\DevicesController@getIps');