#!/bin/bash -eu
# backup the tradrdb database 'users' table

logger 'entered backup_users_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database 'users' table TO /home/vagrant/dbase_backups/tradrdb-users-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb users > /home/vagrant/dbase_backups/tradrdb-users-backup.sql
echo "Backed up 'tradrdb' database 'users' table TO /home/vagrant/dbase_backups/tradrdb-users-backup.sql on this node"

logger 'exited backup_users_table.sh'
