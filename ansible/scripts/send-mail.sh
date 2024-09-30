#!/bin/bash
# Need pingme installed

# Recebe senha e email como parametro
# Envia nova senha para o usuário

pingme email --pass ''' \
--sender '' \
--rec "$2" \
--msg "Sua nova senha é: $1" \
--sub 'Assunto' \
--host 'mail.gmail.com' \
--port '587'
