#!/bin/bash
# Retorna todos grupos e quotas configuradas
# Exemplo: occ groupquota:list -f
#Group: Quota
# grupo1: 10 GB
# grupo2: 2 GB


GROUP_ID=$1

docker exec -u 33 nextcloud-docker-app-1 php occ groupquota:used -f $GROUP_ID

