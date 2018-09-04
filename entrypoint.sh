#!/bin/sh
cp -f ${WEB_CONF} /etc/nginx/conf.d/default.conf
/usr/sbin/nginx -g "daemon off;"
