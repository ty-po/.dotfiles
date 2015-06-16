#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install git vim tmux w3m vifm

cd ~

git clone https://github.com/ty-po/.dotfiles.git

cp -r ~/.dotfiles/.vim            ~/
cp    ~/.dotfiles/.bash_aliases   ~/
#cp    ~/.dotfiles/.bashrc.default ~/
cp    ~/.dotfiles/.dircolors      ~/
cp    ~/.dotfiles/.gitconfig      ~/
#cp    ~/.dotfiles/.gitignore      ~/
cp    ~/.dotfiles/.tmux.conf      ~/
cp    ~/.dotfiles/.vimrc          ~/

