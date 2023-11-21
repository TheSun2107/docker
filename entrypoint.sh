#!/usr/bin/env sh
set -e
service php7.4-fpm start
nginx -g 'daemon off;'