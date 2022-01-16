@extends('master')
@section('content')
<div class="container login-form">
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <div class="card  rounded login">
                <div class="card-header">
                    <h3 class="text-center">Login/Register</h3>
                </div>
                <div class="card-body">
                    <form action="login" method="post">
                        @csrf
                        <div class="mb-3">
                            <span>A verification code will be sent to your number</span>
                            <label for="Phone" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" name="phoneNumber" placeholder="017XXXXXXXX">
                            @error('phoneNumber')
                                <span style='color:red;'>{{$message}}</span>
                            @enderror
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection