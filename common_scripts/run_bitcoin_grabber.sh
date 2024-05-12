#!/bin/bash -eu
# Run automatically from /home/vagrant to run stocks scanner (for troubleshooting) docker container
docker run -d -u root --network host \
-v /var/lib/mysql/mysql.sock:/mysql.sock \
--env "SQL_DB_HOSTNAME=$SQL_DB_HOSTNAME" \
--env "FMP_FREE_API_KEY=$FMP_FREE_API_KEY" \
--env "VONAGE_API_SECRET=$VONAGE_API_SECRET" \
--env "VONAGE_API_KEY=$VONAGE_API_KEY" \
--env "PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY" \
--env "ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY" \
--env "ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY" \
--env "YAHOO_FREE_API_KEY=NONE_REQUIRED" \
registry:5000/tradr-bitcoin-grabber
