<?php

namespace App\Http\Controllers;

use App\Models\Animal;
use Illuminate\Http\Request;

class ReactController extends Controller
{
    public function listAnimals(){
        $list = Animal::all();

        // return $list;
        return response()->json($list);
    }
}
