#!/bin/sh

# Update
sudo apt-get update

# Install awesome tools
sudo apt-get install git vim unity-tweak-tool openssh-server tmux curl

# Install system cleaner
sudo apt-get install systemd -f
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.7/stacer_1.0.7_amd64.deb
sleep 5
sudo apt-get install libappindicator1 -f

# OpenSSH Public-Private key Setup
ssh-keygen -t rsa -b 8192

# Remove stupid games
sudo apt-get purge aisleriot gnome-sudoku gnome-mahjongg gnome-mines

# Say no to thunderbird
sudo apt-get purge thunderbird*

# Cleanup
rm -rf ~/Downloads/stacer_1.0.7_amd64.deb
sudo apt-get autoremove

# Download Google chrome
firefox "https://www.google.com/chrome/browser/desktop/index.html"

echo "Please install Stacer and Google chrome from ~/Downloads"
echo "Thank you for using this script"
echo "Have a great start!"
