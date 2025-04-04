#!/bin/bash
# From the CLI, run the various generate_tickers scripts if they were disrupted

echo "Entered data_collection.sh..."

source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-all-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-weekly-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-daily-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/grab-suspected-insider-trades-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/patternz-data-grabber-tickers-compose.yml up
# source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/parse-patternz-trades-file-compose.yml up

echo "Exited data_collection.sh..."
