@extends('master')
@section('content')
<div class="container detail">
    <div class="row my-3">
        <div class="col-md-6 detail-col margin">
            <img src="{{$product['gallery']}}" alt="" class="detail-img">
        </div>
        <style>
        .margin {
            border-right: 1px solid #000;
        }
        </style>
        <div class="col-md-6">
            <h3>{{$product['name']}}</h3>
            <br>
            <h4>Price : {{$product['price']}}</h4>
            <h4>Category : {{$product['category']}}</h4>
            <h4>Detail : {{$product['description']}}</h4>
            <br>
            <br>
            <form action="/addcart" method="post">
                @csrf
                <input type="hidden" name="prod_id" value={{$product['id']}}>
                <button class="btn btn-outline-danger mb-3">Add Card</button>
            </form>
        
                <a href="orderproduct/{{ $product['id'] }}">
                    <button class="btn btn-outline-primary" >Buy Now</button>
                </a>
            <br>
            <br>
            <a href="/" class="my-3">Go Back</a>
            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif
        </div>
    </div>
</div>
@endsection