#!/bin/bash

echo "Entered set_symlinks.sh..."

sudo mv /home/vagrant/cli.sh /usr/local/bin/cli.sh
sudo chmod +x /usr/local/bin/cli.sh
ln -sf /usr/local/bin/cli.sh /usr/local/bin/cli

sudo mv /home/vagrant/upgrade.sh /usr/local/bin/upgrade.sh
sudo chmod +x /usr/local/bin/upgrade.sh
ln -sf /usr/local/bin/upgrade.sh /usr/local/bin/upgrade

sudo mv /home/vagrant/help.sh /usr/local/bin/help.sh
sudo chmod +x /usr/local/bin/help.sh
ln -sf /usr/local/bin/help.sh /usr/local/bin/help

sudo mv /home/vagrant/run_tradr.sh /usr/local/bin/run_tradr.sh
sudo chmod +x /usr/local/bin/run_tradr.sh
ln -sf /usr/local/bin/run_tradr.sh /usr/local/bin/run_tradr

echo "Exited set_symlinks.sh..."
