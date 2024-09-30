#!/bin/bash
# Deleta usuário
# Recebe o ID do usuário (email) como parametro

EMAIL=$1

docker exec -u 33 nextcloud-docker-app-1 php occ user:delete $EMAIL
