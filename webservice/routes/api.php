<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\AuthenticationController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::match(['get', 'post'],'/payment', [PaymentController::class, 'validateCard']);
Route::match(['get', 'post'],'/review', [ReviewController::class, 'index']);
Route::match(['get', 'post'],'/reservation', [ReservationController::class, 'index']);
Route::match(['get', 'post'],'/authenticate', [AuthenticationController::class, 'authenticate']);

