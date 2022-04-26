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

//LOGIN
Route::post('/login', [ReactController::class, 'login']);

//SEARCH
Route::get('/info/search', [ReactController::class, 'searchAnimal']);

// INFO
Route::get('/info/list', [ReactController::class, 'listAnimals']);

//Animal
Route::post('/animal/add', [ReactController::class, 'addAnimals']);


//TYPE
Route::get('/animal-type/{type}', [ReactController::class, 'listAnimalType']);
Route::post('/action-type/add', [ReactController::class, 'addTypeAnimal']);
Route::post('/action-type/edit', [ReactController::class, 'editTypeAnimal']);

// DETAIL
Route::get('/detail/animal-{id}', [ReactController::class, 'detailAnimals']);
Route::post('/detail/edit', [ReactController::class, 'editAnimals']);
Route::post('/detail/edit-other', [ReactController::class, 'editOtherAnimals']);
Route::post('/detail/edit-media', [ReactController::class, 'editMediaAnimals']);
Route::post('/detail/add-media', [ReactController::class, 'addMediaAnimals']);
Route::post('/detail/delete-media', [ReactController::class, 'deleteMediaAnimals']);

Route::get('/detail/other/{id}', [ReactController::class, 'listAnimalsOther']);
Route::get('/detail/media/{id}', [ReactController::class, 'listAnimalsMedia']);
