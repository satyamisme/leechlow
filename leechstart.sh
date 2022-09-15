#!/bin/bash


sudo apt install python3 python3-pip
pip3 install -r requirements-cli.txt
cp config_sample.env config.env
echo yes | sudo docker container prune
echo yes | sudo docker image prune -a
sudo dockerd
sudo docker build . -t mirror-bot
sudo docker run -p 80:80 mirror-bot
