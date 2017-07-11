#!/bin/sh

# Update
sudo apt-get update

# Install awesome tools
echo "Installing awesome tools..."
sudo apt-get install git vim unity-tweak-tool openssh-server tmux curl xfonts-terminus console-terminus

# Create a good config file for vim
echo "Installing vimrc config file..."
echo -e "set hlsearch\nset background=dark\nset nu\nset tabstop=4" > ~/.vimrc

# Install system cleaner
echo "Installing system cleaner..."
sudo apt-get install bleachbit

# OpenSSH Public-Private key Setup
echo "Generating your public-private key pair..."
ssh-keygen -t rsa -b 8192

# Remove stupid games
echo "Removing idiotic games..."
sudo apt-get purge aisleriot gnome-sudoku gnome-mahjongg gnome-mines

# Say no to thunderbird
echo "Removing thunderbird client..."
sudo apt-get purge thunderbird*

# Cleanup
echo "Cleaning up..."
sudo apt-get autoremove

# Download Google chrome
firefox "https://www.google.com/chrome/browser/desktop/index.html"

echo "Please install Stacer and Google chrome from ~/Downloads"
echo "Thank you for using this script"
echo "Have a great start!"
