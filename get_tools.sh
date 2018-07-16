#!/bin/bash

# Update
sudo apt-get update

# Install awesome tools
echo "Installing awesome tools..."
sudo apt-get install --assume-yes \
    git \
    vim \
    unity-tweak-tool \
    openssh-server \
    tmux \
    curl \
    xfonts-terminus \
    console-terminus \
    gdb
    
# Set "vim" as default editor for GIT
git config --global core.editor "vim"

# Create a good config file for vim
echo "Installing vimrc config file..."
echo -e "set hlsearch\nset background=dark\nset nu\nset tabstop=4" > ~/.vimrc

# Helpful init commands for gdb
echo -e "set print pretty on\n" > ~/.gdbinit

# Install system cleaner
echo "Installing system cleaner..."
sudo apt-get install --assume-yes bleachbit

# OpenSSH Public-Private key Setup
echo "Generating your public-private key pair..."
ssh-keygen -t rsa -b 8192

# Remove stupid games
echo "Removing idiotic games..."
sudo apt-get purge --assume-yes aisleriot gnome-sudoku gnome-mahjongg gnome-mines

# Say no to thunderbird
echo "Removing thunderbird client..."
sudo apt-get purge --assume-yes thunderbird*

# Remove libreoffice:
sudo apt-get remove -y --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove

# Cleanup
echo "Cleaning up..."
sudo apt-get autoremove

which firefox > /dev/null 2>&1
if [ $? -eq 0 ]; then
    # Firefox exists. Launch it to initiate chrome download
    firefox "https://www.google.com/chrome/browser/desktop/index.html"
fi

echo "Thank you for using this script"
echo "Have a great start!"
