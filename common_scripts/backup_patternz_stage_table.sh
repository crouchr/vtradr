#!/bin/bash -eu
# backup the tradrdb database 'patternz_stage' table

logger 'entered backup_patternz_stage_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database 'patternz_stage' table TO /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb patternz_stage > /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql
echo "Backed up 'tradrdb' database 'patternz_stage' table TO /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql on this node"

logger 'exited backup_patternz_stage_table.sh'
