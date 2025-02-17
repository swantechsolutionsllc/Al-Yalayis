@section('pageTitle')Login @endsection
<!doctype html>
<html lang="en">
    <head>
        @include('admin.layouts.head')
    </head>
    <body>
        <div id="page-container">

            <!-- Main Container -->
            <main id="main-container">
                <!-- Page Content -->
                <div class="hero-static">
                    <div class="content">
                        <div class="row justify-content-center">
                            <div class="col-md-8 col-lg-6 col-xl-4">
                                <!-- Sign In Block -->
                                <div class="block block-rounded block-themed mb-0">
                                    <div class="block-header bg-primary-dark">
                                        <h3 class="block-title">Sign In</h3>
                                        <div class="block-options">
                                            <a class="btn-block-option font-size-sm" href="op_auth_reminder.html">Forgot Password?</a>
                                        </div>
                                    </div>
                                    <div class="block-content">
                                        <div class="p-sm-3 px-lg-4">
                                            <img src="{{asset('admin-assets/img/1-logo-Centre-Stage.png')}}" style="max-width:100%; padding-bottom:20px;">
                                            @if(session()->has("success"))
                                            
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("error"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("error")}}</stong>
                                                </div>
                                            @endif
                                            @if ($errors->any())
                                                <div class="alert alert-danger">
                                                    <ul>
                                                        @foreach ($errors->all() as $error)
                                                            <li>{{ $error }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            @endif

                                            <!-- Sign In Form -->
                                            <!-- jQuery Validation (.js-validation-signin class is initialized in js/pages/op_auth_signin.min.js which was auto compiled from _es6/pages/op_auth_signin.js) -->
                                            <!-- For more info and examples you can check out https://github.com/jzaefferer/jquery-validation -->
                                            <form class="js-validation-signin"  method="POST" action="{{route('superadmin.login')}}">
                                                @csrf
                                                <div class="py-3">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="email" placeholder="Username">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="password" class="form-control form-control-alt form-control-lg" id="login-password" name="password" placeholder="Password">
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="login-remember" name="login-remember">
                                                            <label class="custom-control-label font-w400" for="login-remember">Remember Me</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-md-6 col-xl-5">
                                                        <button type="submit" class="btn btn-block btn-alt-primary">
                                                            <i class="fa fa-fw fa-sign-in-alt mr-1"></i> Sign In
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                            <!-- END Sign In Form -->
                                        </div>
                                    </div>
                                </div>
                                <!-- END Sign In Block -->
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->
        </div>
        @include('admin.layouts.scripts')
    </body>
</html>