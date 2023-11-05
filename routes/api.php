<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\userController;
use App\Http\Controllers\postController;
use App\Http\Controllers\commentController;
use App\Http\Controllers\profileController;



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

Route::middleware('auth:sanctum')->group(function () {

});
Route::apiResource('post',postController::class);

Route::apiResource('user',userController::class);
Route::apiResource('comment',commentController::class);
Route::apiResource('profile',profileController::class);
Route::post('register',[userController::class,'store_register']);
Route::post('login',[userController::class,'login']);
Route::post('logout',[userController::class,'logout']);
Route::post('like',[postController::class,'like']);
Route::post('fetchlikes',[postController::class,'fetchlikes']);

Route::post('addcomment',[commentController::class,'addcomment']);
Route::post('fetchcomments',[commentController::class,'fetchcomments']);



Route::get('/verify-email/{token}', [userController::class,'verifyEmail'])->name('email.verify');
Route::get('getPostsForUser/{userId}',[postController::class,'getPostsForUser']);