#!/bin/bash
# Insere usuario no grupo
# Recebe usuario e nome do grupo

USER=$1
GROUP=$2

docker exec -u 33 nextcloud-docker-app-1 php occ group:adduser $GROUP $USER

