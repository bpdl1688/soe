#!/bin/bash
# run under user fedora
# please include hostname parameter

# Update sources
sudo dnf update -y

# my SOP
sudo dnf install wget tmux vim bind-utils git -y

########################################
# basic setup
########################################
echo "config system"

echo "config timezone"
sudo timedatectl set-timezone Asia/Singapore
echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" > ~/.vimrc

echo "config hostname"
sudo hostnamectl set-hostname $1

########################################
# optional software
########################################

# ansible (optional)
# sudo dnf install ansible -y

# docker and docker-compose (optional)
# sudo dnf install docker docker-compose -y
# sudo systemctl start docker
# sudo systemctl enable docker

# echo "rebooting..."
reboot