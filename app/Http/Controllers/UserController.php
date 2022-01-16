<?php
namespace App\Http\Controllers;
use App\Models\UserLogin;
use Illuminate\Http\Request;
use Nexmo;
use Session;

class UserController extends Controller
{
    public function login(Request $req)
    {
        $user_login = new UserLogin();
        $data_valid = $req->validate([
            'phoneNumber' => 'required'
        ]);
        if ($data_valid) {
            $verify_token = rand(1111, 9999);
            $user_login->phone_number = $req->phoneNumber;
            $user_login->token   = $verify_token;
            $nexmo = app('Nexmo\Client');
            // $nexmo->message()->send([
            //      'to' =>'+880'.(int)$req->phoneNumber,
            //      'from' => "Alamin",
            //      'text' => 'Verify code'.$verify_token,
            //  ]);
            $user_login->save();
            $req->session()->flash('message', 'OTP send to your number');
            return view('/verify');
        }
    }
    public function postVerify(Request $req){
        $user_info = UserLogin::where('token',"$req->verify_token")->first();
        if($user_info){
            $user_info->token = "";
            $req->session()->put('phoneverify',$user_info);
            $user_info->save();
            return redirect('/');
        }else{
            $req->session()->flash('otp-verify', 'Wrong OTP');
            return view('/verify');
        }
    }
}
