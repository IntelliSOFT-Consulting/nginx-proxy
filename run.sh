#/bin/sh

: ${IL_TRUSTCHAIN=""}
: ${IL_CONSOLE_CERT=/etc/nginx/certs/sedish.net.crt}
: ${IL_CONSOLE_KEY=/etc/nginx/certs/sedish.net.key}
: ${SERVER_NAME=localhost}
: ${DHIS_FWD_PORT=9001}
: ${OPENEMPI_FWD_PORT=9002}
: ${OPENSHR_FWD_PORT=9003}

export IL_CONSOLE_CERT
export IL_CONSOLE_KEY
export IL_TRUSTCHAIN
export SERVER_NAME
export DHIS_FWD_PORT
export OPENEMPI_FWD_PORT
export OPENSHR_FWD_PORT

/replace-vars /etc/nginx/nginx.conf

nginx -g "daemon off;"
