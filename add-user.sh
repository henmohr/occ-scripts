#!/bin/bash
# Recebe Display Name e Email como parametros
# Envia email com o pingme

DISPLAY_NAME=$1
EMAIL=$2

pass=`openssl rand -hex 10`
docker exec -e OC_PASS="$pass" -u 33 nextcloud-docker-app-1 php occ user:add --password-from-env --display-name=${DISPLAY_NAME} --group $EMAIL --email=${EMAIL} $EMAIL

source send-email.sh $pass $EMAIL
