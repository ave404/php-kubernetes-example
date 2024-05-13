<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    \App\Jobs\Hello::dispatch();
    return view('welcome');
});
