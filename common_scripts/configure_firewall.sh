#!/bin/bash

# FIXME : this doesn't seem to be possible in the Packer run - to be investigated
# Allow SSH from certain public ranges to cut down on the internet scanner noise

echo "Entered configure_firewall.sh..."

# Start and enable firewalld if not already running
#sudo systemctl start firewalld
#sudo systemctl enable firewalld

# Allow all incoming traffic from 192.168.1.0/24
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix ="Access from LAN 192.168" source address="192.168.1.0/24" accept'

# Allow all incoming traffic from 172.31.0.0/16
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix ="Access from LAN 172.31" source address="172.31.0.0/16" accept'

# Allow SSH traffic from 86.169.0.0/16
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" log prefix ="SSHD from Adrian" source address="86.169.0.0/16" service name="ssh" accept'

# Reload firewalld to apply the changes
sudo firewall-cmd --reload

# Confirmation message
echo "Firewall rules configured successfully:
- Allowed all traffic from 192.168.1.0/24
- Allowed all traffic from 172.31.0.0/16
- Allowed SSH traffic from 86.169.0.0/16"

echo "Exited configure_firewall.sh"
