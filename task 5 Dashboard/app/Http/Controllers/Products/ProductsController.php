<?php

namespace App\Http\Controllers\Products;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Services\Media;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function store(Request $request)
    {
        $data = $request->except('_token','image');
        $request->validate([
            'name_en'=>['required','max:255'],
            'name_ar'=>['required','max:255'],
            'price'=>['required','numeric','between:1,999999.99'],
            'quintty'=>['nullable','integer','between:1,999'],
            'status'=>['nullable','in:0,1'],
            'code'=>['required','integer','digits:6','unique:products,code'],
            'details_en'=>['required'],
            'details_ar'=>['required'],
            'brand_id '=>['nullable','integer','exists:brands,id'],
            'subcat_id '=>['required','integer','exists:subcategories,id'],
            'image'=>['required','max:1024','mimes:jpg,jpeg,png']
        ]);
       
        $photoName = $request->image->hashName();
        $photoPath = public_path('images\product');
        $request->image->move($photoPath,$photoName);
        $data['image'] = $photoName;
       
        DB::table('prodacts')->insert($data);
       
        return redirect()->back()->with('success','Product Created Successfully');
    }

}
