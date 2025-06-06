#!/bin/bash
# Note : This does NOT set ENV vars for root user

echo "Entered setup_env_vars.sh to set ENV vars for users..."

####
rm -rf /home/admin/.tradrrc
rm -rf /home/adrian/.tradrrc
rm -rf /home/amelia/.tradrrc
rm -rf /home/banks/.tradrrc
rm -rf /home/bitcoin/.tradrrc
rm -rf /home/bollinger/.tradrrc
rm -rf /home/candlestick/.tradrrc
rm -rf /home/chris/.tradrrc
rm -rf /home/commodities/.tradrrc
rm -rf /home/correlation/.tradrrc
rm -rf /home/currency/.tradrrc
rm -rf /home/dividend/.tradrrc
rm -rf /home/elliot/.tradrrc
rm -rf /home/energy/.tradrrc
rm -rf /home/futures/.tradrrc
rm -rf /home/global/.tradrrc
rm -rf /home/gold/.tradrrc
rm -rf /home/heathcare/.tradrrc
rm -rf /home/industrials/.tradrrc
rm -rf /home/insider/.tradrrc
rm -rf /home/johnnybench/.tradrrc
rm -rf /home/miners/.tradrrc
rm -rf /home/mrp/.tradrrc
rm -rf /home/oil/.tradrrc
rm -rf /home/oscar/.tradrrc
rm -rf /home/quantum/.tradrrc
rm -rf /home/qwave/.tradrrc
rm -rf /home/reits/.tradrrc
rm -rf /home/revesting/.tradrrc
rm -rf /home/revesting2/.tradrrc
rm -rf /home/revesting3/.tradrrc
rm -rf /home/revesting4/.tradrrc
rm -rf /home/richard/.tradrrc
rm -rf /home/sector/.tradrrc
rm -rf /home/sector2/.tradrrc
rm -rf /home/shorts/.tradrrc
rm -rf /home/silver/.tradrrc
rm -rf /home/simon/.tradrrc
rm -rf /home/sniper/.tradrrc
rm -rf /home/staples/.tradrrc
rm -rf /home/tester/.tradrrc
rm -rf /home/volume/.tradrrc
rm -rf /home/watcher/.tradrrc
rm -rf /home/water/.tradrrc
rm -rf /home/weinstein/.tradrrc

####
touch /home/admin/.tradrrc
touch /home/adrian/.tradrrc
touch /home/amelia/.tradrrc
touch /home/banks/.tradrrc
touch /home/bitcoin/.tradrrc
touch /home/bollinger/.tradrrc
touch /home/candlestick/.tradrrc
touch /home/chris/.tradrrc
touch /home/commodities/.tradrrc
touch /home/correlation/.tradrrc
touch /home/currency/.tradrrc
touch /home/dividend/.tradrrc
touch /home/elliot/.tradrrc
touch /home/energy/.tradrrc
touch /home/futures/.tradrrc
touch /home/global/.tradrrc
touch /home/gold/.tradrrc
touch /home/healthcare/.tradrrc
touch /home/industrials/.tradrrc
touch /home/insider/.tradrrc
touch /home/johnnybench/.tradrrc
touch /home/miners/.tradrrc
touch /home/mrp/.tradrrc
touch /home/oil/.tradrrc
touch /home/oscar/.tradrrc
touch /home/quantum/.tradrrc
touch /home/qwave/.tradrrc
touch /home/reits/.tradrrc
touch /home/revesting/.tradrrc
touch /home/revesting2/.tradrrc
touch /home/revesting3/.tradrrc
touch /home/revesting4/.tradrrc
touch /home/richard/.tradrrc
touch /home/sector/.tradrrc
touch /home/sector2/.tradrrc
touch /home/shorts/.tradrrc
touch /home/silver/.tradrrc
touch /home/simon/.tradrrc
touch /home/sniper/.tradrrc
touch /home/staples/.tradrrc
touch /home/tester/.tradrrc
touch /home/volume/.tradrrc
touch /home/watcher/.tradrrc
touch /home/water/.tradrrc
touch /home/weinstein/.tradrrc

####
chmod 777 /home/admin/.tradrrc
chmod 777 /home/adrian/.tradrrc
chmod 777 /home/amelia/.tradrrc
chmod 777 /home/banks/.tradrrc
chmod 777 /home/bitcoin/.tradrrc
chmod 777 /home/bollinger/.tradrrc
chmod 777 /home/candlestick/.tradrrc
chmod 777 /home/chris/.tradrrc
chmod 777 /home/commodities/.tradrrc
chmod 777 /home/correlation/.tradrrc
chmod 777 /home/currency/.tradrrc
chmod 777 /home/dividend/.tradrrc
chmod 777 /home/elliot/.tradrrc
chmod 777 /home/energy/.tradrrc
chmod 777 /home/futures/.tradrrc
chmod 777 /home/global/.tradrrc
chmod 777 /home/gold/.tradrrc
chmod 777 /home/healthcare/.tradrrc
chmod 777 /home/industrials/.tradrrc
chmod 777 /home/insider/.tradrrc
chmod 777 /home/johnnybench/.tradrrc
chmod 777 /home/miners/.tradrrc
chmod 777 /home/mrp/.tradrrc
chmod 777 /home/oil/.tradrrc
chmod 777 /home/oscar/.tradrrc
chmod 777 /home/quantum/.tradrrc
chmod 777 /home/qwave/.tradrrc
chmod 777 /home/reits/.tradrrc
chmod 777 /home/revesting/.tradrrc
chmod 777 /home/revesting2/.tradrrc
chmod 777 /home/revesting3/.tradrrc
chmod 777 /home/revesting4/.tradrrc
chmod 777 /home/richard/.tradrrc
chmod 777 /home/sector/.tradrrc
chmod 777 /home/sector2/.tradrrc
chmod 777 /home/shorts/.tradrrc
chmod 777 /home/silver/.tradrrc
chmod 777 /home/simon/.tradrrc
chmod 777 /home/sniper/.tradrrc
chmod 777 /home/staples/.tradrrc
chmod 777 /home/tester/.tradrrc
chmod 777 /home/volume/.tradrrc
chmod 777 /home/watcher/.tradrrc
chmod 777 /home/water/.tradrrc
chmod 777 /home/weinstein/.tradrrc


####
function set_in_profile() {
echo "$1" >> /home/vagrant/.bashrc
echo "$1" >> /home/admin/.tradrrc
echo "$1" >> /home/adrian/.tradrrc
echo "$1" >> /home/amelia/.tradrrc
echo "$1" >> /home/banks/.tradrrc
echo "$1" >> /home/bitcoin/.tradrrc
echo "$1" >> /home/bollinger/.tradrrc
echo "$1" >> /home/candlestick/.tradrrc
echo "$1" >> /home/chris/.tradrrc
echo "$1" >> /home/commodities/.tradrrc
echo "$1" >> /home/correlation/.tradrrc
echo "$1" >> /home/currency/.tradrrc
echo "$1" >> /home/dividend/.tradrrc
echo "$1" >> /home/elliot/.tradrrc
echo "$1" >> /home/futures/.tradrrc
echo "$1" >> /home/energy/.tradrrc
echo "$1" >> /home/global/.tradrrc
echo "$1" >> /home/gold/.tradrrc
echo "$1" >> /home/healthcare/.tradrrc
echo "$1" >> /home/industrials/.tradrrc
echo "$1" >> /home/insider/.tradrrc
echo "$1" >> /home/johnnybench/.tradrrc
echo "$1" >> /home/miners/.tradrrc
echo "$1" >> /home/mrp/.tradrrc
echo "$1" >> /home/oil/.tradrrc
echo "$1" >> /home/oscar/.tradrrc
echo "$1" >> /home/quantum/.tradrrc
echo "$1" >> /home/qwave/.tradrrc
echo "$1" >> /home/reits/.tradrrc
echo "$1" >> /home/revesting/.tradrrc
echo "$1" >> /home/revesting2/.tradrrc
echo "$1" >> /home/revesting3/.tradrrc
echo "$1" >> /home/revesting4/.tradrrc
echo "$1" >> /home/richard/.tradrrc
echo "$1" >> /home/sector/.tradrrc
echo "$1" >> /home/sector2/.tradrrc
echo "$1" >> /home/shorts/.tradrrc
echo "$1" >> /home/silver/.tradrrc
echo "$1" >> /home/simon/.tradrrc
echo "$1" >> /home/sniper/.tradrrc
echo "$1" >> /home/staples/.tradrrc
echo "$1" >> /home/tester/.tradrrc
echo "$1" >> /home/volume/.tradrrc
echo "$1" >> /home/watcher/.tradrrc
echo "$1" >> /home/water/.tradrrc
echo "$1" >> /home/weinstein/.tradrrc
}

set_in_profile "export ALPHAVANTAGE_BASIC_API_KEY=$ALPHAVANTAGE_BASIC_API_KEY"
set_in_profile "export ALPHAVANTAGE_FREE_API_KEY=$ALPHAVANTAGE_FREE_API_KEY"
set_in_profile "export SQL_DB_HOSTNAME=$SQL_DB_HOSTNAME"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_HOSTNAME=$PROTONMAIL_PLUS_BRIDGE_HOSTNAME"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_PORT=$PROTONMAIL_PLUS_BRIDGE_PORT"
set_in_profile "export PROTONMAIL_PLUS_BRIDGE_KEY=$PROTONMAIL_PLUS_BRIDGE_KEY"
set_in_profile "export NAMECHEAP_DNS_PASSWORD=$NAMECHEAP_DNS_PASSWORD"
set_in_profile "export CHATGPT_API_KEY=$CHATGPT_API_KEY"

# stop error message
touch /home/vagrant/.Xauthority

echo "Exited setup_env_vars.sh..."
echo ""
echo "VBox has now booted, use 'vagrant ssh' to SSH into it."
