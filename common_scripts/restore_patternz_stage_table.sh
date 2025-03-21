#!/bin/bash -eu
# restore the tradrdb database 'patternz_stage' table

logger 'entered restore_patternz_stage_table.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Restoring the 'tradrdb' database 'patternz_stage' table FROM /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb patternz_stage < /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql
echo "Restored the 'tradrdb' database 'patternz_stage' table FROM /home/vagrant/dbase_backups/tradrdb-patternz-stage-backup.sql on this node"

logger 'exited restore_patternz_stage_table.sh'
