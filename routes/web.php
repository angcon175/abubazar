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


Route::get('cc', function () {
    \Artisan::call('config:clear');
    \Artisan::call('route:clear');
    \Artisan::call('optimize:clear');
    \Artisan::call('view:clear');
    \Artisan::call('view:cache');
    \Artisan::call('config:cache');
    dd("configuration cleared again");
});
