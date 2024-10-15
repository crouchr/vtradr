#!/bin/bash
# Enable and then startup all the 24x7 service daemons

echo "Entered set_systemd.sh..."

# Platform services start first
systemctl enable namecheap-updater.service
systemctl start namecheap-updater.service

systemctl enable monitor-disk-space.service
systemctl start monitor-disk-space.service

# Start services that are dependencies
systemctl enable exchange-rate-service.service
systemctl start exchange-rate-service.service

systemctl enable candlestick-analyser-service.service
systemctl start candlestick-analyser-service.service

# Start the main TRADR daemons
systemctl enable realtime-monitor.service
systemctl start realtime-monitor.service

systemctl enable open-trades-monitor.service
systemctl start open-trades-monitor.service

systemctl enable rsi-buy-sniper.service
systemctl start rsi-buy-sniper.service

systemctl enable rsi-sell-sniper.service
systemctl start rsi-sell-sniper.service

systemctl enable ops-monitor.service
systemctl start ops-monitor.service

systemctl enable ohlc-mqtt-writer.service
systemctl start ohlc-mqtt-writer.service

systemctl enable ohlc-mqtt-candle-alerter.service
systemctl start ohlc-mqtt-candle-alerter.service

echo "Exited set_systemd.sh..."
