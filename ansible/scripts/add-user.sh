#!/bin/bash
# Cria usuario com email, cria grupo e insere o mesmo com email do usuário e envia email de boas vindas
# Necessário: smtp configurado no servidor
# Recebe o display name e email como parametros
# Para adicionar o usuário em outro grupo chamar o script group-add
DISPLAY_NAME=$1
EMAIL=$2

docker exec -u 33 nextcloud-docker-app-1 php occ user:add --generate-password --email $EMAIL --group $EMAIL --display-name $DISPLAY_NAME $EMAIL
