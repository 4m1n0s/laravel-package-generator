{
  "name": "<?php echo $composerName; ?>",
  "description": "<?php echo $composerDesc; ?>",
  "license": "<?php echo $license; ?>",
  "keywords": [
    <?php echo "$composerKeywords\n"; ?>
  ],
  "type": "library",
  "authors": [
    {
      "name": "<?php echo $name; ?>",
      "email": "<?php echo $email; ?>"
    }
  ],
  "require": {
    "php": "<?php echo $phpVersion; ?>",
    "illuminate/support": "^8.0|^9.0|^10.0"
  },
  "require-dev": {
    "orchestra/testbench": "^6.0|^7.0|^8.0",
    "phpunit/phpunit": "^8.4|^9.0|^10.0"
  },
  "autoload": {
    "psr-4": {
      "<?php echo $vendor; ?>\\<?php echo $package; ?>\\": "src"
    }
  },
  "autoload-dev": {
    "psr-4": {
      "<?php echo $vendor; ?>\\<?php echo $package; ?>\\Tests\\": "tests"
    }
  },
  "scripts": {
    "phpunit": "phpunit"
  },
  "extra": {
    "laravel": {
      "providers": [
        "<?php echo $vendor; ?>\\<?php echo $package; ?>\\ServiceProvider"
      ]
    }
  },
  "config": {
    "preferred-install": "dist",
    "sort-packages": true,
    "optimize-autoloader": true
  }
}
