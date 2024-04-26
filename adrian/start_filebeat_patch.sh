#!/bin/bash

# FIXME : this doesn't seem to be possible in the Packer run - to be investigated

echo "Entered start_filebeat_patch.sh..."

sudo systemctl start filebeat

echo "Exited start_filebeat_patch.sh..."
