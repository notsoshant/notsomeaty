#!/bin/sh

exec /usr/sbin/httpd -D FOREGROUND

while true
do
    tail -f /var/log/apache2/*.log
    exit 0
done
