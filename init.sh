#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install -y git vim tmux w3m vifm

cd ~

if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/ty-po/.dotfiles.git
fi

rm -rf ~/.vim
rm -rf ~/.shims
rm -rf ~/.i3
ln -sf    ~/.dotfiles/.vim            ~/
ln -sf    ~/.dotfiles/.shims          ~/
ln -sf    ~/.dotfiles/.i3             ~/

ln -sf    ~/.dotfiles/.i3status.conf  ~/

ln -sf    ~/.dotfiles/.bash_aliases   ~/

ln -sf    ~/.dotfiles/.dircolors      ~/
ln -sf    ~/.dotfiles/.gitconfig      ~/

ln -sf    ~/.dotfiles/.tmux.conf      ~/
ln -sf    ~/.dotfiles/.vimrc          ~/
