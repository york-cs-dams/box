#!/bin/bash

echo "Setting timezone"
sudo timedatectl set-timezone Europe/London
echo " - Time is now `date`"

echo "Installing software updates"
sudo apt-get update --yes
sudo apt-get upgrade --yes --show-upgraded

echo "Setting locale"
sudo apt-get install --yes language-pack-en
