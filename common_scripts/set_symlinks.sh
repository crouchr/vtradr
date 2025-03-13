#!/bin/bash
# These are commands you run purely in the Vagrant Box and not inside the 'cli' or 'admin_cli' containers
echo "Entered set_symlinks.sh..."

sudo mv /home/vagrant/cli.sh /usr/local/bin/cli.sh
sudo chmod +x /usr/local/bin/cli.sh
ln -sf /usr/local/bin/cli.sh /usr/local/bin/cli

sudo mv /home/vagrant/man.sh /usr/local/bin/man.sh
sudo chmod +x /usr/local/bin/man.sh
ln -sf /usr/local/bin/man.sh /usr/local/bin/man

sudo mv /home/vagrant/upgrade.sh /usr/local/bin/upgrade.sh
sudo chmod +x /usr/local/bin/upgrade.sh
ln -sf /usr/local/bin/upgrade.sh /usr/local/bin/upgrade

sudo mv /home/vagrant/help_tradr.sh /usr/local/bin/help_tradr.sh
sudo chmod +x /usr/local/bin/help_tradr.sh
ln -sf /usr/local/bin/help_tradr.sh /usr/local/bin/help_tradr

sudo mv /home/vagrant/micropython.sh /usr/local/bin/micropython.sh
sudo chmod +x /usr/local/bin/micropython.sh
ln -sf /usr/local/bin/micropython.sh /usr/local/bin/micropython

sudo mv /home/vagrant/backup_database.sh /usr/local/bin/backup_database.sh
sudo chmod +x /usr/local/bin/backup_database.sh
ln -sf /usr/local/bin/backup_database.sh /usr/local/bin/backup

sudo mv /home/vagrant/backup_lts_database.sh /usr/local/bin/backup_lts_database.sh
sudo chmod +x /usr/local/bin/backup_lts_database.sh
ln -sf /usr/local/bin/backup_lts_database.sh /usr/local/bin/backup-lts

sudo mv /home/vagrant/restore_database.sh /usr/local/bin/restore_database.sh
sudo chmod +x /usr/local/bin/restore_database.sh
ln -sf /usr/local/bin/restore_database.sh /usr/local/bin/restore

sudo mv /home/vagrant/restore_lts_database.sh /usr/local/bin/restore_lts_database.sh
sudo chmod +x /usr/local/bin/restore_lts_database.sh
ln -sf /usr/local/bin/restore_lts_database.sh /usr/local/bin/restore-lts

sudo mv /home/vagrant/version_tradr.sh /usr/local/bin/version_tradr.sh
sudo chmod +x /usr/local/bin/version_tradr.sh
ln -sf /usr/local/bin/version_tradr.sh /usr/local/bin/version

# Run the stock grabbers
sudo mv /home/vagrant/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons.sh
sudo chmod +x /usr/local/bin/run_tradr_daemons.sh
ln -sf /usr/local/bin/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons

echo "Exited set_symlinks.sh..."
