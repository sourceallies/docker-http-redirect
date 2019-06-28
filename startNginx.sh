#!/bin/sh

set -e

envsubst '$NGINX_PORT $NGINX_BACKEND_HOST $NGINX_BACKEND_PORT' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf 

nginx -g 'daemon off;'