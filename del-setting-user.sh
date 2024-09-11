#!/bin/bash
# Deleta configurações do usuário
# Aceita como parametro id do usuario, configuração e email
# Example: email@gmail.coop display_name novo.display.name
# Settings: email, display_name

EMAIL=$1
APP="$2"

docker exec -u 33 nextcloud-docker-app-1 php occ user:setting $EMAIL settings $APP --delete

