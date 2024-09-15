#!/bin/bash -eu
# Pull latest TRADR docker images
# Move to a per-environment basis

logger 'entered upgrade.sh'

echo ' '
echo "#1 Installing latest TRADR CLI"
echo "------------------------------"
docker pull registry:5000/tradr-cli
echo ' '

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

echo "#2 Installing latest TRADR Exchange Rate Service"
echo "------------------------------------------------"
docker pull registry:5000/tradr-exchange-rate-service
echo ' '

echo "#3 Installing latest TRADR All Stocks Stage Classifier (spot Weinstein)"
echo "-----------------------------------------------------------------------"
docker pull registry:5000/tradr-all-stocks-stage-classifier
echo ' '

echo "#4 Installing latest TRADR Stage Change Alerter"
echo "-----------------------------------------------"
docker pull registry:5000/tradr-stage-change-alerter
echo ' '

echo "#5 Installing latest TRADR Candlestick Analyser"
echo "-----------------------------------------------"
docker pull registry:5000/tradr-candlestick-analyser
echo ' '

echo "#6 Installing latest TRADR Generate All Tickers"
echo "-----------------------------------------------"
docker pull registry:5000/tradr-generate-all-tickers
echo ' '

echo "#7 Installing latest TRADR Realtime Monitor"
echo "-------------------------------------------"
docker pull registry:5000/tradr-realtime-monitor
echo ' '

echo "#8 Installing latest TRADR Open Trades Monitor"
echo "----------------------------------------------"
docker pull registry:5000/tradr-open-trades-monitor
echo ' '

echo "#9 Installing latest TRADR RSI Buy Sniper"
echo "-----------------------------------------"
docker pull registry:5000/tradr-rsi-buy-sniper
echo ' '

echo "#10 Installing latest TRADR RSI Sell Sniper"
echo "-------------------------------------------"
docker pull registry:5000/tradr-rsi-sell-sniper
echo ' '

# echo "#11 Installing latest TRADR Vonage API Test Script"
# echo "--------------------------------------------------"
# docker pull registry:5000/tradr-vonage-api-test-script
# echo ' '

echo "#11 Installing latest TRADR Ops Monitor"
echo "---------------------------------------"
docker pull registry:5000/tradr-ops-monitor
echo ' '

echo "#12 Installing latest NameCheap Updater"
echo "---------------------------------------"
docker pull registry:5000/namecheap-updater
echo ' '

echo "#13 Installing latest Ex Div Bot"
echo "--------------------------------"
docker pull registry:5000/tradr-exdivbot
echo ' '

echo "#14 Installing latest Find Hard Asset Stocks"
echo "--------------------------------------------"
docker pull registry:5000/tradr-find-hard-asset-stocks
echo ' '

echo "#15 Installing latest Micropython/TRADR code"
echo "--------------------------------------------"
docker pull registry:5000/micropython
echo ' '

echo "#16 Installing latest Patternz Data Grabber"
echo "-------------------------------------------"
docker pull registry:5000/tradr-patternz-data-grabber
echo ' '

logger 'exited upgrade.sh'
