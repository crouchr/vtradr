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

sudo mv /home/vagrant/data_collection.sh /usr/local/bin/data_collection.sh
sudo chmod +x /usr/local/bin/data_collection.sh
ln -sf /usr/local/bin/data_collection.sh /usr/local/bin/data-collection

sudo mv /home/vagrant/backup_critical_tables.sh /usr/local/bin/backup_critical_tables.sh
sudo chmod +x /usr/local/bin/backup_critical_tables.sh
ln -sf /usr/local/bin/backup_critical_tables.sh /usr/local/bin/backup-critical-tables

sudo mv /home/vagrant/restore_critical_tables.sh /usr/local/bin/restore_critical_tables.sh
sudo chmod +x /usr/local/bin/restore_critical_tables.sh
ln -sf /usr/local/bin/restore_critical_tables.sh /usr/local/bin/restore-critical-tables

# Backup normal database
sudo mv /home/vagrant/backup_database.sh /usr/local/bin/backup_database.sh
sudo chmod +x /usr/local/bin/backup_database.sh
ln -sf /usr/local/bin/backup_database.sh /usr/local/bin/backup

# Backup LTS database
sudo mv /home/vagrant/backup_lts_database.sh /usr/local/bin/backup_lts_database.sh
sudo chmod +x /usr/local/bin/backup_lts_database.sh
ln -sf /usr/local/bin/backup_lts_database.sh /usr/local/bin/backup-lts

# Restore normal database
sudo mv /home/vagrant/restore_database.sh /usr/local/bin/restore_database.sh
sudo chmod +x /usr/local/bin/restore_database.sh
ln -sf /usr/local/bin/restore_database.sh /usr/local/bin/restore

# Restore LTS database
sudo mv /home/vagrant/restore_lts_database.sh /usr/local/bin/restore_lts_database.sh
sudo chmod +x /usr/local/bin/restore_lts_database.sh
ln -sf /usr/local/bin/restore_lts_database.sh /usr/local/bin/restore-lts

# Backup 'trades' table
sudo mv /home/vagrant/backup_trades_table.sh /usr/local/bin/backup_trades_table.sh
sudo chmod +x /usr/local/bin/backup_trades_table.sh
ln -sf /usr/local/bin/backup_trades_table.sh /usr/local/bin/backup-trades-table

# Restore 'trades' table
sudo mv /home/vagrant/restore_trades_table.sh /usr/local/bin/restore_trades_table.sh
sudo chmod +x /usr/local/bin/restore_trades_table.sh
ln -sf /usr/local/bin/restore_trades_table.sh /usr/local/bin/restore-trades-table

# Backup 'insider_trades' table
sudo mv /home/vagrant/backup_insider_trades_table.sh /usr/local/bin/backup_insider_trades_table.sh
sudo chmod +x /usr/local/bin/backup_insider_trades_table.sh
ln -sf /usr/local/bin/backup_insider_trades_table.sh /usr/local/bin/backup-insider-trades-table

# Restore 'insider_trades' table
sudo mv /home/vagrant/restore_insider_trades_table.sh /usr/local/bin/restore_insider_trades_table.sh
sudo chmod +x /usr/local/bin/restore_insider_trades_table.sh
ln -sf /usr/local/bin/restore_insider_trades_table.sh /usr/local/bin/restore-insider-trades-table

# Backup 'patternz_stage' table
sudo mv /home/vagrant/backup_patternz_stage_table.sh /usr/local/bin/backup_patternz_stage_table.sh
sudo chmod +x /usr/local/bin/backup_patternz_stage_table.sh
ln -sf /usr/local/bin/backup_patternz_stage_table.sh /usr/local/bin/backup-patternz-stage-table

# Restore 'patternz_stage' table
sudo mv /home/vagrant/restore_patternz_stage_table.sh /usr/local/bin/restore_patternz_stage_table.sh
sudo chmod +x /usr/local/bin/restore_patternz_stage_table.sh
ln -sf /usr/local/bin/restore_patternz_stage_table.sh /usr/local/bin/restore-patternz-stage-table

# Backup 'company' table
sudo mv /home/vagrant/backup_company_table.sh /usr/local/bin/backup_company_table.sh
sudo chmod +x /usr/local/bin/backup_company_table.sh
ln -sf /usr/local/bin/backup_company_table.sh /usr/local/bin/backup-company-table

# Restore 'company' table
sudo mv /home/vagrant/restore_company_table.sh /usr/local/bin/restore_company_table.sh
sudo chmod +x /usr/local/bin/restore_company_table.sh
ln -sf /usr/local/bin/restore_company_table.sh /usr/local/bin/restore-company-table

# Backup 'users' table
sudo mv /home/vagrant/backup_users_table.sh /usr/local/bin/backup_users_table.sh
sudo chmod +x /usr/local/bin/backup_users_table.sh
ln -sf /usr/local/bin/backup_users_table.sh /usr/local/bin/backup-users-table

# Restore 'users' table
sudo mv /home/vagrant/restore_users_table.sh /usr/local/bin/restore_users_table.sh
sudo chmod +x /usr/local/bin/restore_users_table.sh
ln -sf /usr/local/bin/restore_users_table.sh /usr/local/bin/restore-users-table

sudo mv /home/vagrant/version_tradr.sh /usr/local/bin/version_tradr.sh
sudo chmod +x /usr/local/bin/version_tradr.sh
ln -sf /usr/local/bin/version_tradr.sh /usr/local/bin/version

# Run the stock grabbers
# FIXME - this is obsolete ?
#sudo mv /home/vagrant/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons.sh
#sudo chmod +x /usr/local/bin/run_tradr_daemons.sh
#ln -sf /usr/local/bin/run_tradr_daemons.sh /usr/local/bin/run_tradr_daemons

echo "Exited set_symlinks.sh..."
