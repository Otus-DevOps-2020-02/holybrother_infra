#!/bin/sh
echo "Lets update packages"
sudo apt update
echo "Install Ruby and Bundler"
sudo apt-get install -y ruby-full ruby-bundler build-essential
echo "Ruby and Bundler installed"
