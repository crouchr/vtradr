#!/bin/bash

echo "Entered set_systemd.sh..."

systemctl enable exchange-rate-service.service
systemctl start exchange-rate-service.service

systemctl enable candlestick-analyser-service.service
systemctl start candlestick-analyser-service.service

echo "Exited set_systemd.sh..."