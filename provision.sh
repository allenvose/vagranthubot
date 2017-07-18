#!/bin/bash

apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get -y update
dpkg -s nodejs &>/dev/null || {
	sudo apt-get -y install nodejs
	ln -s /usr/bin/nodejs /usr/bin/node	
}
command -v yo &>/dev/null ||{
	npm install -g yo coffee-script
}

command -v generator-hubot &>/dev/null ||{
	npm install -g generator-hubot
}
mkdir /home/vagrant/myhubot
