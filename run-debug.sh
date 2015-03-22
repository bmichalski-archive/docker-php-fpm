#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$DIR/common-run.sh

docker run \
-p 80:80 \
--name php-fpm \
-it \
bmichalski/php-fpm \
bash
