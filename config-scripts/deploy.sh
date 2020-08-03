#!/bin/sh
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
