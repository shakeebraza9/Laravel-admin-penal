<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Coupon;
use App\Models\Store;
use App\Models\StoreCategory;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function home()
    {
    
        return view('theme.home');
    }


  
}
