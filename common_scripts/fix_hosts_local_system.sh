#!/bin/bash
# This only runs on Ermin nodes

logger 'entered fix_hosts_local_system.sh'

echo '' >> /etc/hosts
echo '# Added during vagrant up to override public DNS entry' >> /etc/hosts
echo '192.168.1.4 www.tradr.click' >> /etc/hosts
echo '' >> /etc/hosts

logger 'exited fix_hosts_local_system.sh'
