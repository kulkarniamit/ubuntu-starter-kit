#!/bin/sh

# Update
sudo apt-get update

# Install awesome tools
sudo apt-get install git vim unity-tweak-tool openssh-server

# Install system cleaner
sudo apt-get install systemd -f
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.7/stacer_1.0.7_amd64.deb
sudo dpkg --install ~/Downloads/stacer_1.0.7_amd64.deb

# Download Google chrome
firefox "https://www.google.com/chrome/browser/desktop/index.html"

# Install Google chrome
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

# OpenSSH Public-Private key Setup
ssh-keygen -t rsa -b 8192

# Cleanup
rm -rf ~/Downloads/google-chrome-stable*
rm -rf ~/Downloads/stacer_1.0.7_amd64.deb
