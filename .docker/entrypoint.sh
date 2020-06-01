#!/bin/bash

composer install
php artisan key:generate

# Migrate artisan
php artisan migrate
# iniciando o php-fpm
php-fpm
