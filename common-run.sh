#!/bin/bash

PHP_FPM_EXISTS=`docker inspect --format="{{ .Id }}" php-fpm 2> /dev/null`

if ! [ -z "$PHP_FPM_EXISTS" ]
then
  docker kill php-fpm
  docker rm php-fpm
fi
