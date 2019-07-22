#!/bin/bash
# Basic Ubuntu Programming Workstation Setup

set -e

sudo apt update
sudo apt install
sudo apt install build-essential net-tools
sudo apt install curl
sudo apt install tree

# Dev
sudo apt install git
sudo apt install npm
# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install node
# Python
sudo apt install python3-pip
pip install virtualenv
# AWS
pip3 install awscli --upgrade --user


# System
sudo apt install htop
sudo apt install inxi

# Network
sudo apt-get install openvpn network-manager-openvpn network-manager-openvpn-gnome

# sudo apt-get sublimetext3
# sudo apt-get oh-my-zsh

