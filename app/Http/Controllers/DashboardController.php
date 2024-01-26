<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Support\Facades\Auth as FacadesAuth;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function Dashboard(){
        $data['header_title'] = 'Dashboard';
        if(FacadesAuth::user()->user_type == 1)
        {
        return view('admin.dashboard', $data);
        }

        else if(FacadesAuth::user()->user_type == 2)
        {
        return view('teacher.dashboard', $data);

        }

        else if(FacadesAuth::user()->user_type == 3)
        {
        return view('student.dashboard', $data);

        }

        else if(FacadesAuth::user()->user_type == 4)
        {
        return  view('parent.dashboard', $data);

        }

    }
}
