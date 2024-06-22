#!/bin/bash -eu
# Pull latest TRADR docker images
# Move to a per-environment basis

logger 'entered upgrade.sh'

echo ' '
echo "Installing latest TRADR CLI"
echo "---------------------------"
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

echo "Installing latest TRADR Exchange Rate Service"
echo "---------------------------------------------"
docker pull registry:5000/tradr-exchange-rate-service
echo ' '

echo "Installing latest TRADR All Stocks Stage Classifier (spot Weinstein)"
echo "--------------------------------------------------------------------"
docker pull registry:5000/tradr-all-stocks-stage-classifier
echo ' '

echo "Installing latest TRADR Stage Analysis Daily Report"
echo "---------------------------------------------------"
docker pull registry:5000/tradr-daily-report
echo ' '

logger 'exited upgrade.sh'
