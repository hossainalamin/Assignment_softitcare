@extends('master')
@section('content')
<div class="container slider my-3">
    <div class="custom-product">
        <div class="trending-product my-3">
            <div class="row">
                <div class="col">
                    <h3 class="text-center font-italic my-2 bg-dark py-3 text-light">Product List</h3>
                    @foreach($products as $item)
                    <a href="detail/{{$item['id']}}">
                        <div class="trending-item">
                            <img class="trending-image" src="{{$item['gallery']}}" alt="">
                            <p class="ml-4 mt-3">{{$item['name']}}</p>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    @endsection