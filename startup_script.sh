#!/bin/sh
echo "Install ruby-packages"

echo "Lets update packages"
sudo apt update
echo "Install Ruby and Bundler"
sudo apt-get install -y ruby-full ruby-bundler build-essential
echo "Ruby and Bundler installed"

echo "Install MongoDB"

echo "Add key and repo MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xd68fa50fea312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo "Update packages"
sudo apt update
sudo apt install -y mongodb-org
echo "Start mongodb"
sudo systemctl start mongodb
echo "Enable autostart mongodb"
sudo systemctl enable mongodb

echo "Deply application-server"

echo "Change dir to /home/user"
cd /home/professional
echo "Clone reddit project"
git clone -b monolith https://github.com/express42/reddit.git
echo "Change dir project and install dependecies"
cd reddit && bundle install
echo "Start application-server"
puma -d
echo "Check health server"
ps aux | grep puma
