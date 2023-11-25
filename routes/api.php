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
   

 
 Route::post('addcomment',[commentController::class,'addcomment']);

    Route::post('like',[postController::class,'like']);
    Route::post('fetchlikes',[postController::class,'fetchlikes']);
    Route::apiResource('comment',commentController::class);
  



});
    Route::get('getPostsForUser/{userId}',[postController::class,'getPostsForUser']);
  
 Route::apiResource('post',postController::class);
  Route::apiResource('user',userController::class);

    Route::post('fetchcomments',[commentController::class,'fetchcomments']);
    Route::get('fetchuser/{Id}',[postController::class,'fetchuser']);    
    Route::get('getLikedPosts/{Id}',[postController::class,'getLikedPosts']);
    Route::get('getCommentsPosts/{Id}',[postController::class,'getCommentsPosts']);
    Route::post('deletecomment/{Id}',[postController::class,'deletecomment']);
    Route::get('fetchtags',[postController::class,'fetchtags']);
    Route::get('separatetag/{Id}',[postController::class,'separatetag']);
    Route::get('authorpost/{userid}',[postController::class,'authorpost']);
    Route::get('countcomment/{userid}',[postController::class,'countcomment']);
    Route::post('fetchtagposts', [postController::class,'fetchtagposts']);
    Route::post('deletelike/{Id}',[postController::class,'deletelike']);













Route::get('updateprofile/{Id}',[profileController::class,'updateprofile']);

Route::apiResource('profile',profileController::class);

Route::post('register',[userController::class,'store_register']);
Route::post('login',[userController::class,'login']);
Route::post('logout',[userController::class,'logout']);



Route::get('/verify-email/{token}', [userController::class,'verifyEmail'])->name('email.verify');







Route::post('searchByUsername',[postController::class,'searchByUsername']);