@extends('layouts.admin_dashbord')

@section('admin-main')
<div class="container" style="padding:30px;">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-6">Add Slider</div>
                        <div class="col-md-6">
                            <a href="{{ route('homeslider.index') }}" class="btn btn-success pull-right">All
                                Sliders</a>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    @if (Session::has('message'))
                        <div class="alert alert-success" role="alert">
                            {{ Session::get('message') }}</div>
                    @endif
                    <form  action="{{ route('homeslider.store') }}" class="form-horizontal" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="title" class="col-md-4 control-label">
                                Title
                            </label>
                            <div class="col-md-4">
                                <input type="text" name="title" id="title" class="form-control input-md">
                                {{-- <span class="text-danger">@error('title'){{ $message }} @enderror</span> --}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="subtitle" class="col-md-4 control-label">
                                Subtitle
                            </label>
                            <div class="col-md-4">
                                <input type="text" name="subtitle" id="subtitle"
                                    class="form-control input-md">
                                {{-- <span class="text-danger">@error('subtitle'){{ $message }} @enderror</span> --}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="price" class="col-md-4 control-label">
                                Price
                            </label>
                            <div class="col-md-4">
                                <input type="number" name="price" id="price" class="form-control input-md">
                                {{-- <span class="text-danger">@error('price'){{ $message }} @enderror</span> --}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="link" class="col-md-4 control-label">
                                Link
                            </label>
                            <div class="col-md-4">
                                <input type="text" name="link" id="link" class="form-control input-md">
                                {{-- <span class="text-danger">@error('link'){{ $message }} @enderror</span> --}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="status" class="col-md-4 control-label">
                                Status
                            </label>
                            <div class="col-md-4">
                                <select name="status" id="status" name="status">
                                    <option value="1">In Stock</option>
                                    <option value="0">Out Of Stock</option>
                                </select>
                                {{-- <span class="text-danger">@error('status'){{ $message }} @enderror</span> --}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="image" class="col-md-4 control-label">
                                Image
                            </label>
                            <div class="col-md-4">
                                <input type="file" name="image" id="image" class="input-file" onchange="previewFile()">
                                {{-- <span class="text-danger">@error('image'){{ $message }} @enderror</span> --}}

                                    <img id="previewImg" src="http://new_project_laravel8.com:81/assets/images/products/blog_img2.jpg" alt="slider image" width="100">

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                                <button class="btn btn-primary " type="submit">
                                    Add
                                </button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

@endsection
@push('scripts')
<script>
        //{{-- for sho image befor uplode --}}
    function previewFile(input) {
        var file = $("input[type=file]").get(0).files[0];

        if (file) {
            var reader = new FileReader();

            reader.onload = function() {
                $("#previewImg").attr("src", reader.result);
            }

            reader.readAsDataURL(file);
        }
    }

</script>
@endpush
