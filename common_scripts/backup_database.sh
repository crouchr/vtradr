#!/bin/bash -eu
# backup the tradrdb database

logger 'entered backup_database.sh'

echo "The best time to perform backup and restore is after 21:30 or before 08:30 UK time when markets are closed"

echo "Backing up 'tradrdb' database to /home/vagrant/dbase_backups/tradrdb-backup.sql on this node..."
mysqldump -u root -psecretsql tradrdb > /home/vagrant/dbase_backups/tradrdb-backup.sql
echo "Backed up 'tradrdb' database to /home/vagrant/dbase_backups/tradrdb-backup.sql from this node"

logger 'exited backup_database.sh'





DB_NAME="your_database"
TABLE_NAME="trades"
USER="your_username"
PASSWORD="your_password"
HOST="localhost"
BACKUP_DIR="./backups"
LOG_FILE="/var/log/backup_restore.log"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/${TABLE_NAME}_backup_$DATE.sql"

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Logging function
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "Starting backup of table '$TABLE_NAME' from database '$DB_NAME'."

# Dump only the specified table
if mysqldump -u root -psecretsql tradrdb trades > /home/vagrant/dbase_backups/tradrdb-trades-backup.sql; then
    log "Backup successful: $BACKUP_FILE"
else
    log "Backup failed for table '$TABLE_NAME'"
fi