#!/bin/bash

echo "Entered setup-profile.sh..."
# env

function set_in_profile() {
  echo "$1" >> /home/vagrant/.bashrc
}

set_in_profile "export VONAGE_API_SECRET=$VONAGE_API_SECRET"
set_in_profile "export FMP_FREE_API_KEY=$FMP_FREE_API_KEY"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY"
set_in_profile "export ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY"
set_in_profile "export ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY"
