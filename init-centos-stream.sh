#!/bin/bash
# for centos stream 8
# run under user centos

# parameters
HOSTNAME=r1s18

# Update sources
sudo dnf update -y

# my SOP
sudo dnf install epel-release wget tmux vim bind-utils git -y

########################################
# basic setup
########################################
echo "config system"

echo "config timezone"
sudo timedatectl set-timezone Asia/Singapore
# sudo echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" > /root/.vimrc
echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" > ~/.vimrc

echo "config hostname"
sudo hostnamectl set-hostname $HOSTNAME

########################################
# optional software
########################################

# ansible (optional)
# sudo dnf install ansible -y

# docker and docker-compose (optional)
# sudo dnf install docker docker-compose -y
# sudo systemctl start docker
# sudo systemctl enable docker

# podman (optional)
# sudo dnf install podman -y

# include ideadpad
# sudo echo "192.168.1.106    ideapad" >> /etc/hosts
# mkdir -p /mnt/ideapad
# mount -t nfs ideapad: /mnt/ideapad

# echo "rebooting..."
# reboot
