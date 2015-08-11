#!/bin/sh
# i3 setup for debian derivatives

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo sh -c 'echo "deb http://ppa.launchpad.net/snwh/pulp/ubuntu/ trusty main" >> /etc/apt/sources.list.d/snwh-pulp.list'
sudo apt-get update
sudo apt-get install -y i3 suckless-tools lxappearance xfce4-terminal thunar redshift nitrogen paper-gtk-theme paper-icon-theme google-chrome-stable fonts-droid

cd ~

rm -rf ~/.i3
ln -sf    ~/.dotfiles/.i3             ~/

ln -sf    ~/.dotfiles/.i3status.conf  ~/
