#!/bin/bash -eu
# restore the tradrdb_lts database

logger 'entered restore_lts_database.sh'

echo "Restoring LTS 'tradrdb_lts' databases from backup in /home/vagrant/dbase_backups/tradrdb-lts-backup.sql on this node..."

mariadb -u root -psecretsql <<MYSQL_SCRIPT
DROP DATABASE tradrdb_lts;
CREATE DATABASE tradrdb_lts;
MYSQL_SCRIPT

mysql -u root -psecretsql tradrdb_lts < /home/vagrant/dbase_backups/tradrdb-lts-backup.sql
echo "Restored LTS 'tradrdb_lts' database from backup in /home/vagrant/dbase_backups/tradrdb-lts-backup.sql on this node"

logger 'exited restore_lts_database.sh'