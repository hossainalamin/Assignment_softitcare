@extends('master')
@section('content')
    <div class="container">
        <div class="order-product my-3">
            <h3 class="text-center font-italic my-2 bg-dark py-3 text-light">Order </h3>
            <table class="table table-striped">
                <tr>
                    <td>Amount</td>
                    <td>$ {{ $product['price'] }}</td>
                </tr>
                <tr>
                    <td>Tax</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>Delevery Charge</td>
                    <td>$ 10</td>
                </tr>
                <tr>
                    <td>Total amount</td>
                    <td>$ {{ $product['price'] + 10 }}</td>
                </tr>
            </table>
            <br>
            <br>
            <div class="form">
                <form action="/orderconfirm" method="post">
                    @csrf
                    <div class="form-group">
                        <input type="hidden" name="user_id" value = {{session()->get('phoneverify')['id']}}></textarea>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="prod_id" value = {{$product['id']}}></textarea>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea class="form-control" name="address" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="payment_option">Payment Option</label>
                        <select class="form-control" name="payment">
                            <option name="online">Online</option>
                            <option name="ofline">Cash On delevery</option>
                        </select>
                    </div>
                    <button class="btn btn-success" type="submit">Order</button>
                </form>
            </div>
        </div>
    </div>
@endsection
