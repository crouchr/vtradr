#!/bin/bash
# This is the realtime swing trading scanner
logger "Entered run_swing_trader..."

docker-compose -f docker-compose-swing-trader.yml up

logger "Exited run_swing_trader..."
