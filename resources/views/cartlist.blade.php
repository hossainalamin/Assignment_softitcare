<?php
use App\Http\Controllers\ProductController;
$total = 0;
if(Session::has('phoneverify')){
$total  = ProductController::cartItem();
}
?>
@extends('master')
@section('content')
<div class="container">
    <div class="cart-product">
        <div class="cart-product my-3">
            <h3 class="text-center font-italic my-2 bg-dark py-3 text-light">Cart Item</h3>
            @foreach($products as $item)
            <div class="row">
                <div class="col-md-3">
                    <img class="trending-image" src="{{$item->gallery}}" alt="">
                </div>
                <div class="col-md-6">
                    <a href="detail/{{$item->id}}">
                        <div>
                            <p class="cart-item">{{$item->name}}</p>
                            <p class="cart-item">{{$item->description}}</p>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="/removecart/{{$item->cart_id}}" class="btn btn-outline-warning">Remove</a>
                </div>
                <span class="br-3"></span>
            </div>
            <hr>
            @endforeach
            @if($total !=0)
                <a href="/ordernow" class="btn btn-success my-3">Checkout</a>
            @endif
        </div>
    </div>
</div>
@endsection