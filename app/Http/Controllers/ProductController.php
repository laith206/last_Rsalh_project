<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Repositories\ProducteRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class ProductController extends Controller
{
    protected $ProducteRepository;

    public function __construct(ProducteRepository $ProducteRepository)
    {
        $this->ProducteRepository = $ProducteRepository;
    }



    public function index()
    {
        //$products = Product::all();
        $products = $this->ProducteRepository->all();
        // dd($products);

        return view('admin.prodects.admin-index-product', compact('products'));
    }


    public function create()
    {
        $categories = Category::all();

        return view('admin.prodects.admin-add-product', compact('categories'));
    }


    public function store(Request $request)
    {
        $this->ProducteRepository->store($request);
        session()->flash('message', 'Product Added Successfully!');
        return redirect()->route('products.index');
    }


    public function show($product)
    {

    }


    public function edit($id)
    {
        $product = $this->ProducteRepository->find($id);
        $categories = Category::all();
        return view('admin.prodects.admin-edit-product', compact('product', 'categories'));
    }


    public function update(Request $request, $id)
    {
        $this->ProducteRepository->update($id, $request);
        session()->flash('message', 'Product updated Successfully!');
        return redirect()->route('products.index');

    }


    public function destroy($id)
    {
        $this->ProducteRepository->delete($id);
        session()->flash('message', 'Product has delete Successfully!');
        return redirect()->back();

    }
}
