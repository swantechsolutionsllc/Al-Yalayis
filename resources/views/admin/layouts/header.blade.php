<header id="page-header">
    <!-- Header Content -->
    <div class="content-header">
        <!-- Left Section -->
        <div class="d-flex align-items-center">
            <!-- Logo -->
            <a class="font-w600 font-size-h5 tracking-wider text-dual mr-3" href="{{ url('/') }}" style="padding-top:3px;">
                <img src="{{ asset('admin-assets/img/logo-Centre-Stage-white.png') }}" height="50px; max-width:100%;">
            </a>
            <!-- END Logo -->

            <!-- Notifications Dropdown -->
            
            <!-- END Notifications Dropdown -->
        </div>
        <!-- END Left Section -->

        <!-- Right Section -->
        <div class="d-flex align-items-center">
            <!-- Open Search Section (visible on smaller screens) -->
            <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
            <button type="button" class="btn btn-sm btn-dual d-md-none" data-toggle="layout" data-action="header_search_on">
                <i class="fa fa-fw fa-search"></i>
            </button>
            <!-- END Open Search Section -->

            <!-- Search Form (visible on larger screens) -->
            <form class="d-none d-md-inline-block" action="bd_search.html" method="POST">
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control form-control-alt" placeholder="Search.." id="page-header-search-input2" name="page-header-search-input2">
                    <div class="input-group-append">
                        <span class="input-group-text bg-body border-0">
                            <i class="fa fa-fw fa-search"></i>
                        </span>
                    </div>
                </div>
            </form>
            <!-- END Search Form -->

            <!-- User Dropdown -->
            <div class="dropdown d-inline-block ml-2">
                <button type="button" class="btn btn-sm btn-dual" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded" src="{{ asset('assets/media/avatars/avatar10.jpg') }}" alt="Header Avatar" style="width: 21px;">
                    <span class="d-none d-sm-inline-block ml-1">{{ auth()->user()->name }}</span>
                    <i class="fa fa-fw fa-angle-down d-none d-sm-inline-block"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-md dropdown-menu-right p-0 border-0" aria-labelledby="page-header-user-dropdown">
                    <div class="p-3 text-center bg-primary-dark rounded-top">
                        <img class="img-avatar img-avatar48 img-avatar-thumb" src="{{ asset('assets/media/avatars/avatar10.jpg') }}" alt="">
                        <p class="mt-2 mb-0 text-white font-w500">{{ auth()->user()->name }}</p>
                        <p class="mb-0 text-white-50 font-size-sm">{{auth()->user()->is_super == false ? "User" : "Super Admin"}}</p>
                    </div>
                    <div class="p-2">
                        <a class="dropdown-item d-flex align-items-center justify-content-between" id="check-availablity" href="javascript:void(0)">
                            <span class="font-size-sm font-w500">Heart Beat Status</span>
                        </a>
                        <div role="separator" class="dropdown-divider"></div>
                        <a class="dropdown-item d-flex align-items-center justify-content-between" id="" href="{{route('admin.publish-content')}}">
                            <span class="font-size-sm font-w500">Publish Content</span>
                        </a>
                        <div role="separator" class="dropdown-divider"></div>
                        
                        <a class="dropdown-item d-flex align-items-center justify-content-between" href="#">
                            <span class="font-size-sm font-w500">Lock Account</span>
                        </a>
                        <a class="dropdown-item d-flex align-items-center justify-content-between" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                          document.getElementById('logout-form').submit();">
                            <span class="font-size-sm font-w500">Log Out</span>
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                      style="display: none;">
                                    @csrf
                                </form>
                    </div>
                </div>
            </div>
            <!-- END User Dropdown -->
        </div>
        <!-- END Right Section -->
    </div>
    <!-- END Header Content -->

    <!-- Header Search -->
    <div id="page-header-search" class="overlay-header bg-white">
        <div class="content-header">
            <form class="w-100" action="bd_search.html" method="POST">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <button type="button" class="btn btn-alt-danger" data-toggle="layout" data-action="header_search_off">
                            <i class="fa fa-fw fa-times-circle"></i>
                        </button>
                    </div>
                    <input type="text" class="form-control" placeholder="Search or hit ESC.." id="page-header-search-input" name="page-header-search-input">
                </div>
            </form>
        </div>
    </div>
    <!-- END Header Search -->

    <!-- Header Loader -->
    <!-- Please check out the Loaders page under Components category to see examples of showing/hiding it -->
    <div id="page-header-loader" class="overlay-header bg-primary-lighter">
        <div class="content-header">
            <div class="w-100 text-center">
                <i class="fa fa-fw fa-circle-notch fa-spin text-primary"></i>
            </div>
        </div>
    </div>
    <!-- END Header Loader -->
</header>