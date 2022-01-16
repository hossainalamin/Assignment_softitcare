<?php
use App\Http\Controllers\ProductController;
$total = 0;
if(Session::has('phoneverify')){
$total  = ProductController::cartItem();
}
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Assigment Softit_care</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Home</a>
                </li>
                @if(Session::has('phoneverify'))
                <li class="nav-item">
                    <a class="nav-link" href="/myorders">Orders</a>
                </li>
                @endif
            </ul>
            <ul class="ml-auto navbar-nav">
                @if(Session::has('phoneverify'))
                <li class="nav-item"><a href="/cartlist" class="nav-link">Cart({{$total}})</a><li>
                @endif
                @if(Session::has('phoneverify'))
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {{Session::get('phoneverify')['phone_number']}}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/logout">Logout</a>
                    </div>
                </li>
                @else
                <li class="nav-item"><a href="/login" class="nav-link">Login</a></li>
                @endif
            </ul>
        </div>
    </div>
</nav>