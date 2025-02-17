@extends('superadmin.layouts.master')
@section('pageTitle', 'Create Organization')
@section('styles')
   
@endsection
@section('content')

<!-- Page Content -->
<div class="content">
    
    <form class="js-validation" autocomplete="off" action="{{ route('superadmin.organizations.store') }}" enctype="multipart/form-data" method="POST">
        @csrf
        <div class="block block-rounded">
            <div class="block-header">
                <h3 class="block-title">Create Organization</h3>
            </div>
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Basic Information</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="val-username">Organization Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" value="{{ old('name') }}" id="val-username" name="name" placeholder="Enter Org Name">
                            @error('name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label class="d-block" for="val-email">Organization  Logo<span class="text-danger">*</span></label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="example-radios-inline1" name="logoselected" value="assets/media/various/ecom_product1.png" checked>
                                <label class="form-check-label" for="example-radios-inline1"><img class="selected-img circle-img" src="{{ asset('assets/media/various/ecom_product1.png') }}"></label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="example-radios-inline2" name="logoselected" value="assets/media/various/ecom_product2.png">
                                <label class="form-check-label" for="example-radios-inline2"><img class="circle-img" src="{{ asset('assets/media/various/ecom_product2.png') }}"></label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="example-radios-inline3" name="logoselected" value="assets/media/various/ecom_product3.png">
                                <label class="form-check-label" for="example-radios-inline3"><img class="circle-img" src="{{ asset('assets/media/various/ecom_product3.png') }}"></label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="example-radios-inline4" name="logoselected" value="assets/media/various/ecom_product1.png">
                                <label class="form-check-label" for="example-radios-inline4"><img class="circle-img" src="{{ asset('assets/media/various/ecom_product1.png') }}"></label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="example-radios-inline5" name="logoselected" value="assets/media/various/ecom_product1.png">
                                <label class="form-check-label" for="example-radios-inline5"><img class="circle-img" src="{{ asset('assets/media/various/ecom_product1.png') }}"></label>
                            </div>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label" for="example-radios-inline5"><span id="upload-btn"><i class="fa fa-plus"></i></span></label>
                            </div>
                            <input style="display: none;" type="file" accept="image/*" onchange="document.getElementById('logo-preview').src = window.URL.createObjectURL(this.files[0])" id="select-img" class="form-control" id="val-email" name="logo">
                            <br><br>
                            <img id="logo-preview" src="{{ asset('assets/media/various/ecom_product1.png') }}" style="max-width:100%;max-height:100px;">
                            @error('logo')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-select2">Country <span class="text-danger">*</span></label>
                            <select class="js-select2 form-control" id="val-select2" name="country" style="width: 100%;" data-placeholder="Choose one..">
                                <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                @foreach ($countries as $count)
                                <option value="{{ $count->id }}" {{ old('country')== $count->id?'selected':''}}>{{ $count->name }}</option>
                            @endforeach
                            </select>
                            @error('country')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        
                    </div>
                </div>
                <!-- END Regular -->

                <!-- Advanced -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Organization Admin Details</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        <p class="font-size-sm text-muted">
                            You can easily validate any kind of data you like either it is in a normal input, a textarea or a select box
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="val-currency">Organization Admin Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" value="{{ old('admin_name') }}" id="val-currency" name="admin_name" placeholder="Enter Admin Name">
                            @error('admin_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-website">Organization Admin Email <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" value="{{ old('admin_email') }}" id="val-website" name="admin_email" placeholder="Enter Admin Email">
                            @error('admin_email')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        {{-- <div class="form-group">
                            <label for="val-phoneus">Admin Avtar <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="val-phoneus" name="admin_avtar" placeholder="212-999-0000">
                            @error('admin_avtar')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div> --}}
                        <div class="form-group">
                            <label for="val-digits">Organization Admin Password <span class="text-danger">*</span></label>
                            <input type="password" class="form-control" value="{{ old('admin_password') }}" id="val-digits" name="admin_password" placeholder="Enter Admin Password">
                            @error('admin_password')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        
                    </div>
                </div>
                <!-- END Advanced -->

                <!-- Third Party Plugins -->
                {{-- <h2 class="content-heading border-bottom mb-4 pb-2">Organization Roles</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        <p class="font-size-sm text-muted">
                            Check out how easy it is to enable the validation on third party plugins such as Select2
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                       
                        <div class="form-group">
                            <label for="val-select2-multiple">Roles <span class="text-danger">*</span></label>
                            <select class="js-select2 form-control" id="val-select2-multiple" name="roles[]" style="width: 100%;" data-placeholder="Choose Roles" multiple>
                                <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                @foreach ($roles as $role)
                                    <option value="{{ $role->id }}" {{old('roles') && in_array($role->id, old('roles'))?'selected':'' }} >{{ $role->name }}</option>
                                @endforeach
                            </select>
                            @error('roles')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                    </div>
                </div> --}}
                <!-- END Third Party Plugins -->

                <!-- Submit -->
                <div class="row items-push">
                    <div class="col-lg-7 offset-lg-4">
                        <button type="submit" class="btn btn-alt-primary">Submit</button>
                    </div>
                </div>
                <!-- END Submit -->
            </div>
        </div>
    </form>
    <!-- jQuery Validation -->
</div>
@endsection
@section('js')

@endsection