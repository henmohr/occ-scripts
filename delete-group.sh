#!/bin/bash
# Recebe nome do grupo a ser deletado

GROUP=$1

docker exec -u 33 nextcloud-docker-app-1 php occ group:delete $GROUP

