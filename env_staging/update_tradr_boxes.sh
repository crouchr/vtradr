#!/bin/bash
# Download the latest version of the two tradr boxes
ping -c 3 www.tradr.click
vagrant box add http://www.tradr.click/boxes/tradr7/tradr7-metadata.json