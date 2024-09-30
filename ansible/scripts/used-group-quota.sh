#!/bin/bash
# Retorna quantidade ja utilizada da quota de grupo total
# Aceita como parametro id do grupo 
# Exemplo: occ groupquota:used -f grupo1
# Retorna 2 GB
# Sem -f retorna: 2147483648

GROUP_ID=$1

docker exec -u 33 nextcloud-docker-app-1 php occ groupquota:used -f $GROUP_ID

