#!/bin/bash
# Copyright (c) 2022 fithwum
# All rights reserved

# Variables.
echo " "
echo "INFO ! ."


# Main install (Debian).
wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian bullseye main">/etc/apt/sources.list.d/openvpn-as-repo.list
apt update && apt -y install openvpn-as

sleep 1

# Set permissions.
chown 99:100 -R /OpenVPN-as
chmod 777 -R /OpenVPN-as

sleep 1

# Run OpenVPN-as server.
echo " "
echo "INFO ! ."


exit
