#!/bin/bash
# Run commands in Docker containers
# FIXME : I think this is obsolete
logger "Entered run_tradr_daemons..."

echo "Run TRADR daemons (grabbers, Swing Trader application & REST Services)..."
docker-compose -f docker-compose.yml up

logger "Exited run_tradr_daemons..."
