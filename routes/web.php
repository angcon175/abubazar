<?php

use Illuminate\Support\Facades\Route;

Route::middleware('setlang')->group(function(){
    include(base_path('routes/auth.php'));
    include(base_path('routes/backend.php'));
    include(base_path('routes/frontend.php'));
    include(base_path('routes/payment.php'));
    include(base_path('routes/command.php'));

    Route::fallback(function () {
        abort(404);
    });
});
