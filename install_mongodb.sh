#!/bin/sh
echo "Add key and repo MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xd68fa50fea312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo "Update packages"
sudo apt update
sudo apt install -y mongodb-org
echo "Start mongodb"
sudo systemctl start mongod
echo "Enable autostart mongodb"
sudo systemctl enable mongod
