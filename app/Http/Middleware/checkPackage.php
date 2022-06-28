<?php


namespace App\Http\Middleware;


use Closure;


class checkPackage
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(\Auth::user()->package_id > 1){
            return $next($request);
        }else{
           return redirect()->route('my-dashboard');
        }
    }
}