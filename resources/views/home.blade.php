@extends('master')
@section('content')
    <div class="container slider my-3">
        <div class="custom-product">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-inner">
                        @foreach ($products as $item)
                            <a href="detail/{{ $item['id'] }}">
                                <div class="carousel-item {{ $item['id'] == 1 ? 'active' : '' }}">
                                    <a href="detail/{{ $item['id'] }}">
                                        <img class="slider d-block w-100" src="{{ $item['gallery'] }}">
                                        <div class="carousel-caption slider-text">
                                            <h3>{{ $item['name'] }}</h3>
                                            <p>{{ $item['description'] }}</p>
                                        </div>
                                    </a>
                                </div>
                            </a>
                        @endforeach
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <hr>
            @if(session()->has('message'))
            <div class="alert alert-success">
                <span style="color: green;font:24px;">{{session('message') }}</span>
            </div>
            @endif
            <div class="trending-product my-3">
                <div class="row">
                    <div class="col">
                        <h3 class="text-center font-italic my-2 bg-dark py-3 text-light">Trending products</h3>
                        @foreach ($products as $item)
                            <a href="detail/{{ $item['id'] }}">
                                <div class="trending-item">
                                    <img class="trending-image" src="{{ $item['gallery'] }}" alt="">
                                    <p class="ml-4 mt-3">{{ $item['name'] }}</p>
                                </div>
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    @endsection
