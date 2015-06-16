#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install -y git vim tmux w3m vifm

cd ~

git clone https://github.com/ty-po/.dotfiles.git

rm -rf ~/.vim
ln -sf    ~/.dotfiles/.vim            ~/
ln -sf    ~/.dotfiles/.bash_aliases   ~/

ln -sf    ~/.dotfiles/.dircolors      ~/
ln -sf    ~/.dotfiles/.gitconfig      ~/

ln -sf    ~/.dotfiles/.tmux.conf      ~/
ln -sf    ~/.dotfiles/.vimrc          ~/

