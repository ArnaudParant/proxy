#!/bin/sh

if [ "$CONF_FILE" != "" ]; then
    CONF_FILE="${CONF_FILE}.conf"
    echo "Include \"conf/$CONF_FILE\"" >> conf/httpd.conf
    echo "Using: '$CONF_FILE' as configuration file"
fi

if [ "$EXTERNAL_IP" != "" ]; then
    sed -ri 's/ServerName .*:80/Servername: ${EXTERNAL_IP}:80/g' /usr/local/apache2/conf/httpd.conf
    echo "Using external IP: $EXTERNAL_IP in configuration file"
fi


httpd-foreground
