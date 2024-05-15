#!/bin/bash -eu
# Pull latest TRADR docker images

logger 'entered upgrade.sh'

echo ' '
echo "Installing latest TRADR CLI"
echo "---------------------------"
docker pull registry:5000/tradr-cli
echo ' '

echo "Installing TRADR Stock Scanner"
echo "------------------------------"
docker pull registry:5000/tradr-scanner
echo ' '

echo "Installing latest TRADR Bitcoin Grabber"
echo "---------------------------------------"
docker pull registry:5000/tradr-bitcoin-grabber
echo ' '

echo "Installing latest TRADR Ibit Grabber"
echo "------------------------------------"
docker pull registry:5000/tradr-ibit-grabber
echo ' '

echo "Installing latest TRADR Indices Grabber"
echo "---------------------------------------"
docker pull registry:5000/tradr-indices-grabber
echo ' '

echo "Installing latest TRADR Treasuries Grabber"
echo "------------------------------------------"
docker pull registry:5000/tradr-treasuries-grabber
echo ' '

echo "Installing latest TRADR Commodities Grabber"
echo "-------------------------------------------"
docker pull registry:5000/tradr-commodities-grabber
echo ' '

logger 'exited upgrade.sh'