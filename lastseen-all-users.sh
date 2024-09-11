#!/bin/bash
# Visto por último de todos usuários

docker exec -u 33 nextcloud-docker-app-1 php occ user:lastseen --all
