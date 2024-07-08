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

logger 'exited upgrade.sh'
