<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth as FacadesAuth;
class StudentMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(!empty(FacadesAuth::check()))
        {
            if(FacadesAuth::user()->user_type == 3)
            {
            return $next($request);
            }

            else
            {
            FacadesAuth::logout();
            return redirect(url(''));
            }
        }
        else
        {

            FacadesAuth::logout();
            return redirect(url(''));
        }


    }
}
