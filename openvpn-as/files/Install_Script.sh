#!/bin/bash
# Copyright (c) 2022 fithwum
# All rights reserved

# Variables.
echo " "
echo "INFO ! ."


# Main install (Debian).

sleep 1

# Set permissions.
chown 99:100 -R /OpenVPN-as
chmod 777 -R /OpenVPN-as

sleep 1

# Run OpenVPN-as server.
echo " "
echo "INFO ! ."
# systemctl openvpn-as -f enable
exec openvpn-as

exit
