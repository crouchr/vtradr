#!/bin/bash -eu
# backup the tradrdb database 'insider_trades' table

logger 'entered backup_insider_trades_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database 'insider_trades' table TO /home/vagrant/dbase_backups/tradrdb-insider-trades-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb insider_trades > /home/vagrant/dbase_backups/tradrdb-insider-trades-backup.sql
echo "Backed up 'tradrdb' database 'insider_trades' table TO /home/vagrant/dbase_backups/tradrdb-insider-trades-backup.sql on this node"

logger 'exited backup_insider_trades_table.sh'
