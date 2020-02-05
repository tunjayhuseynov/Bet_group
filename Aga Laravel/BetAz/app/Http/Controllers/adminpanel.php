<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class adminpanel extends Controller
{
    public function home(Request $request)
    {
        return view('main');
    }

    public function list(Request $request)
    {
        $list = DB::table('bets')->get();

        return view('list')->with("list", $list);
    }

    public function add(Request $request)
    {

    }

    public function addpost(Request $request)
    {
        
    }

    public function edit(Request $request)
    {
        # code...
    }

    public function editpost(Request $request)
    {
        # code...
    }

    public function delete(Request $request)
    {
        
    }

}
