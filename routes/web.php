<?php

use Illuminate\Support\Facades\Route;

Route::get('/config-cache', function () {
    $exitCode = Artisan::call('config:cache');
    return "Config Cache Cleared!";
});

Route::get('/phpinfo', function () {
   echo phpinfo();
});
Route::post('receive-qms-data', 'WebhookController@index');
Route::get('check-online-devices', 'Admin\DeviceController@checkOnlineStatus');
Route::get('heartbeat', 'WebhookController@heartBeat');
Route::get('update-content-queue', 'Admin\DeviceController@updateContnetQueue')->name('admin.update-queue');
    
Route::group(['middleware' => 'auth'], function () {

    Route::resource('users','Admin\UsersController');
    Route::get('/advance-dashboard', 'DashboardController@advance')->name('advance-dashboard');
    Route::get('/', 'DashboardController@index')->name('dashboard');
    Route::get('/schedule-graph', 'Admin\ScheduleController@scheduleGraph');
    Route::resource('branches', 'Admin\BranchController');
    Route::resource('devices', 'Admin\DeviceController');
    Route::get('publish-content', 'Admin\DeviceController@publishContent')->name('admin.publish-content');
    Route::post('publish-content', 'Admin\DeviceController@publishContentStore')->name('admin.publish-content-store');
    Route::post('device-actions', 'Admin\DeviceController@deviceActions')->name('admin.device-actions');
    Route::get('fetch-udp-data', 'Admin\DeviceController@fetchUdpData')->name('admin.fetch-udp-data');
    Route::get('send-ping-message', 'Admin\DeviceController@sendPingMessage')->name('admin.send-ping-to-devices');
    Route::resource('counters', 'Admin\CounterController');
    Route::get('firebase', 'Admin\FireBaseController@index');
    Route::resource('gallery', 'Admin\GalleryController');
    Route::get('video-gallery', 'Admin\GalleryController@videos')->name('gallery.videos');
    Route::get('merge', 'Admin\GalleryController@merge');
    Route::delete('delete-multiple-media', 'Admin\GalleryController@destroy')->name('delete-multiple-media');
    Route::prefix('device-templates')->group(function () {
        Route::get('/', 'Admin\DeviceTemplateController@index');
        Route::get('create', 'Admin\DeviceTemplateController@create');
        Route::get('show','Admin\DeviceTemplateController@show')->name('show-templates');
        Route::post('store', 'Admin\DeviceTemplateController@store_template');
        Route::delete('delete/{id}', 'Admin\DeviceTemplateController@delete_template');
        Route::put('update/{id}', 'Admin\DeviceTemplateController@update');
        Route::get('edit/{id}', 'Admin\DeviceTemplateController@edit_template')->name('edit_template');
        Route::delete('delete/{id}', 'Admin\DeviceTemplateController@delete_template');
        Route::get('view/{id}', 'Admin\DeviceTemplateController@view');
        Route::get('live-view', 'Admin\DeviceTemplateController@liveView')->name('live-view');
        Route::get('load-more', 'Admin\DeviceTemplateController@loadMore');
        Route::delete('delete-asset/{id}', 'Admin\DeviceTemplateController@deleteAsset');
    });

    Route::get('schedule', 'Admin\ScheduleController@index')->name('schedule');
    Route::get('schedule-view', 'Admin\ScheduleController@view')->name('schedule-view');
    Route::get('schedule-edit/{id}', 'Admin\ScheduleController@edit')->name('schedule-view');
    Route::post('ajax-data', 'Admin\ScheduleController@schedule_post')->name('ajax-data');
    Route::post('ajax-data-update', 'Admin\ScheduleController@schedule_post_update')->name('ajax-data-update');
    Route::post('ajax-data-delete', 'Admin\ScheduleController@schedule_post_delete')->name('ajax-data-delete');

    Route::resource('organization', 'Admin\OrganizationController');
    Route::resource('play-lists', 'Admin\PlayListController');
    Route::post('check-playlist-name',  'Admin\PlayListController@checkPlayListName')->name('check-playlist-name');
    Route::post('change-play-list-status',  'Admin\PlayListController@changeStatus')->name('change-play-list-status');
    Route::get('assign-templates-to-playlist/{id}',  'Admin\PlayListController@assignTemplates')->name('assing-templates');
    Route::post('save-assigned-templates',  'Admin\PlayListController@saveAssignedTemplates')->name('save-assigned-templates');
    Route::get('get-template-assets/{id}', 'Admin\PlayListController@getTemplateAssets');
    Route::get('get-devices/{id}', 'Admin\PlayListController@getDevices');
    Route::post('update-device-playlist', 'Admin\PlayListController@getDevicePlaylist')->name('update-device-playlist');
    Route::resource('zones', 'Admin\ZoneController');
    Route::resource('staff', 'Admin\StaffController');
    Route::resource('cities', 'Admin\CityController');
    Route::resource('device-group', 'Admin\DeviceGroupController');
    Route::get('dynamic-templates', 'Admin\DeviceTemplateController@dynamic');
    Route::post('create-dynamic', 'Admin\DeviceTemplateController@createDynamic');
    Route::post('submit-template-assets', 'Admin\DeviceTemplateController@saveAssets');
    Route::post('assign-organization', 'Admin\OrganizationController@assign_org');
    Route::post('assign-branches', 'Admin\BranchController@assign_branch');
    Route::post('assign-zones', 'Admin\ZoneController@assign_zone');
    Route::post('assign-cities', 'Admin\CityController@assign_cities');
    Route::post('assign-device-groups','Admin\DeviceGroupController@assign');
    Route::post('import-cities', 'Admin\CityController@import');
    Route::get('relations','Admin\RelationsController@index')->name('relations');
    Route::get('relations-new','Admin\RelationsController@relationNew');
    Route::get('relations-tree','Admin\RelationsController@treeView');

    Route::post('logout', 'LoginController@logout')->name('logout');
    Route::get('profile', 'ProfileController@index')->name('profile');
    Route::delete('ajax-delete-zones','Admin\ZoneController@ajax_delete_zones')->name('ajax-delete-zones');
    Route::delete('ajax-delete-cities','Admin\CityController@ajax_delete_cities')->name('ajax-delete-cities');
    Route::delete('ajax-delete-branches','Admin\BranchController@ajax_delete_branches')->name('ajax-delete-branches');
    Route::delete('ajax-delete-device-groups','Admin\DeviceGroupController@ajax_delete_device_groups')->name('ajax-delete-device-groups');
    Route::delete('ajax-delete-devices','Admin\DeviceController@ajax_delete_devices')->name('ajax-delete-devices');
    Route::delete('ajax-delete-schedules','Admin\ScheduleController@ajax_delete_schedules')->name('ajax-delete-schedules');

    Route::post('create-device-template','Admin\DeviceTemplateController@next_step')->name('next_step');

     Route::get('get-cities/{zone_id}','Admin\ScheduleController@cities')->name('get_cities');
    Route::get('get-branches/{city_id}','Admin\ScheduleController@branches')->name('get_brances');
    Route::get('get-device-groups/{branch_id}','Admin\ScheduleController@deviceGroups')->name('get_device_groups');
    Route::get('get-devices','Admin\ScheduleController@devices')->name('get_devices');
    Route::get('get-group-devices', 'Admin\ScheduleController@groupDevices');
    Route::post('set-schedule','Admin\ScheduleController@create')->name('set_schedule');
    Route::post('update-schedule/{id}','Admin\ScheduleController@update')->name('update_schedule');
    Route::put('update-profile','ProfileController@update')->name('update-profile');
    Route::get('schedule-devices', 'Admin\ScheduleController@scheduleDevices')->name('schedule-devices');
    Route::delete('schedule/{id}', 'Admin\ScheduleController@destroy')->name('delete-schedule');
    Route::get('api-logs', 'Admin\ApiLogsController@index')->name('api-logs');
    Route::get('socket-logs', 'Admin\ApiLogsController@socketLogs')->name('socket-logs');
    Route::get('device-live-view/{id}', 'Admin\DeviceController@liveView');
    Route::resource('md-settings','Admin\MdSettingsController');
    Route::resource('cd-settings','Admin\CdSettingController');
});

Route::get('login', 'LoginController@login_view')->name('login');
Route::post('login', 'LoginController@login');


Route::get('chart-devices', 'DashboardController@chartDevices')->name('chartDevices');
Route::get('57c745439721d7c326073d6a31c50f8d0dc52117', "Admin\LicenceController@index")->name('dl');
Route::post('device/license', "Admin\LicenceController@update");
Route::post('adddevice', "Admin\LicenceController@addDevice");
Route::post('adddevice-offline', "Admin\LicenceController@addDeviceOffline");
Route::post('update-device', "Admin\LicenceController@updateDevice");
Route::post('update-device-number', "Admin\LicenceController@updateDeviceNumber");
Route::prefix('/sa')->name('sa.')->namespace('SA')->group(function(){
  //All the admin routes will be defined here...
    Route::namespace('Auth')->group(function(){
        
    //Login Routes
    Route::get('/login','LoginController@showLoginForm')->name('login');
    Route::post('/login','LoginController@login');
    Route::post('/logout','LoginController@logout')->name('logout');
});
    Route::get('/','DashboardController@index')->name('home');
    Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::get('edit-device/{id}','DashboardController@edit')->name('edit-device');
    Route::put('update-device/{id}','DashboardController@update')->name('update-device');
    
});

Route::group(['namespace'=>'SuperAdmin', 'prefix'=>'superadmin','as'=>'superadmin.'],function () {
	Route::get('/', 'LoginController@showLoginForm')->name('login-form');
	Route::post('login', 'LoginController@login')->name('login');
	Route::group(['middleware'=>['auth:admin']],function () {
		Route::post('logout', 'LoginController@logout')->name('logout');
		Route::resource('/organizations', 'OrganizationController');
        Route::group(['middleware'=>['isOrgSelected']],function () {
            Route::get('dashboard', 'DashboardController@index')->name('dashboard');
            Route::resource('roles', 'RoleController');
            Route::get('permissions', 'RoleController@permissions')->name('permissions');
            Route::post('save-permissions', 'RoleController@savePermissions')->name('save-permissions');
            
            Route::get('/activity-logs', 'ActivityLogController@index')->name('logs');
           
        });
        Route::get('set-global-organization/{id}', 'OrganizationController@setGlobalOrganization');
    });
});

