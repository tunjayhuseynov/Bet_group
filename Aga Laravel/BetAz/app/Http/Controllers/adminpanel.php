<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class adminpanel extends Controller
{
    public function home(Request $request)
    {
        return view('main');
    }
}
