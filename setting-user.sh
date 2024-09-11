#!/bin/bash
# Retorna settings do usuário
# Aceita como parametro id do usuario

EMAIL=$1

docker exec -u 33 nextcloud-docker-app-1 php occ user:setting $EMAIL