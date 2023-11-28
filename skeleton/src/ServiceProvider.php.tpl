<?php echo "<?php\n"; ?>

namespace <?php echo $vendor; ?>\<?php echo $package; ?>;

class ServiceProvider extends \Illuminate\Support\ServiceProvider
{
    public function boot()
    {
        /*
         * Optional methods to load your package assets
         */
        // $this->loadTranslationsFrom(__DIR__.'/../resources/lang', '<?php echo $packageFolderName; ?>');
        // $this->loadViewsFrom(__DIR__.'/../resources/views', '<?php echo $packageFolderName; ?>');
        // $this->loadMigrationsFrom(__DIR__.'/../database/migrations');
        // $this->loadRoutesFrom(__DIR__.'/routes.php');

        if ($this->app->runningInConsole()) {
            $this->publishes([
                __DIR__.'/../config/<?php echo $configFileName; ?>.php' => config_path('<?php echo $configFileName; ?>.php'),
            ], 'config');

            // Publishing the views.
            /*$this->publishes([
                __DIR__.'/../resources/views' => resource_path('views/vendor/<?php echo $packageFolderName; ?>'),
            ], 'views');*/

            // Publishing assets.
            /*$this->publishes([
                __DIR__.'/../resources/assets' => public_path('vendor/<?php echo $packageFolderName; ?>'),
            ], 'assets');*/

            // Publishing the translation files.
            /*$this->publishes([
                __DIR__.'/../resources/lang' => resource_path('lang/vendor/<?php echo $packageFolderName; ?>'),
            ], 'lang');*/

            // Registering package commands.
            // $this->commands([]);
        }
    }

    public function register()
    {
        $this->mergeConfigFrom(
            __DIR__.'/../config/<?php echo $configFileName; ?>.php',
            '<?php echo $configFileName; ?>'
        );

        $this->app->singleton('<?php echo $aliasName; ?>', function () {
            return new <?php echo $package; ?>();
        });
    }
}
