#!/bin/bash
# Retorna informações do grupo
# Recebe nome do grupo

GROUP=$1

docker exec -u 33 nextcloud-docker-app-1 php occ group:info $GROUP

