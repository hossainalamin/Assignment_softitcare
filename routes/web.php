<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;
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
    return view('home');
});
Route::get('/orderproduct', function () {
    return view('orderproduct');
});
Route::view('/login','login');
// Route::view('/phone-verify','verify');
Route::get('/logout',function(){
    session()->pull('phoneverify');
    return view('login');
});

//route for the controllers
//login
Route::post('/login',[UserController::class,'login']);
Route::post('/verify',[UserController::class,'postVerify']);
//product controller
Route::get('/',[ProductController::class,'getAllProduct']);
Route::get("detail/{id}",[ProductController::class,"detail"])->where('id','[0-9]+');
Route::post("addcart",[ProductController::class,"addCart"]);
Route::get("cartlist",[ProductController::class,"cartList"]);
Route::get("removecart/{id}",[ProductController::class,"removeCart"])->where('id','[0-9]+');
Route::get("ordernow",[ProductController::class,"orderCart"]);
Route::post("placeorder",[ProductController::class,"placeOrder"]);
Route::post("orderconfirm",[ProductController::class,"orderConfirm"]);
Route::get("detail/orderproduct/{id}",[ProductController::class,"orderProduct"])->where('id','[0-9]+');
Route::get('/myorders',[ProductController::class,'myOrders']);
