@extends('layouts.admin_dashbord')

@section('admin-main')



    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">Add Product</div>
                            <div class="col-md-6">
                                <a href="{{ route('products.index') }}" class="btn btn-success pull-right">All Products</a>
                            </div>

                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <form action="{{route('products.store')}}" class="form-horizontal" enctype="multipart/form-data" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="productName" class="col-md-4 control-label">
                                    Product Name
                                </label>
                                <div class="col-md-4">
                                    <input type="text"  name="name" id="productName"
                                        class="form-control input-md">

                                    <span class="text-danger">@error('name'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="productSlug" class="col-md-4 control-label">
                                    Product Slug
                                </label>
                                <div class="col-md-4">
                                    <input disabled type="text" name="slug" id="productSlug" class="form-control input-md">
                                    <span class="text-danger">@error('slug'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="short_description" class="col-md-4 control-label">
                                    Short Description
                                </label>
                                <div class="col-md-4" >
                                    <textarea type="text" name="short_description" class="form-control input-md"
                                        id="short_description"></textarea>
                                    <span class="text-danger">@error('short_description'){{ $message }}
                                        @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-md-4 control-label">
                                    Description
                                </label>
                                <div class="col-md-4" >
                                    <textarea type="text" name="description" id="description"
                                        class="form-control input-md"></textarea>
                                    <span class="text-danger">@error('description'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-md-4 control-label">
                                    Product Price
                                </label>
                                <div class="col-md-4">
                                    <input type="number" name="regular_price" id="price"
                                        class="form-control input-md">
                                    <span class="text-danger">@error('price'){{ $message }} @enderror</span>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="salePrice" class="col-md-4 control-label">
                                    Sale Price
                                </label>
                                <div class="col-md-4">
                                    <input type="number" name="sale_price" id="salePrice"
                                        class="form-control input-md">
                                    <span class="text-danger">@error('sale_price'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="salePrice" class="col-md-4 control-label">SKU</label>
                                <div class="col-md-4">
                                    <input type="text" name="SKU" id="salePrice"
                                        class="form-control input-md">
                                    <span class="text-danger">@error('sale_price'){{ $message }} @enderror</span>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stock" class="col-md-4 control-label"> Stock Status </label>
                                <div class="col-md-4">
                                    <select name="stock_status" id="stock" >
                                        <option value="instock">InStock</option>
                                        <option value="outofstock">Out Of Stock</option>
                                    </select>
                                    <span class="text-danger">@error('stock_status'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="featured" class="col-md-4 control-label">
                                    Featured
                                </label>
                                <div class="col-md-4">
                                    <select name="featured" id="featured" >
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                    <span class="text-danger">@error('featured'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="quantity" class="col-md-4 control-label">
                                    Quantity
                                </label>
                                <div class="col-md-4">
                                    <input type="number" name="quantity" id="quantity"
                                        class="form-control input-md">
                                    <span class="text-danger">@error('quantity'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="image" class="col-md-4 control-label">
                                    Image
                                </label>
                                <div class="col-md-4">
                                    <input type="file" name="image" id="image" onchange="previewFile(this);" class="input-file">
                                    <span class="text-danger">@error('image'){{ $message }} @enderror</span>
                                    <img id="previewImg" src="http://new_project_laravel8.com:81/assets/images/products/blog_img2.jpg"  alt="product image" width="120">

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="category" class="col-md-4 control-label">
                                    Category
                                </label>
                                <div class="col-md-4">
                                    <select  id="category" name="category_id">
                                        <option value="">Select Category</option>
                                        {{-- @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @empty
                                                <option value="">No Categories Found</option>
                                        @endforelse --}}

                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>

                                        @endforeach
                                    </select>
                                    <span class="text-danger">@error('category_id'){{ $message }} @enderror</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button class="btn btn-primary" name="submit" type="submit">
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




{{-- @push('scripts')
    <script>
        $(function() {
            tinymce.init({
                selector: '#short_description',
                setup: function(editor) {
                    editor.on('change', function(e) {
                        tinyMCE.triggerSave();
                        sd_data = $('#short_description').val();
                        @this.set('short_description', sd_data);
                    });
                }
            });
            tinymce.init({
                selector: '#description',
                setup: function(editor) {
                    editor.on('change', function(e) {
                        tinyMCE.triggerSave();
                        d_data = $('#description').val();
                        @this.set('description', d_data);
                    });
                }
            });
        });

    </script>
@endpush --}}


@endsection
@push('scripts')
{{-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> --}}

<script>
    function previewFile(input){
        var file = $("input[type=file]").get(0).files[0];

        if(file){
            var reader = new FileReader();

            reader.onload = function(){
                $("#previewImg").attr("src", reader.result);
            }

            reader.readAsDataURL(file);
        }
    }
</script>
@endpush
