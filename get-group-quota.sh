#!/bin/bash
# Retorna as quotas de grupo
# Aceita como parametro id do grupo 
# Exemplo: occ groupquota:set -f grupo1
# Retorna 2 GB
# Sem -f retorna: 2147483648

GROUP_ID=$1

docker exec -u 33 nextcloud-docker-app-1 php occ groupquota:get -f $GROUP_ID

