#!/bin/bash -eu
# Regenerate the 'ticker' databases

logger 'entered regenerate.sh'

source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-all-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-weekly-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-daily-tickers-compose.yml up
source /home/vagrant/.bashrc; /bin/docker-compose -f /home/vagrant/generate-ranking-compose.yml up

logger 'exited regenerate.sh'
