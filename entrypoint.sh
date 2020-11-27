#!/bin/sh

htpasswd -bBc /etc/nginx/.htpasswd $USERNAME $PASSWORD

envsubst '$WORKER_PROCESSES $CLIENT_MAX_BODY_SIZE $PROXY_READ_TIMEOUT $SERVER_NAME $PORT $PROXY_PASS' < nginx.conf > /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
