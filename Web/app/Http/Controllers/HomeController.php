<?php

namespace App\Http\Controllers;

use App;
use Illuminate\Http\Request;
use App\Users;

class HomeController extends Controller
{
    public function home()
    {
        return view('home');
    }


}