#!/bin/bash
# Retorna grupos e usuários que estão neles

docker exec -u 33 nextcloud-docker-app-1 php occ group:list

