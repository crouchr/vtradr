#!/bin/bash -eu
# backup the tradrdb database 'trades' table

logger 'entered backup_trades_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database 'trades' table TO /home/vagrant/dbase_backups/tradrdb-trades-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb trades > /home/vagrant/dbase_backups/tradrdb-trades-backup.sql
echo "Backed up 'tradrdb' database 'trades' table TO /home/vagrant/dbase_backups/tradrdb-trades-backup.sql on this node"

logger 'exited backup_trades_table.sh'
