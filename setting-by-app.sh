#!/bin/bash
# Retorna setting do usuário baseada no app
# Aceita como parametro id do usuario e app (se multiplos add, utilizar "")
# Example: email@gmail.coop core
# Example: email@gmail.coop "core lang" - Return language of user

EMAIL=$1
APP="$2"

docker exec -u 33 nextcloud-docker-app-1 php occ user:setting $EMAIL $APP
