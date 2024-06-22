#!/bin/bash -eu
# backup the tradrdb_lts LTS database

logger 'entered backup_lts_database.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up LTS 'tradrdb_lts' database to /home/vagrant/dbase_backups/tradrdb-lts-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb_lts > /home/vagrant/dbase_backups/tradrdb-lts-backup.sql
echo "Backed up LTS 'tradrdb_lts' database to /home/vagrant/dbase_backups/tradrdb-lts-backup.sql from this node"

logger 'exited backup_lts_database.sh'
