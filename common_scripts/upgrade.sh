#!/bin/bash
# Pull latest tradr code

echo "Installing latest TRADR CLI..."
docker pull registry:5000/tradr-cli
echo ''

echo "Installing latest TRADR applications..."
docker pull registry:5000/tradr-scanner
