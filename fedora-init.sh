#!/bin/bash
# run under user fedora
# please include hostname parameter
# You might need to install git first to get the repo

# Update sources
sudo dnf update -y

# my SOP
sudo dnf install -y wget tmux vim bind-utils nfs-utils git

# this is used for tereraform/libvirt
sudo dnf install -y genisoimage

########################################
# basic setup
########################################
echo "config system"

echo "config timezone"
sudo timedatectl set-timezone Asia/Singapore
echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" > ~/.vimrc

# avoid visual mode in vim
echo "set mouse-=a" >> ~/.vimrc

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

# rpmfusion
# sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
# sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# echo "rebooting..."
sudo reboot
