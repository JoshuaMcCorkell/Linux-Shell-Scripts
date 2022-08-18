#!/bin/bash

echo 'Linux Hardening Script (Users) - Created by J3R August 2022'

echo 'List of Users:'
sudo ls /home
echo 'Do you want to delete a user? y/n'
read delyn
if [ "$delyn" == "y" ]
then 
  echo "Username to delete:"
  read username
  userdel $username
