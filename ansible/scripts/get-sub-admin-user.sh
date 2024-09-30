#!/bin/bash
# Retorna os groups dos quais o usuário é um subadmin.
#
# Aceita como parametro o usuário admin,senha, URL, o usuário a ser promovido e o grupo
# Syntax: ocs/v1.php/cloud/users/{userid}/subadmins
#
#    HTTP method: GET
#
#    DELETE argument: groupid, string - the group from which to remove the user’s subadmin rights
#
#Status codes:
#
#    100 - successful
#
#    101 - user does not exist
#
#    102 - unknown failure
#

ADMIN=$1
PASS=$2
URL=$3
EMAIL=$4


curl -X GET https://$ADMIN:$PASS@$URL/ocs/v1.php/cloud/users/$EMAIL/subadmins -H "OCS-APIRequest: true"
