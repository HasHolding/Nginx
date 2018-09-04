#!/bin/sh

if [ -f "${WEB_CONF}" ];
then
	cp -f ${WEB_CONF} /etc/nginx/conf.d/default.conf
fi

/usr/sbin/nginx -g "daemon off;"
