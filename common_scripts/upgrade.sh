#!/bin/bash -eu
# Pull latest TRADR docker images
# Move to a per-environment basis
# some are commented out as they are not in current development/use at the moment

logger 'entered upgrade.sh'

echo ' '
echo "#0 Installing latest TRADR CLI"
echo "------------------------------"
docker pull registry:5000/tradr-cli
echo ' '

##################
# SERVICES FIRST #
##################
echo "#1 Installing latest TRADR Exchange Rate Service"
echo "------------------------------------------------"
docker pull registry:5000/tradr-exchange-rate-service
echo ' '

echo "#2 Installing latest TRADR Candlestick Analyser"
echo "-----------------------------------------------"
docker pull registry:5000/tradr-candlestick-analyser
echo ' '

echo "#3 Installing latest TRADR Expert System Service"
echo "------------------------------------------------"
docker pull registry:5000/tradr-expert-service

############
# THE REST #
############
echo ' '
echo "#4 Installing latest TRADR Generate All Tickers"
echo "-----------------------------------------------"
docker pull registry:5000/tradr-generate-all-tickers
echo ' '

echo "#5 Installing latest TRADR Open Trades Monitor"
echo "----------------------------------------------"
docker pull registry:5000/tradr-open-trades-monitor
echo ' '

echo "#6 Installing latest NameCheap Updater"
echo "--------------------------------------"
docker pull registry:5000/namecheap-updater
echo ' '

echo "#7 Installing latest Patternz Data Grabber Tickers"
echo "--------------------------------------------------"
docker pull registry:5000/tradr-patternz-data-grabber-tickers
echo ' '

echo "#8 Installing latest Monitor Disk Space"
echo "---------------------------------------"
docker pull registry:5000/tradr-monitor-disk-space
echo ' '

echo "#9 Installing Parse Patternz Trades File"
echo "----------------------------------------"
docker pull registry:5000/tradr-parse-patternz-trades-file
echo ' '

echo "#10 Installing Insider Trades Grabber"
echo "-------------------------------------"
docker pull registry:5000/tradr-grab-suspected-insider-trades
echo ' '

echo "#11 Installing TRADR Generate Weekly Table"
echo "------------------------------------------"
docker pull registry:5000/tradr-generate-weekly-tickers
echo ' '

echo "#12 Installing TRADR Generate Daily Table"
echo "-----------------------------------------"
docker pull registry:5000/tradr-generate-daily-tickers
echo ' '

echo "#13 Installing TRADR Generate Ranking Table"
echo "-------------------------------------------"
docker pull registry:5000/tradr-generate-ranking
echo ' '

echo "#14 Installing TRADR Activity Detector"
echo "--------------------------------------"
docker pull registry:5000/tradr-activity-detector
echo ' '

echo "#15 Installing TRADR Generate Insider Trades"
echo "--------------------------------------------"
docker pull registry:5000/tradr-generate-insider-trades
echo ' '

echo "#16 Installing TRADR Generate Bitcoin Treasuries Table"
echo "------------------------------------------------------"
docker pull registry:5000/tradr-generate-bitcoin-treasuries-table
echo ' '

logger 'exited upgrade.sh'



# echo "Installing TRADR Swing Trader Stock Scanner"
# echo "-------------------------------------------"
# docker pull registry:5000/tradr-scanner
# echo ' '

# echo "Installing latest TRADR Bitcoin Grabber"
# echo "---------------------------------------"
# docker pull registry:5000/tradr-bitcoin-grabber
# echo ' '

# echo "Installing latest TRADR Ibit Grabber"
# echo "------------------------------------"
# docker pull registry:5000/tradr-ibit-grabber
# echo ' '

# echo "Installing latest TRADR Indices Grabber"
# echo "---------------------------------------"
# docker pull registry:5000/tradr-indices-grabber
# echo ' '

# echo "Installing latest TRADR Treasuries Grabber"
# echo "------------------------------------------"
# docker pull registry:5000/tradr-treasuries-grabber
# echo ' '

# echo "Installing latest TRADR Commodities Grabber"
# echo "-------------------------------------------"
# docker pull registry:5000/tradr-commodities-grabber
# echo ' '

# echo "Installing latest TRADR Tepper Indicators"
# echo "-----------------------------------------"
# docker pull registry:5000/tradr-tepper-indicators
# echo ' '

# echo "Installing latest TRADR Core Ratios"
# echo "-----------------------------------"
# docker pull registry:5000/tradr-core-ratios
# echo ' '

# echo "Installing latest TRADR Assets Tracker"
# echo "--------------------------------------"
# docker pull registry:5000/tradr-assets-tracker
# echo ' '


# can be permanently deleted
#echo "#3 Installing latest TRADR All Stocks Stage Classifier (spot Weinstein)"
#echo "-----------------------------------------------------------------------"
#docker pull registry:5000/tradr-all-stocks-stage-classifier
#echo ' '

# can be permanently deleted
#echo "#4 Installing latest TRADR Stage Change Alerter"
#echo "-----------------------------------------------"
#docker pull registry:5000/tradr-stage-change-alerter
#echo ' '


#echo "#7 Installing latest TRADR Realtime Monitor"
#echo "-------------------------------------------"
#docker pull registry:5000/tradr-realtime-monitor
#echo ' '

#echo "#9 Installing latest TRADR RSI Buy Sniper"
#echo "-----------------------------------------"
#docker pull registry:5000/tradr-rsi-buy-sniper
#echo ' '

#echo "#10 Installing latest TRADR RSI Sell Sniper"
#echo "-------------------------------------------"
#docker pull registry:5000/tradr-rsi-sell-sniper
#echo ' '

# echo "#11 Installing latest TRADR Vonage API Test Script"
# echo "--------------------------------------------------"
# docker pull registry:5000/tradr-vonage-api-test-script
# echo ' '

#echo "#11 Installing latest TRADR Ops Monitor"
#echo "---------------------------------------"
#docker pull registry:5000/tradr-ops-monitor
#echo ' '

#echo "#13 Installing latest Ex Div Bot"
#echo "--------------------------------"
#docker pull registry:5000/tradr-exdivbot
#echo ' '

# can be permanently deleted
#echo "#14 Installing latest Find Hard Asset Stocks"
#echo "--------------------------------------------"
#docker pull registry:5000/tradr-find-hard-asset-stocks
#echo ' '

# not currently in active use so comment out for now
#echo "#15 Installing latest Micropython/TRADR code"
#echo "--------------------------------------------"
#docker pull registry:5000/micropython
#echo ' '
# not currently in active use so comment out for now
#echo "#18 Installing latest OHLC MQTT Writer"
#echo "--------------------------------------"
#docker pull registry:5000/tradr-ohlc-mqtt-writer
#echo ' '

# not currently in active use so comment out for now
#echo "#19 Installing latest OHLC MQTT Candle Alerter"
#echo "----------------------------------------------"
#docker pull registry:5000/tradr-ohlc-mqtt-candle-alerter
#echo ' '

#echo "#22 Installing Bitcoin DCA Alerter"
#echo "----------------------------------"
#docker pull registry:5000/tradr-bitcoin-dca-alerter
#echo ' '

#echo "#23 Installing MSTR DCA Alerter"
#echo "-------------------------------"
#docker pull registry:5000/tradr-mstr-dca-alerter
#echo ' '

#echo "#7 Installing latest Patternz Data Grabber"
#echo "------------------------------------------"
#docker pull registry:5000/tradr-patternz-data-grabber
#echo ' '

#echo "#25 Installing TRADR WebServer"
#echo "------------------------------"
#docker pull registry:5000/tradr-apache
#echo ' '