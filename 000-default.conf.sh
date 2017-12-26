#!/bin/sh

APP_LOCATION=$1

cat  << EOF
<VirtualHost *:80>
    ServerAdmin admin@pruebas.com
    DocumentRoot /home/deploy/app/$APP_LOCATION
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF
