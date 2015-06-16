#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install git vim tmux w3m vifm

git clone https://github.com/ty-po/.dotfiles.git

cd .dotfiles

cp -r .vim            ~/
cp    .bash_aliases   ~/
#cp    .bashrc.default ~/
cp    .dircolors      ~/
cp    .gitconfig      ~/
cp    .gitignore      ~/
cp    .tmux.conf      ~/
cp    .vimrc          ~/

