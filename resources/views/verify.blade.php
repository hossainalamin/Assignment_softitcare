@extends('master')
@section('content')
    <div class="container login-form">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                @if (session()->has('message'))
                    <div class="alert alert-success">
                        <span style="color: green;font:24px;">{{ session('message') }}</span>
                    </div>
                @endif
                @if (session()->has('otp-verify'))
                    <div class="alert alert-danger">
                        <span style="color: green;font:24px;">{{ session('otp-verify') }}</span>
                    </div>
                @endif
                <div class="card  rounded login">
                    <div class="card-body">
                        <form action="/verify" method="post">
                            @csrf
                            <div class="mb-3">
                                <label for="Phone" class="form-label">OTP</label>
                                <input type="text" class="form-control" name="verify_token">
                            </div>
                            <button type="submit" class="btn btn-primary">Verify</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
