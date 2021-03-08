<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Http;

class OmdbController extends Controller
{
    
    public function index(Request $request)
    {
        $omdbkey = \Config::get('my.app.omdbkey');
        $omdburl = \Config::get('my.app.omdburl');

        $pagination= $request->input('pagination');
        $searchword= $request->input('searchword');

        $pagination = ($pagination)?$pagination:1;
        $response = Http::get($omdburl, [
            's'         => $searchword,
            'page'      => $pagination,
            'apikey'    => $omdbkey
        ]);
        return $response->json();
    }

    public function detail(Request $request)
    {
        $omdbkey = \Config::get('my.app.omdbkey');
        $omdburl = \Config::get('my.app.omdburl');

        $id = $request->input('id');

        $response = Http::get($omdburl, [
            'i'         => $id,
            'apikey'    => $omdbkey
        ]);
        return $response->json();
    }

    
}
