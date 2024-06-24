<!doctype html>
<html lang="en">
    <head>
        @include('admin.layouts.head')
    </head>
    <body>
                <div id="page-container" class="page-header-dark main-content-boxed">

            <!-- Header -->
            @include('admin.layouts.header')
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">

                <!-- Navigation -->
                <div class="bg-white">
                    <div class="content py-3">
                        <!-- Toggle Main Navigation -->
                        <div class="d-lg-none">
                            <!-- Class Toggle, functionality initialized in Helpers.coreToggleClass() -->
                            <button type="button" class="btn btn-block btn-alt-secondary d-flex justify-content-between align-items-center" data-toggle="class-toggle" data-target="#main-navigation" data-class="d-none">
                                Menu
                                <i class="fa fa-bars"></i>
                            </button>
                        </div>
                        <!-- END Toggle Main Navigation -->

                        <!-- Main Navigation -->
                        <div id="main-navigation" class="d-none d-lg-block mt-2 mt-lg-0">
                            <ul class="nav-main nav-main-horizontal nav-main-hover">
                                <li class="nav-main-item">
                                    <a class="nav-main-link {{ Route::currentRouteName()=='dashboard' || Route::currentRouteName()=='advance-dashboard' ?'active-link':'' }}" href="{{ url('/') }}">
                                        <i class="nav-main-link-icon si si-compass"></i>
                                        <span class="nav-main-link-name">Dashboard</span>
                                    </a>
                                </li>
                             @can('users')
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ Route::currentRouteName()=='users.index'?'active-link':'' }}" href="{{ url('users') }}">
                                            <i class="nav-main-link-icon si si-action-undo"></i>
                                            <span class="nav-main-link-name">Users</span>
                                        </a>
                                    </li>
                                @endcan 
                                {{-- <li class="nav-main-item">
                                    <a class="nav-main-link nav-main-link-submenu" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-puzzle"></i>
                                        <span class="nav-main-link-name">Users</span>
                                    </a>
                                    <ul class="nav-main-submenu">
                                        @can('users')
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('users') }}">
                                                    <span class="nav-main-link-name">Users</span>
                                                </a>
                                            </li>
                                        @endcan
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('staff') }}">
                                                <span class="nav-main-link-name">Staff</span>
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </li> --}}
                                <li class="nav-main-item">
                                    <a class="nav-main-link nav-main-link-submenu" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-puzzle"></i>
                                        <span class="nav-main-link-name">Devices</span>
                                    </a>
                                    <ul class="nav-main-submenu">
                                        @can('devices')
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('counters') }}">
                                                    <span class="nav-main-link-name">Counter Display</span>
                                                </a>
                                            </li>
                                        @endcan
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('devices') }}">
                                                <span class="nav-main-link-name">Main Display</span>
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </li>

                                <li class="nav-main-item">
                                    <a class="nav-main-link nav-main-link-submenu" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-settings"></i>
                                        <span class="nav-main-link-name">Settings</span>
                                    </a>
                                    <ul class="nav-main-submenu">
                                     
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('md-settings') }}">
                                                <span class="nav-main-link-name">Main Display Settings</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('cd-settings') }}">
                                                <span class="nav-main-link-name">Counter Display Settings</span>
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </li>

                                {{-- <li class="nav-main-item">
                                    <a class="nav-main-link nav-main-link-submenu" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-puzzle"></i>
                                        <span class="nav-main-link-name">Area Management</span>
                                    </a>
                                    <ul class="nav-main-submenu">
                                        @can('zones')
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('zones') }}">
                                                    <span class="nav-main-link-name">Zones</span>
                                                </a>
                                            </li>
                                        @endcan
                                        @can('cities')
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('cities') }}">
                                                    <span class="nav-main-link-name">Cities</span>
                                                </a>
                                            </li>
                                        @endcan
                                        @can('branches')
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('branches') }}">
                                                <span class="nav-main-link-name">Branches</span>
                                            </a>
                                        </li>
                                        @endcan
                                        @can('device_groups')
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" href="{{ url('device-group') }}">
                                                <span class="nav-main-link-name">Device Groups</span>
                                            </a>
                                        </li>
                                        @endcan
                                    </ul>
                                </li> --}}
                                {{-- @can('devices')
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ Route::currentRouteName()=='devices.index'?'active-link':'' }}" href="{{ url('devices') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Devices</span> 
                                        </a>
                                    </li>
                                @endcan
                                @can('devices')
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ Route::currentRouteName()=='counters.index'?'active-link':'' }}" href="{{ url('counters') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Counters</span> 
                                        </a>
                                    </li>
                                @endcan --}}
                                @can('device_templates')
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ in_array(Route::currentRouteName(), ['live-view', 'next_step', 'show-templates', 'edit_template'])?'active-link':'' }}" href="{{ url('device-templates/live-view') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Device Templates</span>
                                        </a>
                                    </li>
                                @endcan
                                @can('device_templates')
                                    {{-- <li class="nav-main-item">
                                        <a class="nav-main-link {{ in_array(Route::currentRouteName(), ['schedule', 'schedule-view'])?'active-link':'' }}" href="{{ url('schedule') }}">
                                            <i class="nav-main-link-icon si si-puzzle"></i>
                                            <span class="nav-main-link-name">Schedule</span>
                                        </a>
                                    </li> --}}
                                @endcan
                                
                                @can(['zones', 'cities', 'branches', 'device_groups'])
                                        
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ Route::currentRouteName()=='relations'?'active-link':'' }}" href="{{ url('relations') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name"> Area Management </span>
                                        </a>
                                    </li>
                                @endcan
                                @can(['api_logs'])
                                        
                                    {{-- <li class="nav-main-item">
                                        <a class="nav-main-link {{ Route::currentRouteName()=='api-logs'?'active-link':'' }}" href="{{ url('api-logs') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name"> Api Logs </span>
                                        </a>
                                    </li> --}}
                                     <li class="nav-main-item">
                                    <a class="nav-main-link nav-main-link-submenu  {{ Route::currentRouteName()=='api-logs' ||  Route::currentRouteName()=='socket-logs'?'active-link':'' }}" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-puzzle"></i>
                                        <span class="nav-main-link-name">Logs</span>
                                    </a>
                                    <ul class="nav-main-submenu">
                                        @can(['api_logs'])
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('api-logs') }}">
                                                    <span class="nav-main-link-name">Api Logs</span>
                                                </a>
                                            </li>
                                     
                                            <li class="nav-main-item">
                                                <a class="nav-main-link" href="{{ url('socket-logs') }}">
                                                    <span class="nav-main-link-name">Socket Logs</span>
                                                </a>
                                            </li>
                                        @endcan
                                        
                                        
                                    </ul>
                                </li>
                                @endcan
                                @can(['gallery'])
                                        
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ in_array(Route::currentRouteName(), ['gallery.index', 'gallery.create', 'gallery.videos'])?'active-link':'' }}" href="{{ url('gallery') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name"> Gallery </span>
                                        </a>
                                    </li>
                                @endcan
                                @can(['add_lisence'])
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ in_array(Route::currentRouteName(), ['dl'])?'active-link':'' }}" target="_blank" href="{{ route('dl') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name"> Add Device Lisence </span>
                                        </a>
                                    </li>
                                @endcan
                                @can(['add_lisence'])
                                    <li class="nav-main-item">
                                        <a class="nav-main-link {{ in_array(Route::currentRouteName(), ['play-lists.index', 'play-lists.edit' ])?'active-link':'' }}" href="{{ route('play-lists.index') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name"> Playlists </span>
                                        </a>
                                    </li>
                                @endcan
                                {{-- <li class="nav-main-heading">Extra</li>
                                <li class="nav-main-item ml-lg-auto">
                                    <a class="nav-main-link nav-main-link-submenu" data-toggle="submenu" aria-haspopup="true" aria-expanded="false" href="#">
                                        <i class="nav-main-link-icon si si-drop"></i>
                                        <span class="nav-main-link-name d-lg-none">Themes</span>
                                    </a>
                                    <ul class="nav-main-submenu nav-main-submenu-right">
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="default" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-default"></i>
                                                <span class="nav-main-link-name">Default</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="assets/css/themes/amethyst.min.css" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-amethyst"></i>
                                                <span class="nav-main-link-name">Amethyst</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="assets/css/themes/city.min.css" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-city"></i>
                                                <span class="nav-main-link-name">City</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="assets/css/themes/flat.min.css" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-flat"></i>
                                                <span class="nav-main-link-name">Flat</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="assets/css/themes/modern.min.css" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-modern"></i>
                                                <span class="nav-main-link-name">Modern</span>
                                            </a>
                                        </li>
                                        <li class="nav-main-item">
                                            <a class="nav-main-link" data-toggle="theme" data-theme="assets/css/themes/smooth.min.css" href="#">
                                                <i class="nav-main-link-icon fa fa-square text-smooth"></i>
                                                <span class="nav-main-link-name">Smooth</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li> --}}
                            </ul>
                        </div>
                        <!-- END Main Navigation -->
                    </div>
                </div>
                <!-- END Navigation -->
                <!-- Page Content -->
               @yield('content')
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            @include('admin.layouts.footer')
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->

        @include('admin.layouts.scripts')
        <script>
            $(document).ready(function(){
                
            });
        </script>
        @include('admin.layouts.socket')

        
        <script>
            
            function closeModal(){
                var currentRoute = '{{request()->route()->getName()}}';
                if(currentRoute == 'relations'){
                    $(".logoModal").hide();
                }else{
                    $(".logoModal").modal('hide');
                }
                
            } 
            </script>
    </body>
</html>
