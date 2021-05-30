<?php

namespace App\Http\Controllers;

use App\Helpers\Myhelper;
use App\Models\Product;
use Hamcrest\Core\AllOf;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $first = $request->first;
        $second = $request->second;
        $sorting =$request->sorting;
        // $first=Myhelper::minPrice();
        // $second=Myhelper::maxPrice();
        if ($request->sorting=='low') {
             $products = Product::orderBy('regular_price','ASC')->paginate(100);
           // dd("low");
        }elseif ($request->sorting=='high') {
             $products = Product::orderBy('regular_price','DESC')->paginate(100);

            // dd("high");
        }elseif ($request->first) {

            $products = Product::whereBetween('regular_price', [$first, $second ])->paginate(100);
            // dd($request);
        }else {

          $products = Product::paginate(6);
        }




        // if ($this->sorting=='date') {
        //     $products = Product::orderBy('created_at','DESC')->paginate($this->pagesize);

        // }elseif($this->sorting=='price'){
        //     $products = Product::orderBy('regular_price','ASC')->paginate($this->pagesize);
        // }elseif ($this->sorting=='price-desc') {
        //     $products = Product::orderBy('regular_price','DESC')->paginate($this->pagesize);
        // }else {
        //     $products = Product::paginate($this->pagesize);
        // }










        return view('Shop', ['products' => $products,'first'=>$first,'second'=>$second,'sorting'=>$sorting]);
    }




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
    public function store()
    {
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
