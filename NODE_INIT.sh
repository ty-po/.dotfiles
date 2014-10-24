#!/bin/bash

sudo apt-get install git
sudo apt-get install vim
sudo apt-get install screen

#node
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup | bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#git
git config --global user.name "Tyler Polen"
git config --global user.email "tyler.polen@gmail.com"

ssh-keygen -t rsa -C "tyler.polen@gmail.com"

