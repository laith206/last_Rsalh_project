<?php

namespace App\Repositories;

use App\Models\Sale;
use App\Models\Category;
use App\Models\HomeSlider;
use Illuminate\Support\Str;
use App\Models\HomeCategory;
use App\Models\Product;
use App\Repositories\AllInterface;

class ProducteRepository implements AllInterface
{

    public function all()
    {
        return  $products = Product::orderBy('created_at', 'DESC')->paginate(10);
    }
    public function find($id)
    {

        return $product = Product::where('id', $id)->first();
    }
    public function store(object $data)
    {
        $data->validate([
            'name' => 'required',
            'regular_price' => 'required|numeric',
            'sale_price' => 'required|numeric',
            'short_description' => 'required',
            'description' => 'required',
            'quantity' => 'required|numeric',
            'featured' => 'required',
            'stock_status' => 'required',
            'image' => 'required|image',
            'category_id' => 'required',
        ]);
        $photo = $data->file('image');
        $newPhoto = time() . $photo->getClientOriginalName();
        $photo->move('assets/images/products', $newPhoto);


        $slug = Str::slug($data->name, '-');
        $product = Product::create([
            'name' => $data->name,
            'slug' =>  $slug,
            'short_description' => $data->short_description,
            'description' => $data->description,
            'regular_price' => $data->regular_price,
            'sale_price' => $data->sale_price,
            'SKU' => $data->SKU,
            'stock_status' => $data->stock_status,
            'featured' => $data->featured,
            'quantity' => $data->quantity,
            'image' =>  $newPhoto,
            'category_id' => $data->category_id,

            // $imageName = time() . '.' . $data->image->extension(),
            // / $data->image->storeAs('products', $imageName),
        ]);
        return true;
    }
    public function update($id, object $data)
    {


        //   dd($data);
        $product = Product::find($id);
        // $this->validate($data, [
        //     'name' =>  'required',
        //]);


        $newPhoto = "";
        if ($data->hasFile('image')) {
            unlink(public_path('assets/images/products') . '/' . $product->image);

            $photo = $data->file('image');
            $newPhoto = time() . $photo->getClientOriginalName();
            $photo->move('assets/images/products', $newPhoto);
        } else {
            $newPhoto = $product->image;
        }

        $slug = Str::slug($data->name, '-');
        $product->name = $data->name;
        $product->slug = $slug;
        $product->short_description = $data->short_description;
        $product->description = $data->description;
        $product->regular_price = $data->regular_price;
        $product->sale_price = $data->sale_price;
        $product->SKU = $data->SKU;
        $product->stock_status = $data->stock_status;
        $product->featured = $data->featured;
        $product->quantity = $data->quantity;
        $product->image = $newPhoto;
        $product->category_id = $data->category_id;
        $product->save();
        return $product;
        // return redirect()->back() ;
        //  return dd($product);

        //dd($product);

    }
    public function delete($id): void
    {
        $product = Product::where('id', $id);
        $product->delete();
    }
}
