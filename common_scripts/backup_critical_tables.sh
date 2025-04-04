#!/bin/bash -eu

logger 'entered backup_critical_tables.sh'

backup-trades-table
backup-patternz-stage-table
backup-users-table
backup-insider-trades-table

logger 'exited backup_critical_tables.sh'
