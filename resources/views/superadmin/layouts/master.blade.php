<!doctype html>
<html lang="en">
    <head>
        @include('superadmin.layouts.head')
    </head>
    <body>
                <div id="page-container" class="page-header-dark main-content-boxed">

            <!-- Header -->
            @include('superadmin.layouts.header')
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">

                <!-- Navigation -->
                @if(session()->get('global-org-id'))
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
                                        <a class="nav-main-link active" href="{{ url('/superadmin') }}">
                                            <i class="nav-main-link-icon si si-compass"></i>
                                            <span class="nav-main-link-name">Dashboard</span>
                                        </a>
                                    </li>
                                    <li class="nav-main-item">
                                        <a class="nav-main-link" href="{{ route('superadmin.organizations.index') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Organizations</span>
                                        </a>
                                    </li>
                                    <li class="nav-main-item">
                                        <a class="nav-main-link" href="{{ route('superadmin.roles.index') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Roles</span>
                                        </a>
                                    </li>
                                    <li class="nav-main-item">
                                        <a class="nav-main-link" href="{{ route('superadmin.permissions') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Permissions</span>
                                        </a>
                                    </li>
                                    <li class="nav-main-item">
                                        <a class="nav-main-link" href="{{ route('superadmin.logs') }}">
                                            <i class="nav-main-link-icon si si-magnifier"></i>
                                            <span class="nav-main-link-name">Activity Logs</span>
                                        </a>
                                    </li>
                                
                                    <li class="nav-main-item ml-lg-auto" style="width:200px;">
                                        <select class="js-select2 form-control" id="global-org-id" name="organization" style="width: 100%;" data-placeholder="Choose one..">
                                            <option></option>
                                            @foreach ($globalOrgs as $org)
                                                <option value="{{ $org->id }}" {{ $selectedOrga == $org->id?'selected':''}}>{{ $org->name }}</option>
                                            @endforeach
                                        </select>
                                        {{-- <ul class="nav-main-submenu nav-main-submenu-right">
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
                                        </ul> --}}
                                    </li>
                                    
                                </ul>
                            </div>
                            <!-- END Main Navigation -->
                        </div>
                    </div>
                @endif
                <!-- END Navigation -->
                <!-- Page Content -->
               @yield('content')
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            @include('superadmin.layouts.footer')
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->

        @include('superadmin.layouts.scripts')
        <script>
            $("#global-org-id").change(function(){
                var id = $(this).val();
                $.ajax({
                    url:"{{ url('superadmin/set-global-organization') }}/"+id,
                    success:function(){
                        window.location.reload();
                    }
                })
            });
        </script>
            <script>
                $(document).on('click', '.circle-img', function(){
                    $(".circle-img").removeClass('selected-img');
                    $(this).addClass('selected-img');
                    $("#logo-preview").attr('src', $(this).attr('src'));
                });
                $(document).on('click', '#upload-btn', function(){
                    $(".circle-img").removeClass('selected-img');
                    $("#select-img").trigger( "click" ); 
                });
            </script>
    </body>
</html>
