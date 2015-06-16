#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install git vim tmux w3m vifm

git init
git remote add origin https://github.com/ty-po/.dotfiles.git
git fetch --all
git reset --hard origin/master
