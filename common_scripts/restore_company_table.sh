#!/bin/bash -eu
# restore the tradrdb database 'company' table

logger 'entered restore_company_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Restoring 'tradrdb' database 'company' table FROM /home/vagrant/dbase_backups/tradrdb-company-backup.sql on this node..."
mysql -u root -p tradrdb < /home/vagrant/dbase_backups/tradrdb-company-backup.sql
echo "Restoring 'tradrdb' database 'company' table FROM /home/vagrant/dbase_backups/tradrdb-company-backup.sql on this node"

logger 'exited restore_company_table.sh'
