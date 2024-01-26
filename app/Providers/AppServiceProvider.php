<?php

namespace App\Providers;

//use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

use Illuminate\Pagination\Paginator;
    /**
     * Register any application services.
     */
    /**
     * Bootstrap any application services.
     */
class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        //
    }
    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();
    }
}
