<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\HomeCategory;
use App\Models\HomeSlider;
use App\Models\Product;
use App\Models\Sale;
use App\Repositories\ProducteRepository;
use Cart;
//use Gloudemans\Shoppingcart\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    protected $ProducteRepository;

    public function __construct(ProducteRepository $ProducteRepository)
    {
        $this->ProducteRepository = $ProducteRepository;
    }

    public function index()
    {

        // dd($homeCategory, $cats, $categories);

        //$categories = Category::latest()->paginate(4);
        $Featured_producte = Product::where('featured', 1)->get();
        $sliders = HomeSlider::get();
        $homeCategory = HomeCategory::find(1);
        $cats = explode(',', $homeCategory);
        $categories = Category::whereIn('id', $cats)->get();
        $products_no = $homeCategory->products_no;
        $products_sale = Product::where('sale_price', '>', 0)
            ->inRandomOrder()
            ->get()
            ->take(8);
            $sale = DB::table('sales')->first();
       // dd($sale);
       // dd($products_sale);

        return view('index', [
            'categories' => $categories,
            'sale' => $sale,
            'Featured_producte' => $Featured_producte,
            'products_no' => $products_no,
            'products_sale' => $products_sale,
            'sliders' => $sliders,
        ]);
    }


    public function details($slug)
    {
        //$slug;
        $product = Product::where('slug', $slug)->first();
        //$sale = Sale::find(1);
        $sale = DB::table('sales')->first();

        $related_products = Product::where('category_id', $product->category_id)
            ->inRandomOrder()
            ->limit(5)
            ->get();
        return view('details', [
            'product' => $product,
            'sale' => $sale,
            'related_products' => $related_products,
        ]);
    }

    public function index_cart()
    {
        return view('cart');
    }

    public function increaseQuantity($rowId)
    {

        dd($rowId);
    }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', '  Item added in Cart');
        return redirect()->route('product.cart');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store_aa(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
