#!/bin/sh
# i3 setup for debian derivatives

sudo apt-get install -y i3 suckless-tools lxappearance vlc xfce4-terminal thunar redshift nitrogen google-chrome msttcorefonts xautolock python-pip unclutter dzen2 compton

pip install --upgrade pip
sudo pip install i3-py

cd ~

rm -rf ~/.i3
ln -sf    ~/.dotfiles/.i3             ~/

ln -sf    ~/.dotfiles/.i3status.conf  ~/

ln -sf    ~/.dotfiles/.i3/.compton.conf  ~/
