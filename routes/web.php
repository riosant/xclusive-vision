<?php

use App\Http\Controllers\Admin\AgentController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/dashboard', function () {
//    return view('dashboard');
//})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
});



Route::middleware(['auth', 'verified'])->prefix('users/')->as('users.')->group(function () {
    Route::get('/list', [UserController::class, 'index'])->name('list');
    Route::get('/add', [UserController::class, 'add'])->name('add');
    Route::post('/store', [UserController::class, 'store'])->name('store');
    Route::post('/checkUniqueEmail', [UserController::class, 'checkUniqueEmail'])->name('checkUniqueEmail');
    Route::post('/checkUniqueUsername', [UserController::class, 'checkUniqueUsername'])->name('checkUniqueUsername');
    Route::post('/users/getUser', [UserController::class, 'getUser'])->name('getUser');
    Route::get('/edit/{id}', [UserController::class, 'edit'])->name('edit');
    Route::put('/update/{id}', [UserController::class, 'update'])->name('update');
});

Route::middleware(['auth', 'verified'])->prefix('agents/')->as('agents.')->group(function () {
    Route::get('/list', [AgentController::class, 'index'])->name('list');
    Route::get('/add', [AgentController::class, 'add'])->name('add');
    Route::post('/store', [AgentController::class, 'store'])->name('store');
    Route::get('/edit/{id}', [AgentController::class, 'edit'])->name('edit');
    Route::put('/update/{id}', [AgentController::class, 'update'])->name('update');
});

require __DIR__.'/auth.php';
