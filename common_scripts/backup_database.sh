#!/bin/bash -eux
# backup the tradrdb database

logger 'entered backup_database.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"
echo "Backing up 'tradrdb' database to /home/vagrant/dbase_backups/tradrdb-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb > /home/vagrant/dbase_backups/tradrdb-backup.sql
echo "Backed up 'tradrdb' database to /home/vagrant/dbase_backups/tradrdb-backup.sql from this node"

logger 'exited backup_database.sh'
