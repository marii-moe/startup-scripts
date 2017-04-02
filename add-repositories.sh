#!/usr/bin/env bash
release="$(lsb_release -sc)"
sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ $release universe"
sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ $release-updates universe"
sudo apt update
