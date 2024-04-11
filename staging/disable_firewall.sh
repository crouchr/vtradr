#!/bin/bash

# FIXME : this doesn't seem tp be possible in the Packer run - to be investigated

echo "Entered disable-firewall.sh..."

# sudo firewall-cmd --state
sudo systemctl stop firewalld
sudo systemctl disable firewalld
# sudo firewall-cmd --state

echo "Exited disable-firewall.sh..."
