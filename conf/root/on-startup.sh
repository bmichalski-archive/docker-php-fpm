#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

touch /var/log/php5-fpm.log

chown www-data:www-data /var/log/php5-fpm.log

service php5-fpm start

tail -f /var/log/php5-fpm.log
