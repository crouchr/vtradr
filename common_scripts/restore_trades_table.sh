#!/bin/bash -eu
# restore the tradrdb database 'trades' table

logger 'entered restore_trades_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Restoring the 'tradrdb' database 'trades' table FROM /home/vagrant/dbase_backups/tradrdb-trades-backup.sql on this node..."
mysql -u root -p secretsql tradrdb < /home/vagrant/dbase_backups/tradrdb-trades-backup.sql
echo "Restored the 'tradrdb' database 'trades' table FROM /home/vagrant/dbase_backups/tradrdb-trades-backup.sql on this node"

logger 'exited restore_trades_table.sh'
