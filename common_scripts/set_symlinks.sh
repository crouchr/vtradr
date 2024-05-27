#!/bin/bash

echo "Entered set_symlinks.sh..."

sudo mv /home/vagrant/cli.sh /usr/local/bin/cli.sh
sudo chmod +x /usr/local/bin/cli.sh
ln -sf /usr/local/bin/cli.sh /usr/local/bin/cli

sudo mv /home/vagrant/upgrade.sh /usr/local/bin/upgrade.sh
sudo chmod +x /usr/local/bin/upgrade.sh
ln -sf /usr/local/bin/upgrade.sh /usr/local/bin/upgrade

sudo mv /home/vagrant/help_tradr.sh /usr/local/bin/help_tradr.sh
sudo chmod +x /usr/local/bin/help_tradr.sh
ln -sf /usr/local/bin/help_tradr.sh /usr/local/bin/help_tradr

sudo mv /home/vagrant/run_tradr.sh /usr/local/bin/run_tradr.sh
sudo chmod +x /usr/local/bin/run_tradr.sh
ln -sf /usr/local/bin/run_tradr.sh /usr/local/bin/run_tradr

sudo mv /home/vagrant/backup_database.sh /usr/local/bin/backup_database.sh
sudo chmod +x /usr/local/bin/backup_database.sh
ln -sf /usr/local/bin/backup_database.sh /usr/local/bin/backup

sudo mv /home/vagrant/restore_database.sh /usr/local/bin/restore_database.sh
sudo chmod +x /usr/local/bin/restore_database.sh
ln -sf /usr/local/bin/restore_database.sh /usr/local/bin/restore

sudo mv /home/vagrant/version_tradr.sh /usr/local/bin/version_tradr.sh
sudo chmod +x /usr/local/bin/version_tradr.sh
ln -sf /usr/local/bin/version_tradr.sh /usr/local/bin/version

# No longer needed
# sudo mv /home/vagrant/run_stocks_scanner.sh /usr/local/bin/run_stocks_scanner.sh
# sudo chmod +x /usr/local/bin/run_stocks_scanner.sh
# ln -sf /usr/local/bin/run_stocks_scanner.sh /usr/local/bin/run_stocks_scanner

# Run the stock grabbers
sudo mv /home/vagrant/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons.sh
sudo chmod +x /usr/local/bin/run_tradr_daemons.sh
ln -sf /usr/local/bin/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons

# Swing Trading scanner - no longer needed
# sudo mv /home/vagrant/run_swing_trader.sh /usr/local/bin/run_swing_trader.sh
# sudo chmod +x /usr/local/bin/run_swing_trader.sh
# ln -sf /usr/local/bin/run_swing_trader.sh /usr/local/bin/run_swing_trader

echo "Exited set_symlinks.sh..."
