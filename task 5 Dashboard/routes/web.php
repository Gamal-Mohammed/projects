<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Products\ProductsController;
use App\Http\Controllers\Products\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('dashboard')->middleware('verified')->name('dashboard')->group(function(){
    Route::get('/',[DashboardController::class,'index']);

    Route::prefix('products')->controller(ProductsController::class)->name('.products.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::get('/{id}/edit','edit')->name('edit');
        Route::post('/store','store')->name('store');
        Route::put('/{id}/update','update')->name('update');
        Route::delete('/{id}/destroy','destroy')->name('destroy');
    });

});

Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
