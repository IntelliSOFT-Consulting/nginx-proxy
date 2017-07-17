#/bin/sh

: ${TRUSTCHAIN=""}
: ${CERT_LOCATION=/etc/nginx/certs/sedish.net.crt}
: ${KEY_LOCATION=/etc/nginx/certs/sedish.net.key}
: ${SERVER_NAME=localhost}
: ${DHIS_FWD_PORT=9001}
: ${OPENEMPI_FWD_PORT=9002}
: ${OPENSHR_FWD_PORT=9003}

export CERT_LOCATION
export KEY_LOCATION
export TRUSTCHAIN
export SERVER_NAME
export DHIS_FWD_PORT
export OPENEMPI_FWD_PORT
export OPENSHR_FWD_PORT

/replace-vars /etc/nginx/nginx.conf

nginx -g "daemon off;"
