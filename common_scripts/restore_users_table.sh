#!/bin/bash -eu
# restore the tradrdb database 'users' table

logger 'entered restore_users_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Restoring the 'tradrdb' database 'users' table FROM /home/vagrant/dbase_backups/tradrdb-users-backup.sql on this node..."
mysql -u root -psecretsql tradrdb < /home/vagrant/dbase_backups/tradrdb-users-backup.sql
echo "Restored the 'tradrdb' database 'users' table FROM /home/vagrant/dbase_backups/tradrdb-users-backup.sql on this node"

logger 'exited restore_users_table.sh'
