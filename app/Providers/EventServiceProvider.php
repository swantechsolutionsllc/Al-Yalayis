<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;
use App\Zone;
use App\Branch;
use App\City;
use App\DeviceGroup;
use App\Device;
use App\DeviceTemplateData;
use App\Schedule;
use App\User;
use App\Observers\ZoneObserver;
use App\Observers\CityObserver;
use App\Observers\BranchObserver;
use App\Observers\DeviceGroupObserver;
use App\Observers\DeviceObserver;
use App\Observers\DeviceTemplateDataObserver;
use App\Observers\ScheduleObserver;
use App\Observers\UserObserver;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        Zone::observe(ZoneObserver::class);
        Branch::observe(BranchObserver::class);
        City::observe(CityObserver::class);
        DeviceGroup::observe(DeviceGroupObserver::class);
        Device::observe(DeviceObserver::class);
        Schedule::observe(ScheduleObserver::class);
        User::observe(UserObserver::class);
        DeviceTemplateData::observe(DeviceTemplateDataObserver::class);
    }
}
