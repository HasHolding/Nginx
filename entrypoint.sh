#!/bin/sh
cp ${CONF} /etc/nginx/conf.d/
/usr/sbin/nginx -g "daemon off;"
