#!/usr/bin/env bash
release=`lsb_release -sc`
sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ $release universe"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-$release main'
sudo apt-cache policy docker-engine
sudo apt update
sudo apt install -y docker-engine 
sudo systemctl status docker
sudo usermod -aG docker $(whoami)
