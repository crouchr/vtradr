#!/bin/bash -eu

logger 'entered restore_critical_tables.sh'

restore-trades-table
restore-patternz-stage-table
restore-users-table
restore-insider-trades-table

logger 'exited restore_critical_tables.sh'
