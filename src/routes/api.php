<?php

use Illuminate\Support\Facades\Route;

Route::get('/info', function () {
    return response()->json([
        'hostname' => gethostname()
    ]);
});
