<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SaleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sale = DB::table('sales')->first();
      // dd($sale->status);

          return view('admin.sale.admin-sale',['sale'=>$sale]);


    }

    // public $sale_date;
    // public $status;

    // public function mount(){
    //     $sale = Sale::find(1);
    //     $this->sale_date = $sale->sale_date;
    //     $this->status = $sale->status;
    // }
    // public function updateSale(){
    //     $sale = Sale::find(1);
    //     $sale->sale_date = $this->sale_date;
    //     $sale->status = $this->status;
    //     $sale->save();
    //     session()->flash('message','Sale Settings Updated Successfully');
    // }

    public function update(Request $request)
    {
        //dd($request->id);
        $sale = Sale::find($request->id);
        $sale->sale_date = $request->sale_date;
        $sale->status = $request->status;
        $sale->save();
        session()->flash('message','Sale Settings Updated Successfully');
        return redirect()->route('home');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sale $sale)
    {
        //
    }
}
