#!/bin/bash

echo "Entered setup-profile.sh..."

function set_in_profile() {
  echo "$1" >> /home/vagrant/.bashrc
}

set_in_profile "export VONAGE_API_SECRET=$VONAGE_API_SECRET"
set_in_profile "export FMP_FREE_API_KEY=$FMP_FREE_API_KEY"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY"
set_in_profile "export ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY"
set_in_profile "export ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY"
# set_in_profile "export SQL_DB_HOSTNAME=$SQL_DB_HOSTNAME"
# set_in_profile "export PROTONMAIL_BRIDGE_HOSTNAME=$PROTONMAIL_BRIDGE_HOSTNAME"
# set_in_profile "export PROTONMAIL_BRIDGE_PORT=$PROTONMAIL_BRIDGE_PORT"

# stop error message
touch /home/vagrant/.Xauthority

echo "Exited setup-profile.sh..."
echo ""
echo "VBox has now booted, use 'vagrant ssh' to SSH into it."