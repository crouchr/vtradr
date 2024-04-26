#!/bin/bash
# Run by user from /home/vagrant to bring up tradr cli docker container
# Run as root to get mariadb to work
docker pull registry:5000/tradr-cli
docker run -u root --quiet \
--network host \
--log-driver=json-file \
--log-opt max-size=10m \
--log-opt max-file=10 \
-v /var/lib/mysql/mysql.sock:/mysql.sock \
--env "FMP_FREE_API_KEY=$FMP_FREE_API_KEY" \
--env "VONAGE_API_SECRET=$VONAGE_API_SECRET" \
--env "VONAGE_API_KEY=$VONAGE_API_KEY" \
--env "PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY" \
--env "ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY" \
--env "ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY" \
--env "YAHOO_FREE_API_KEY=NONE_REQUIRED" \
-it registry:5000/tradr-cli
