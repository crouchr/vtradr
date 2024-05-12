#!/bin/bash -eu
# restore the tradrdb database

logger 'entered restore_database.sh'

echo "Restoring 'tradrdb' databases from backup in /home/vagrant/dbase_backups/tradrdb-backup.sql on this node..."

mariadb <<MYSQL_SCRIPT
CREATE DATABASE tradrdb;
MYSQL_SCRIPT

mysql -u root -psecretsql tradrdb < /home/vagrant/dbase_backups/tradrdb-backup.sql
echo "Restored 'tradrdb' database from backup in /home/vagrant/dbase_backups/tradrdb-backup.sql on this node"

logger 'exited restore_database.sh'