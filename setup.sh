#!/bin/bash

echo "Seting up Systemd Service"
echo "[Unit]" >> /etc/systemd/system/margios.service
echo "Description=Marios's Nagius" >> /etc/systemd/system/margios.service
echo "After=network-online.target" >> /etc/systemd/system/margios.service
echo "StartLimitIntervalSec=0" >> /etc/systemd/system/margios.service
echo "" >> /etc/systemd/system/margios.service
echo "[Service]" >> /etc/systemd/system/margios.service
echo "Type=simple" >> /etc/systemd/system/margios.service
echo "User=pi" >> /etc/systemd/system/margios.service
echo "ExecStart=/home/pi/scripts/margios.sh" >> /etc/systemd/system/margios.service
echo "" >> /etc/systemd/system/margios.service
echo "[Install]" >> /etc/systemd/system/margios.service
echo "WantedBy=multi-user.target" >> /etc/systemd/system/margios.service

systemctl enable margios.service
systemctl start margios.service
systemctl status margios.service
