#!/bin/bash
# Promove um usuário a subadmin do seu grupo
#
# Aceita como parametro o usuário admin,senha, URL, o usuário a ser promovido e o grupo
#Syntax: ocs/v1.php/cloud/users/{userid}/subadmins
#
#    HTTP method: POST
#
#    POST argument: groupid, string - the group of which to make the user a subadmin
#
#Status codes:
#
#    100 - successful
#
#    101 - user does not exist
#
#    102 - group does not exist
#
#    103 - unknown failure
#

ADMIN=$1
PASS=$2
URL=$3
EMAIL=$4
GROUP=$4

curl -X POST https://$ADMIN:$PASS@$URL/ocs/v1.php/cloud/users/$EMAIL/subadmins -d groupid="$GROUP" -H "OCS-APIRequest: true"
