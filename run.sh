#!/bin/sh

rm -f /run/apache2/apache2.pid
rm -f /run/apache2/httpd.pid
httpd -D FOREGROUND