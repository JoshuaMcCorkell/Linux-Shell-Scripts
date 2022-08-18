#!/bin/bash

echo 'Linux Hardening Script (Users) - Created by J3R August 2022'

echo 'List of Users:'
sudo ls /home
echo 'Do you want to delete a user? y/n'
read delyn
while [ "$delyn" == "y" ]
do
  echo "Username to delete:"
  read username
  userdel $username
  echo "Delete another user?"
done
