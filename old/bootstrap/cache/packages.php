<?php return array (
  'amrshawky/laravel-currency' => 
  array (
    'providers' => 
    array (
      0 => 'AmrShawky\\LaravelCurrency\\CurrencyServiceProvider',
    ),
    'aliases' => 
    array (
      'Currency' => 'AmrShawky\\LaravelCurrency\\Facade\\Currency',
    ),
  ),
  'arcanedev/log-viewer' => 
  array (
    'providers' => 
    array (
      0 => 'Arcanedev\\LogViewer\\LogViewerServiceProvider',
      1 => 'Arcanedev\\LogViewer\\Providers\\DeferredServicesProvider',
    ),
  ),
  'browner12/helpers' => 
  array (
    'providers' => 
    array (
      0 => 'browner12\\helpers\\HelperServiceProvider',
    ),
  ),
  'facade/ignition' => 
  array (
    'providers' => 
    array (
      0 => 'Facade\\Ignition\\IgnitionServiceProvider',
    ),
    'aliases' => 
    array (
      'Flare' => 'Facade\\Ignition\\Facades\\Flare',
    ),
  ),
  'fideloper/proxy' => 
  array (
    'providers' => 
    array (
      0 => 'Fideloper\\Proxy\\TrustedProxyServiceProvider',
    ),
  ),
  'fruitcake/laravel-cors' => 
  array (
    'providers' => 
    array (
      0 => 'Fruitcake\\Cors\\CorsServiceProvider',
    ),
  ),
  'jorenvanhocht/laravel-share' => 
  array (
    'providers' => 
    array (
      0 => 'Jorenvh\\Share\\Providers\\ShareServiceProvider',
    ),
    'aliases' => 
    array (
      'Share' => 'Jorenvh\\Share\\ShareFacade',
    ),
  ),
  'laravel/socialite' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Socialite\\SocialiteServiceProvider',
    ),
    'aliases' => 
    array (
      'Socialite' => 'Laravel\\Socialite\\Facades\\Socialite',
    ),
  ),
  'laravel/tinker' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Tinker\\TinkerServiceProvider',
    ),
  ),
  'laravel/ui' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Ui\\UiServiceProvider',
    ),
  ),
  'livewire/livewire' => 
  array (
    'providers' => 
    array (
      0 => 'Livewire\\LivewireServiceProvider',
    ),
    'aliases' => 
    array (
      'Livewire' => 'Livewire\\Livewire',
    ),
  ),
  'melihovv/laravel-env-validator' => 
  array (
    'providers' => 
    array (
      0 => 'Melihovv\\LaravelEnvValidator\\ServiceProvider',
    ),
  ),
  'msztorc/laravel-env' => 
  array (
    'providers' => 
    array (
      0 => 'msztorc\\LaravelEnv\\LaravelEnvServiceProvider',
    ),
    'aliases' => 
    array (
      'LaravelEnv' => 'msztorc\\LaravelEnv\\LaravelEnvFacade',
    ),
  ),
  'nesbot/carbon' => 
  array (
    'providers' => 
    array (
      0 => 'Carbon\\Laravel\\ServiceProvider',
    ),
  ),
  'nunomaduro/collision' => 
  array (
    'providers' => 
    array (
      0 => 'NunoMaduro\\Collision\\Adapters\\Laravel\\CollisionServiceProvider',
    ),
  ),
  'nwidart/laravel-modules' => 
  array (
    'providers' => 
    array (
      0 => 'Nwidart\\Modules\\LaravelModulesServiceProvider',
    ),
    'aliases' => 
    array (
      'Module' => 'Nwidart\\Modules\\Facades\\Module',
    ),
  ),
  'spatie/laravel-permission' => 
  array (
    'providers' => 
    array (
      0 => 'Spatie\\Permission\\PermissionServiceProvider',
    ),
  ),
  'spatie/laravel-web-tinker' => 
  array (
    'providers' => 
    array (
      0 => 'Spatie\\WebTinker\\WebTinkerServiceProvider',
    ),
  ),
  'srmklive/paypal' => 
  array (
    'providers' => 
    array (
      0 => 'Srmklive\\PayPal\\Providers\\PayPalServiceProvider',
    ),
    'aliases' => 
    array (
      'PayPal' => 'Srmklive\\PayPal\\Facades\\PayPal',
    ),
  ),
  'tymon/jwt-auth' => 
  array (
    'aliases' => 
    array (
      'JWTAuth' => 'Tymon\\JWTAuth\\Facades\\JWTAuth',
      'JWTFactory' => 'Tymon\\JWTAuth\\Facades\\JWTFactory',
    ),
    'providers' => 
    array (
      0 => 'Tymon\\JWTAuth\\Providers\\LaravelServiceProvider',
    ),
  ),
);