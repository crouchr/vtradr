#!/bin/bash
# Pull latest TRADR code

echo ' '
echo "Installing latest TRADR CLI..."
echo "------------------------------"
docker pull registry:5000/tradr-cli
echo ' '

echo "Installing TRADR Stock Scanner..."
echo "---------------------------------"
docker pull registry:5000/tradr-scanner
echo ' '

echo "Installing latest TRADR Bitcoin Grabber..."
echo "------------------------------------------"
docker pull registry:5000/tradr-bitcoin-grabber
echo ' '

