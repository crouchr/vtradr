#!/bin/bash
# Run by user from /home/vagrant to bring up tradr cli docker container
# Run as root to get mariadb to work
# Run as privileged to get sound to work - it doesn't work at the moment
docker pull registry:5000/tradr-cli
docker run -u root --quiet --privileged \
--network host \
--log-driver=json-file \
--log-opt max-size=10m \
--log-opt max-file=10 \
-v /var/lib/mysql/mysql.sock:/mysql.sock \
-v ./reports:/reports \
-v ./yahoo_fin_historical_data:/yahoo_fin_historical_data \
-v ./html:/html \
--env "TRADR_USERNAME=$USER" \
--env "SQL_DB_HOSTNAME=$SQL_DB_HOSTNAME" \
--env "PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY" \
--env "ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY" \
--env "ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY" \
--env "YAHOO_FREE_API_KEY=NONE_REQUIRED" \
-it registry:5000/tradr-cli
