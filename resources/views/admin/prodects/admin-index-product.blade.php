@extends('layouts.admin_dashbord')
<?php use App\Helpers\Myhelper; ?>

@section('admin-main')

    <div class="container" style="padding:30px;">

        <div class="row">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class=" col-md-6">
                            <h2>All products</h2>
                        </div>
                        <div class="col-md-6">
                            <a href="{{ route('products.create') }}" class="btn btn-success pull-right ">Add
                                product</a>
                        </div>
                        <div class="col-md-6">
                        </div>

                    </div>

                </div>
                <div class="panel-body">
                    @if (Session::has('message'))
                        <div class="alert alert-success" role="alirt">{{ session::get('message') }}</div>
                    @endif
                    <div class="col-md-12 mx auto">
                        <div class="border my-3">
                            <table class="table  table-dark">
                                <thead>
                                    <tr class=" text-dark bg-light border border-info ">
                                        <th scope="col">id</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Stock</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Edit</th>
                                        <th scope="col">Delet</th>

                                    </tr>

                                </thead>
                                <tbody>
                                    @foreach ($products as $product)
                                        <tr>
                                            <th scope="row">{{ $product->id }}</th>
                                            <td><img src="{{ asset('assets/images/products') }}/{{ $product->image }}"
                                                    width="60"></td>
                                            <td>{{ $product->name }}</td>
                                            <td>{{ $product->stock_status }}</td>
                                            <td>{{ $product->regular_price }}</td>
                                            <td>{{ $product->category->name }}</td>
                                            <td>{{ $product->created_at }}</td>
                                            <td class=" text-end">
                                                <a href="{{ route('products.edit', ['product' => $product->id]) }}"><i
                                                        class="fa fa-edit fa-2x text-info"></i></a>
                                            </td>
                                            <td>
                                                <form
                                                    action="{{ route('products.destroy', ['product' => $product->id]) }}"
                                                    method="POST">
                                                    @method('Delete')
                                                    @csrf
                                                    <button onclick="confirm('Are you sure, you want to delete this product') || event.stopImmediatePropagation()" type="submit" class="fa fa-trash fa-2x text-danger">
                                                        <i class="icon-circle-arrow-right icon-large"></i>
                                                    </button>
                                                </form>
                                            </td>


                                        </tr>
                                    @endforeach


                                </tbody>
                            </table>
                            <div class="wrap-pagination-info">
                                {{ $products->links() }}


                            </div>



                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    @livewireScripts
@endsection
