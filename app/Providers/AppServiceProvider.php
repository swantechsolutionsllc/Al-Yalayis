<?php

namespace App\Providers;

use App\Organization;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Symfony\Component\HttpFoundation\Session\Session;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('superadmin.layouts.master', function ($view) {
            $organizations = Organization::select('name', 'id')->get();
           
            $selectedId = session()->get('global-org-id');
            $view->with([
                'globalOrgs'    => $organizations,
                'selectedOrga'  => $selectedId
            ]);
        });
    }
}
