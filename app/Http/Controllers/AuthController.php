<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Models\User;
use App\Mail\ForgotPasswordMail;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login()
    {
        if (Auth::check()) {
            return redirect('admin/dashboard');
        }

        return view('auth.login');
    }

    public function authLogin(Request $request)
    {
        $remember = $request->has('remember');

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $remember)) {
            $userType = Auth::user()->user_type;

            switch ($userType) {
                case 1:
                    return redirect('admin/dashboard');
                case 2:
                    return redirect('teacher/dashboard');
                case 3:
                    return redirect('student/dashboard');
                case 4:
                    return redirect('parent/dashboard');
                default:
                    return redirect('/');
            }
        } else {
            return redirect()->back()->with('error', 'Please enter correct email and password');
        }
    }

    public function forgotPassword()
    {
        return view('auth.forgot');
    }

    public function PostForgotPassword(Request $request)
{
    $user = User::getEmailSingle($request->email);

    if (!empty($user)) {
        $user->remember_token = Str::random(30);
        $user->save();

        $resetUrl = url('admin/reset/' . $user->remember_token);
        //dd($resetUrl);
       Mail::to($user->email)->send(new ForgotPasswordMail($user));


        return redirect()->back()->with('success', 'Check your email address');
    } else {
        return redirect()->back()->with('error', 'Email not found in the system');
    }
}
public function reset($remember_token)
{
    $user = User::getTokenSingle($remember_token);
    if(!empty($user))
    {
        $data['user'] = $user;
        return view('auth.reset',$data);
    }
    else
    {
        abort(404);
    }

}
    public function Postreset($token, Request $request)
    {
        if($request->Password == $request->cpassword){
            $user = user::getTokenSingle($token);
            $user->password = Hash::make($request->Password);
            $user->save();

            return redirect(url(''))->with('success',"password changed");
        }
        else
        {
            return redirect()->back()->with('error',"password do not match");
        }
    }


    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
