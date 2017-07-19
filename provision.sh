#!/bin/bash

echo "Installing: nodejs, lynx, ruby and jekyll..."
apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

apt-get update -y 
apt-get install git - y >>/tmp/provision-script.log 2>&1
apt-get install nodejs -y  >>/tmp/provision-script.log 2>&1

mkdir /home/vagrant/.npm-global
npm config set prefix '/home/vagrant/.npm-global'
echo "export PATH=/home/vagrant/.npm-global/bin:$PATH" >> /home/vagrant/.profile
source /home/vagrant/.profile

wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh
npm install -g yo coffee-script generator-hubot escodegen >>/tmp/provision-script.log 2>&1






