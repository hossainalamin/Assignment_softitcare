@extends('master')
@section('content')
<div class="container">
    <div class="cart-product">
        <div class="cart-product my-3">
            <h3 class="text-center font-italic my-2 bg-dark py-3 text-light">Order Item</h3>
            @foreach($orders as $get_order)
            <div class="row">
                <div class="col-md-3">
                    <img class="trending-image" src="{{$get_order->gallery}}" alt="">
                </div>
                <div class="col-md-6">                        <div>
                            <h3 class="cart-item">{{$get_order->name}}</h3>
                            <p class="cart-item">Status : {{$get_order->status}}</p>
                            <p class="cart-item">Payment Method : {{$get_order->payment_method}}</p>
                            <p class="cart-item">Payment Status : {{$get_order->payment_status}}</p>
                        </div>
                </div>
                <span class="br-3"></span>
            </div>
            <hr>
            @endforeach
        </div>
    </div>
</div>
@endsection