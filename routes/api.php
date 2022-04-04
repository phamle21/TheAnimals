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

Route::prefix('posts')->name('posts.')->group(function () {
    Route::get('', [ReactController::class, 'list'])->name('index'); //Danh sách
    Route::post('', [ReactController::class, 'save'])->name('store'); //Lưu
    Route::get('{post}', [ReactController::class, 'detail'])->name('show'); //Chi tiết
    Route::post('{post}', [ReactController::class, 'update'])->name('update'); //Cập nhập
    Route::post('delete/{post}', [ReactController::class, 'delete'])->name('delete'); //Xóa
});
