<?php

namespace App\Http\Controllers\Apis;

use App\Models\Brand;
use App\Models\Product;
use App\Services\Media;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Traits\ApiResponses;

class ProductsController extends Controller
{
    use ApiResponses;

    public function index()
    {
        $products = prodacts::all();
        return $this->data(compact('products'));
    }

    public function create()
    {
        $brands = brands::select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('name_ar')->orderBy('id')->get();
        $subcategories = subcatogres::select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('name_ar')->orderBy('id')->get();
        return $this->data(compact('brands','subcategories'));
    }

    public function edit($id)
    {
        $product = prodacts::find($id);
        $brands = brands::select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        $subcategories = subcatogres::select('id','name_en','name_ar')->orderBy('name_en')
        ->orderBy('id')->get();
        return $this->data(compact('product','brands','subcategories'));
    }


    public function store(StoreProductRequest $request)
    {
        $data = $request->except('image');
        $data['image'] = Media::upload($request->image,'product');
        prodacts::create($data);
        return $this->success("Product Created Successfully",201);
    }

    public function delete($id)
    {
        $product = prodacts::find($id);
        Media::delete('product',$product->image);
        $product->delete();
        return $this->success("Product Deleted Successfully");
    }


    public function update(UpdateProductRequest $request,$id)
    {
        $data = $request->except('_token','image','_method');
        $product = prodacts::find($id);
        if($request->has('image')){
            Media::delete('product',$product->image);
            $data['image'] = Media::upload($request->image,'product');
        }
        $product->update($data);
        return $this->success("Product Updated Successfully",201);
    }
}
