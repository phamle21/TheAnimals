<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ReactController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//SEARCH
Route::get('/info/search', [ReactController::class, 'searchAnimal']);

// INFO
Route::get('/info/list', [ReactController::class, 'listAnimals']);

// DETAIL
Route::get('/detail/{id}', [ReactController::class, 'detailAnimals']);
Route::get('/detail/other/{id}', [ReactController::class, 'listAnimalsOther']);
Route::get('/detail/media/{id}', [ReactController::class, 'listAnimalsMedia']);
