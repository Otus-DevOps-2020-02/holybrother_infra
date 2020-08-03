#!/bin/sh
echo "Lets update packages"
apt update
echo "Install Ruby and Bundler"
apt-get install -y ruby-full ruby-bundler build-essential
echo "Ruby and Bundler installed"
