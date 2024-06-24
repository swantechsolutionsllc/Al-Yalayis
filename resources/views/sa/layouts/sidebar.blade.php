{{--@include('admin.layouts.head')--}}
<nav id="mainnav-container">
    <div id="mainnav">
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content">
                    <div id="mainnav-profile" class="mainnav-profile">
                        <div class="profile-wrap text-center">
                            <div class="pad-btm">
                                <img class="img-circle img-md" src="{{asset('admin-assets/img/profile-photos/1.png')}}"
                                     alt="Profile Picture">
                            </div>
                            <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
                                <p class="mnp-name">{{Auth::guard('sa')->user()->name}}</p>
                                <span class="mnp-desc">{{Auth::user()->email}}</span>
                            </a>
                        </div>
                    </div>

                    <div id="mainnav-shortcut" class="hidden">
                        <ul class="list-unstyled shortcut-wrap">
                            <li class="col-xs-3" data-content="My Profile">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-mint">
                                        <i class="demo-pli-male"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Messages">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-warning">
                                        <i class="demo-pli-speech-bubble-3"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Activity">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-success">
                                        <i class="demo-pli-thunder"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Lock Screen">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-purple">
                                        <i class="demo-pli-lock-2"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <ul id="mainnav-menu" class="list-group">
                        <li class="list-header">Navigation</li>
                        <li class="{{Request::is('/') ? 'active-sub' : ''}}">
                            <a href="{{route('sa.dashboard')}}">
                                <i class="fa fa-home"></i>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="{{Request::is('devices') || Request::is('devices/*') ? 'active-sub' : ''}}">
                            <a href="{{route('sa.dashboard')}}">
                                <i class="fa fa-tablet-alt"></i>
                                <span class="menu-title">Device
{{--                                    <span class="pull-right badge badge-info">{{Session::get('devices')}}</span>--}}
                                </span>
                            </a>
                        </li>
                                            </ul>
                </div>
            </div>
            s
        </div>
    </div>
</nav>
