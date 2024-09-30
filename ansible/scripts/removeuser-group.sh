#!/bin/bash
# Recebe nome do grupo a ser criado

USER=$1
GROUP=$2

docker exec -u 33 nextcloud-docker-app-1 php occ group:add $GROUP $USER

