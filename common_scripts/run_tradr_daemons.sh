#!/bin/bash
# Run commands in Docker containers
logger "Entered run_tradr_daemons..."

echo "Run TRADR daemons (grabbers & Swing Trade application)..."
docker-compose -f docker-compose.yml up

logger "Exited run_tradr_daemons..."
