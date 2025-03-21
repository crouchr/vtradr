#!/bin/bash -eu
# backup the tradrdb database 'company' table

logger 'entered backup_company_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database 'company' table TO /home/vagrant/dbase_backups/tradrdb-company-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb company > /home/vagrant/dbase_backups/tradrdb-company-backup.sql
echo "Backed up 'tradrdb' database 'company' table TO /home/vagrant/dbase_backups/tradrdb-company-backup.sql on this node"

logger 'exited backup_company_table.sh'
