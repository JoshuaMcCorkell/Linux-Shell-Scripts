#!/bin/bash

echo 'Linux Hardening Script - Created by J3R August 2022'
echo 'Enabling Firewall'
sudo ufw enable
wait
echo 'Enabled!'

echo 'Upgrading and Updating'
sudo apt-get update
wait
sudo apt-get upgrade -y
wait
echo 'System is up to date!'
