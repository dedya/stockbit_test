<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

use App\Models\Requests;

use Illuminate\Support\Facades\Log;

class LogRequest
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        return $next($request);
    }

    public function terminate($request, $response)
    {
      $url=$request->fullUrl();
      $ip=$request->ip();
      $r=new Requests();
      $r->ip=$ip;
      $r->url=$url;
      $r->request=json_encode($request->all());
      $r->response=$response;
      $r->save();
    }
}
