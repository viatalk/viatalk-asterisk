#!/bin/sh

# Setup asterisk configs for ViaTalk

# Replace these with your credentials from
# https://cp.viatalk.com/viatalk/cp/softphone
# Then run ./setup.sh

VTNUMBER="15554448888"
VTSERVER="megatron.vtnoc.net"
VTPASSWORD="secretpassword"

sed -i'.bak' -e"s/{{VTNUMBER}}/$VTNUMBER/g" sip.conf
sed -i'.bak' -e"s/{{VTSERVER}}/$VTSERVER/g" sip.conf
sed -i'.bak' -e"s/{{VTPASSWORD}}/$VTPASSWORD/g" sip.conf
sed -i'.bak' -e"s/{{VTNUMBER}}/$VTNUMBER/g" extensions.conf
sed -i'.bak' -e"s/{{VTAREACODE}}/${VTNUMBER:1:3}/g" extensions.conf
