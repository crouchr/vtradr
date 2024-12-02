#!/bin/bash

# FIXME : this doesn't seem to be possible in the Packer run - to be investigated
# Allow SSH only from the LAN as remote access is via the Jumpbox (Ubuntu Lenovo) on 192.168.1.137

echo "Entered configure_firewall.sh..."

# Start and enable firewalld if not already running
#sudo systemctl start firewalld
#sudo systemctl enable firewalld

# Allow SSH from Jumpbox 192.168.1.137
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix="Access from JUMPBOX: " source address="192.168.1.137" port port=22 protocol=tcp accept'

# Allow all incoming traffic from 192.168.1.0/24
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix="Access from LAN 192.168: " source address="192.168.1.0/24" accept'

# Allow all incoming traffic from 172.16.0.0/12 Monitor this to see if ANY 172.x.x.x access is needed to Tradr to run OK
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix="Access from LAN 172.31: " source address="172.16.0.0/12" accept'

# Explicitly drop ALL other traffic
sudo firewall-cmd --permanent --add-rich-rule='rule family=ipv4 log prefix="FIREWALL-DROP: " level=info'

# Reload firewalld to apply the changes
sudo firewall-cmd --reload

# Confirmation message
echo "Firewall rules configured successfully:
- Allowed all traffic from 192.168.1.0/24
- Allowed all traffic from 172.16.0.0/12"

echo "Exited configure_firewall.sh"
