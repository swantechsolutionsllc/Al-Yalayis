@extends('admin.layouts.master')
@section('pageTitle', 'Create Branch')
@section('content')

<!-- Page Content -->
<div class="content">
    
    <form class="js-validation" autocomplete="off" action="{{ url('branches') }}" method="POST">
        @csrf
        <div class="block block-rounded">
            <div class="block-header">
                <h3 class="block-title">Create Branch</h3>
            </div>
            <div class="block-content block-content-full">
                <!-- Regular -->
                <h2 class="content-heading border-bottom mb-4 pb-2">Basic Information</h2>
                <div class="row items-push">
                    <div class="col-lg-4">
                        
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="val-username">Branch Name <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch Name" id="demo-hor-inputemail"
                                               class="form-control" name="branch_name" {{old('branch_name')}}>
                            @error('branch_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Branch Code <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch Code" id="demo-hor-inputemail"
                            class="form-control" name="branch_code" {{old('branch_code')}}>
                            @error('branch_code')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Branch Manager's Name <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch Manager's Name" id="demo-hor-inputemail"
                            class="form-control"
                            name="branch_manager_name" {{old('branch_manager_name')}}>
                            @error('branch_manager_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Branch Contact No <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch Contact No" id="demo-hor-inputemail"
                            class="form-control"
                            name="branch_contact_no" {{old('branch_contact_no')}}>
                            @error('branch_contact_no')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Branch IT Support Name <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch IT Support Name" id="demo-hor-inputemail"
                            class="form-control"
                            name="branch_it_support_name" {{old('branch_it_support_name')}}>
                            @error('branch_it_support_name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
                        <div class="form-group">
                            <label for="val-username">Branch IT Support no <span class="text-danger">*</span></label>
                            <input type="text" placeholder="Branch IT Support No" id="demo-hor-inputemail"
                                               class="form-control"
                                               name="branch_it_support_no" {{old('branch_it_support_no')}}>
                            @error('branch_it_support_no')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                            
                        </div>
         
                       
                        
                    </div>
                </div>
                
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