#!/bin/bash

echo "Entered set_systemd.sh..."

systemctl enable exchange-rate-service.service
systemctl start exchange-rate-service.service

echo "Exited set_systemd.sh..."
