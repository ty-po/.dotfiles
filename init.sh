#!/bin/sh
# for debian derivatives

sudo apt-get update
sudo apt-get install -y git vim tmux w3m w3m-img vifm mosh nginx python-pip googler

googler -u

pip install gcalcli

cd ~

if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/ty-po/.dotfiles.git
fi

rm -rf ~/.vim
rm -rf ~/.shims
ln -sf    ~/.dotfiles/.vim            ~/
ln -sf    ~/.dotfiles/.shims          ~/

ln -sf    ~/.dotfiles/.bash_aliases   ~/

ln -sf    ~/.dotfiles/.dircolors      ~/
ln -sf    ~/.dotfiles/.gitconfig      ~/

ln -sf    ~/.dotfiles/.tmux.conf      ~/
ln -sf    ~/.dotfiles/.vimrc          ~/

ln -sf    ~/.dotfiles/.gitconfig      ~/

mv        ~/.bashrc                   ~/.bashrc.backup
ln -sf    ~/.dotfiles/.bashrc.default ~/.bashrc

ln -sf    ~/.dotfiles/.zshrc          ~/
ln -sf    ~/.dotfiles/.hyper.js       ~/

mkdir ~/.vim/swapfiles/

touch     ~/.dotfiles/nginx
sudo ln -sf ~/.dotfiles/nginx         /etc/nginx/sites-enabled/default
