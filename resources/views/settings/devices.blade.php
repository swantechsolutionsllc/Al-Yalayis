<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.layouts.head')
    <style type="text/css">
        #pageloader
        {
          background: rgba( 255, 255, 255, 0.8 );
          display: none;
          height: 100%;
          position: fixed;
          width: 100%;
          z-index: 9999;
        }

        #pageloader img
        {
          left: 50%;
          margin-left: -32px;
          margin-top: -32px;
          position: absolute;
          top: 50%;
          height: 150px;
        }
    </style>
    
</head>
<body>
    <div id="pageloader">
        <img src="{{asset('admin-assets/img/loader.gif')}}" alt="processing..." />
    </div>
<div class="modal fade" id="addCity" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="block block-rounded block-themed block-transparent mb-0">
                <div class="block-header bg-primary-dark">
                    <h3 class="block-title">Settings Tab</h3>
                    
                </div>
                <div class="block-content font-size-sm">
                    <div class="block block-rounded">
                        <ul class="nav nav-tabs nav-tabs-alt" data-toggle="tabs" role="tablist">
                            
                            <li class="nav-item">
                                <a class="nav-link @if(! (isset($_GET['imei']) || isset($_GET['offline']) || isset($_GET['apk'])  || isset($_GET['update'])) ) active @endif" href="#btabs-alt-static-home">Lisence</a>
                            </li>
                            <li class="nav-item" >
                                <a class="nav-link @if(isset($_GET['imei'])) active @endif" href="#menu1">Single Device Lisence</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link @if(isset($_GET['offline'])) active @endif" href="#menu2">Offline Device Reg.</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link @if(isset($_GET['update'])) active @endif" href="#menu3">Update Device Reg.</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link @if(isset($_GET['apk'])) active @endif" href="#menu4">Upload Apk File</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link @if(isset($_GET['update_number'])) active @endif" href="#menu5">Update Existing Device No </a>
                            </li>
                        </ul>
                        <div class="block-content tab-content">
                            <div class="tab-pane @if(! (isset($_GET['imei'])   || isset($_GET['apk']) || isset($_GET['offline']) || isset($_GET['update']) || isset($_GET['update_number'])) ) active @endif" id="btabs-alt-static-home" role="tabpanel">
                                <form method="POST" action="{{url('device/license')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Lisence</h4>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for="val-username">Devices <span class="text-danger">*</span></label>
                                                <input  type="text"  name="count" value="{{old('count', $count->ds)}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>    
                            </div>
                            <div class="tab-pane  @if(isset($_GET['imei'])) active @endif" id="menu1" role="tabpanel">
                                <form method="POST" action="{{url('adddevice')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Single Device Lisence</h4>
                                    
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            @if(session()->has("success"))
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("failuer"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("failuer")}}</stong>
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
                                            <div class="form-group">
                                                <label for="val-username">DEVICE ID <span class="text-danger">*</span></label>
                                                <input type="text"  name="imei" value="" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Enter Expiry Date<span class="text-danger">*</span></label>
                                                <input id="orgName" type="date"  name="date" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane  @if(isset($_GET['offline'])) active @endif" id="menu2" role="tabpanel">
                                <form method="POST" action="{{url('adddevice-offline')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Offline Device Registration</h4>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            @if(session()->has("success"))
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("failuer"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("failuer")}}</stong>
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
                                            <div class="form-group">
                                                <label for="val-username">DEVICE ID <span class="text-danger">*</span></label>
                                                <input type="text"  name="imei" value="" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Enter Expiry Date<span class="text-danger">*</span></label>
                                                <input id="orgName" type="date"  name="date" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane  @if(isset($_GET['update'])) active @endif" id="menu3" role="tabpanel">
                                <form method="POST" action="{{url('update-device')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Update Device Lisence
                                    </h4>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            @if(session()->has("success"))
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("failuer"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("failuer")}}</stong>
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
                                            <div class="form-group">
                                                <label for="val-username">DEVICE ID <span class="text-danger">*</span></label>
                                                <input type="text"  name="imei" value="" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Enter Expiry Date<span class="text-danger">*</span></label>
                                                <input id="orgName" type="date"  name="date" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane  @if(isset($_GET['apk'])) active @endif" id="menu4" role="tabpanel">
                                <form method="POST" enctype="multipart/form-data" action="{{url('upload-apk')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Upload Apk File
                                    </h4>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            @if(session()->has("success"))
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("failuer"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("failuer")}}</stong>
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
                                            <div class="form-group">
                                                <label for="val-username">Select Apk File<span class="text-danger">*</span></label>
                                                <input type="file"  required accept=".apk" name="file"  class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Version<span class="text-danger">*</span></label>
                                                <input id="" type="text"required  name="version"  class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane  @if(isset($_GET['update_number'])) active @endif" id="menu5" role="tabpanel">
                                <form method="POST" action="{{url('update-device-number')}}">
                                    @csrf
                                    @method("POST")
                                    <h4>Update Device Lisence
                                    </h4>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            @if(session()->has("success"))
                                                <div class="alert alert-success">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("success")}}</stong>
                                                </div>
                                            @endif
                                            @if(session()->has("failuer"))
                                                <div class="alert alert-danger">
                                                    <button class="close" data-dismiss="alert"><i class="pci-cross pci-circle"></i></button>
                                                    <stong>{{session()->get("failuer")}}</stong>
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
                                            <div class="form-group">
                                                <label for="val-username">Old Device No<span class="text-danger">*</span></label>
                                                <input type="text"  autocomplete="off" name="imei" value=""   class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Old Device License Key<span class="text-danger">*</span></label>
                                                <input id="" type="text" required autocomplete="off" type="text"    class="form-control" name="lisence_key">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">New Device No<span class="text-danger">*</span></label>
                                                <input type="text"  autocomplete="off" name="new_imei" value=""   class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                                <input  type="text"  name="username" value="" class="form-control"
                                       >
                                            </div>
                                            <div class="form-group">
                                                <label for="val-username">Password <span class="text-danger">*</span></label>
                                                <input  type="password"  name="password"  class="form-control"
                                                >
                                            </div>
                                            <div class="form-group text-right">
                                                <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                        
                                            </div>
                                        </div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    
                                </form>
                            </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

@include('admin.layouts.scripts')
<script type="text/javascript">
    $("#addCity").modal({
        backdrop: 'static',
        keyboard: false
    });
</script>
</body>
</html>

