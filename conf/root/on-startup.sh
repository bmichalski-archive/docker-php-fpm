#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

bash $DIR/configure.sh

service php5-fpm start

tail -f /var/log/php5-fpm.log
