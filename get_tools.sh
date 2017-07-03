#!/bin/sh

# Update
sudo apt-get update

# Install awesome tools
sudo apt-get install git vim unity-tweak-tool openssh-server tmux curl

# Create a good config file for vim
echo -e "set hlsearch\nset background=dark\nset nu\nset tabstop=4" > ~/.vimrc

# Install system cleaner
sudo apt-get install bleachbit

# OpenSSH Public-Private key Setup
ssh-keygen -t rsa -b 8192

# Remove stupid games
sudo apt-get purge aisleriot gnome-sudoku gnome-mahjongg gnome-mines

# Say no to thunderbird
sudo apt-get purge thunderbird*

# Cleanup
sudo apt-get autoremove

# Download Google chrome
firefox "https://www.google.com/chrome/browser/desktop/index.html"

echo "Please install Stacer and Google chrome from ~/Downloads"
echo "Thank you for using this script"
echo "Have a great start!"
