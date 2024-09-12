#!/bin/bash
# Reenvia email de boas vindas para o usuário
#
# Aceita como parametro o usuário admin,senha, URL, o usuário a ser promovido e o grupo
# Syntax: ocs/v1.php/cloud/users/{userid}/subadmins
#
#    HTTP method: POST
#
#Status codes:
#
#    100 - successful
#
#    101 - email address not available
#
#    102 - sending email failed
#

ADMIN=$1
PASS=$2
URL=$3
EMAIL=$4
GROUP=$5

curl -X POST https://$ADMIN:$PASS@$URL/ocs/v1.php/cloud/users/$EMAIL/welcome -H "OCS-APIRequest: true"
