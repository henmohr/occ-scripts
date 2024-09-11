# occ-scripts

Scripts para interagir com o Nextcloud OCC




### Usuarios

 user
  user:add                                      adds an account
  user:auth-tokens:add                          [user:add-app-password] Add app password for the named account
  user:auth-tokens:delete                       Deletes an authentication token
  user:auth-tokens:list                         List authentication tokens of an user
  user:delete                                   deletes the specified user
  user:disable                                  disables the specified user
  user:enable                                   enables the specified user
  user:info                                     show user info
  user:keys:verify                              Verify if the stored public key matches the stored private key
  user:lastseen                                 shows when the user was logged in last time
  user:list                                     list configured users
  user:report                                   shows how many users have access
  user:resetpassword                            Resets the password of the named user
  user:setting                                  Read and modify user settings
  user:sync-account-data                        sync user backend data to accounts table for configured users

### Admin delegation

 admin-delegation
  admin-delegation:add                          add setting delegation to a group
  admin-delegation:remove                       remove settings delegation from a group
  admin-delegation:show                         show delegated settings

### Subadmin

https://docs.nextcloud.com/server/latest/admin_manual/configuration_user/instruction_set_for_users.html#promote-user-to-subadmin

### Grupos

 group
  group:add                                     Add a group
    docker exec -u 33 nextcloud-docker-app-1 php occ group:add $GROUP

  group:adduser                                 add a user to a group
    docker exec -u 33 nextcloud-docker-app-1 php occ group:adduser $GROUP $USER
  group:delete                                  Remove a group
  group:info                                    Show information about a group
  group:list                                    list configured groups
  group:removeuser                              remove a user from a group
 
 group_default_quota
  group_default_quota:get                       Get the default quota for a group
    docker exec -u 33 nextcloud-docker-app-1 php occ group_default_quota:set $GROUP_ID
  group_default_quota:list                      Lists all configured quotas
    docker exec -u 33 nextcloud-docker-app-1 php occ group_default_quota:list -n

  group_default_quota:set                       Set the default quota for a group
    docker exec -u 33 nextcloud-docker-app-1 php occ group_default_quota:set $GROUP_ID $GROUP_QUOTA

 groupquota
  groupquota:delete                             Delete the configured quota for a group
  groupquota:get                                Get the configured quota for a group
  groupquota:list                               Lists all configured quotas
  groupquota:set                                Set the configured quota for a group
  groupquota:used                               Get the used quota for a group
