#!/bin/bash

echo 'Linux Hardening Script - Created by J3R August 2022'

echo 'Editing Password Policies'
echo 'PASS_MAX_DAYS   90'
echo 'PASS_MIN_DAYS   10'
echo 'PASS_WARN_AGE   7'
sudo gedit /etc/login.defs

echo 'Press Enter to continue:'
read
echo 'Add this to end of file: auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800'
sudo gedit /etc/pam.d/common-auth

echo 'Press Enter to continue:'
read
echo 'Add this to under the line [Seat:*]: allow-guest=false'
sudo gedit /etc/lightdm/lightdm.conf

echo 'Press Enter to continue:'
read
