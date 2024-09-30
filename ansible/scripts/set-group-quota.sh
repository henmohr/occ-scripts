#!/bin/bash
# Altera as quotas de grupo
# Aceita como parametro id do grupo e tamanho da quota do grupo (passar unidade)
# Exemplo: occ groupquota:set grupo1 1GB

GROUP_ID=$1
GROUP_QUOTA=$2
UNIT=$3

if [[ "$UNIT" != "MB" && "$UNIT" != "GB" ]]; then
  echo "Erro: Unidade inválida. Use 'MB' ou 'GB'."
  exit 1
fi

docker exec -u 33 nextcloud-docker-app-1 php occ groupquota:set $GROUP_ID $GROUP_QUOTA$UNIT


# Retorna código 100 mas não altera
#curl -X PUT https://$ADMIN:$PASS@$URL/ocs/v1.php/cloud/users/$EMAIL -d key="quota" -d value="2GB" -H "OCS-APIRequest: true"
# https://github.com/nextcloud/groupquota/issues/15
# https://docs.nextcloud.com/server/latest/admin_manual/configuration_user/instruction_set_for_users.html#examples