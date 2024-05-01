#!/bin/bash

echo "Entered set_symlinks.sh..."

sudo mv /home/vagrant/configure.sh /usr/local/bin/configure.sh
sudo chmod +x /usr/local/bin/configure.sh
ln -sf /usr/local/bin/configure.sh /usr/local/bin/configure

sudo mv /home/vagrant/upgrade.sh /usr/local/bin/upgrade.sh
sudo chmod +x /usr/local/bin/upgrade.sh
ln -sf /usr/local/bin/upgrade.sh /usr/local/bin/upgrade

