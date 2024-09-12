#!/bin/bash
# Remove um usuário a subadmin do seu grupo
#
# Aceita como parametro o usuário admin,senha, URL, o usuário a ser promovido e o grupo
# Syntax: ocs/v1.php/cloud/users/{userid}/subadmins
#
#    HTTP method: DELETE
#
#    DELETE argument: groupid, string - the group from which to remove the user’s subadmin rights
#
#Status codes:
#
#    100 - successful
#
#    101 - user does not exist
#
#    102 - ser is not a subadmin of the group / group does not exist
#
#    103 - unknown failure
#

ADMIN=$1
PASS=$2
URL=$3
EMAIL=$4
GROUP=$5

curl -X DELETE https://$ADMIN:$PASS@$URL/ocs/v1.php/cloud/users/$EMAIL/subadmins -d groupid="$GROUP" -H "OCS-APIRequest: true"
