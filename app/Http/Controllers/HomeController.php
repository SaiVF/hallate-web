<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         // Lógica para obtener las categorías desde el modelo Category
         $categories = Category::all(); // O utiliza la lógica adecuada para obtener tus categorías

         // Pasa las categorías a la vista 'home'
         return view('home', compact('categories'));
        // return view('home');
    }
}
