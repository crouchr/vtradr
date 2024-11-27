#!/bin/bash
# Note : This does NOT set ENV vars for root user

echo "Entered setup_env_vars.sh to set ENV vars for users..."

rm -rf /home/richard/.tradrrc
rm -rf /home/adrian/.tradrrc

touch /home/richard/.tradrrc
touch /home/adrian/.tradrrc

chmod 777 /home/richard/.tradrrc
chmod 777 /home/adrian/.tradrrc

function set_in_profile() {
  echo "$1" >> /home/vagrant/.bashrc
  echo "$1" >> /home/richard/.tradrrc
  echo "$1" >> /home/adrian/.tradrrc
}

set_in_profile "export VONAGE_API_SECRET=$VONAGE_API_SECRET"
set_in_profile "export VONAGE_API_KEY=$VONAGE_API_KEY"
set_in_profile "export FMP_FREE_API_KEY=$FMP_FREE_API_KEY"
set_in_profile "export ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY"
set_in_profile "export ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY"
set_in_profile "export SQL_DB_HOSTNAME=$SQL_DB_HOSTNAME"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_HOSTNAME=$PROTONMAIL_PLUS_BRIDGE_HOSTNAME"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_PORT=$PROTONMAIL_PLUS_BRIDGE_PORT"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY"
set_in_profile "export NAMECHEAP_DNS_PASSWORD=$NAMECHEAP_DNS_PASSWORD"

# stop error message
touch /home/vagrant/.Xauthority

echo "Exited setup_env_vars.sh..."
echo ""
echo "VBox has now booted, use 'vagrant ssh' to SSH into it."
