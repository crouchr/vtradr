#!/bin/bash
# Note : This does NOT set ENV vars for root user

echo "Entered setup-profile.sh to set ENV vars for vagrant user..."

function set_in_profile() {
  echo "$1" >> /home/vagrant/.bashrc
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

echo "Exited setup-profile.sh..."
echo ""
echo "VBox has now booted, use 'vagrant ssh' to SSH into it."
