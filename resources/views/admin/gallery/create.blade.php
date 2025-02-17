@extends('admin.layouts.master')
@section('pageTitle', 'Gallery')
@section('content')

<!-- Page Content -->
<div class="content">
    
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Upload new Files</h3>
        </div>
        <div class="block-content block-content-full">
            <h2 class="content-heading border-bottom mb-4 pb-2">You can upload multiple files</h2>
            <div class="row">
                <div class="col-lg-4">
                    <p class="font-size-sm text-muted">
                        Drag and drop files to upload
                    </p>
                </div>
                <div class="col-lg-8">
                    <!-- DropzoneJS Container -->
                    <form class="dropzone" method="post" action="{{ route('gallery.store') }}">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
    </div>   
    
</div>
@endsection
@section('js')
@endsection