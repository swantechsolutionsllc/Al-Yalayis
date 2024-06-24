<style>
    img.brand-icon {
        height: 50px;
        width: 50px;
        margin-top: 5px;
    }
</style>
<header id="navbar">
    <div id="navbar-container" class="boxed">
        <div class="navbar-header">
            <a href="{{url('/')}}" class="navbar-brand">
                <div class="brand-title text-center">
                    <img src="{{asset('admin-assets/img/digital-signage-system.png')}}" width="200" height="200" class="brand-icon" style="background-color: #fff;" />
                </div>
            </a>
        </div>
        <div class="navbar-content">
            <ul class="nav navbar-top-links">
                <li class="tgl-menu-btn">
                    <a class="mainnav-toggle" href="#">
                        <i class="fa fa-bars"></i>
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-top-links">

                <li id="dropdown-user" class="dropdown">
                    <a href="#" data-toggle="dropdown">
                                <span class="ic-user pull-right">
                                    <i class="demo-pli-male"></i>
                                </span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right panel-default">
                        <ul class="head-list">
                            <li>
                                <a href="{{route('profile') }}"><i class="demo-pli-male icon-lg icon-fw"></i> Profile</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="{{ route('sa.logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    <i class="fa fa-lock"></i>
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('sa.logout') }}" method="POST"
                                      style="display: none;">
                                    @csrf
                                </form>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</header>
