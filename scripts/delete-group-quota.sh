#!/bin/bash
# Deleta a quota de um grupo
# Aceita como parametro id do grupo 
# Exemplo: occ groupquota:delete grupo1


GROUP_ID=$1

docker exec -u 33 nextcloud-docker-app-1 php occ groupquota:delete $GROUP_ID

