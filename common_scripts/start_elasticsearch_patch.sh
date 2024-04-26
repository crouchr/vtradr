#!/bin/bash

# FIXME : this doesn't seem to be possible in the Packer run - to be investigated

echo "Entered start_elasticsearch_patch.sh..."

sudo systemctl start elasticsearch.service

echo "Exited start_elasticsearch_patch.sh..."
