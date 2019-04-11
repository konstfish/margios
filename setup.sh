#!/bin/bash

# Phase 1 Standart Hosts to check
echo google.at >> hosts.txt
echo 1.1.1.1 >> hosts.txt
echo "Standart Hosts to check has been set"

# Phase 2 Seting up Systemd Service
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
echo "Systemd Service was created"

# Phase 3 Enable Autostartup
systemctl enable margios.service
systemctl start margios.service
systemctl status margios.service
echo "Autostartup was enabled"

# Phase 4 Install telegram-send 
sudo apt-get install python3-pip
sudo pip3 install telegram-send
telegram-send --configure
echo "Telegram send has been configured"
