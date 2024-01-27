<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DataController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/data', [DataController::class, 'getSearchedData'])->name('data');
Route::get('/totalAlbums', [DataController::class, 'getAlbumsTotal'])->name('totalAlbums');
Route::get('/totalSales', [DataController::class, 'getTotalSales'])->name('totalSales');
Route::get('/topOne', [DataController::class, 'getTopOne'])->name('topOne');
Route::get('/viewArtist', [DataController::class, 'getArtistDetail'])->name('viewArtist');
Route::get('/removeArtist', [DataController::class, 'removeArtistDetails'])->name('removeArtist');
Route::get('/updateArtist', [DataController::class, 'updateArtistDetails'])->name('updateArtist');
Route::get('/viewAlbum', [DataController::class, 'getAlbumDetail'])->name('viewAlbum');
Route::get('/updateAlbum', [DataController::class, 'updateAlbumDetails'])->name('updateAlbum');
