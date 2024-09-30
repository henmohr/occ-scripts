#!/bin/bash
# Retorna um report de usuários e pastas nos servidor
#
# Pode haver uma discrepância entre o número total de usuários comparado ao número de usuários ativos e o número de usuários desabilitados. 
# Usuários que nunca efetuaram login antes não são contados como usuários ativos ou desabilitados. 
# Alguns backends de usuário também não permitem uma contagem para o número de usuários.


docker exec -u 33 nextcloud-docker-app-1 php occ user:report

