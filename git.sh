#!/usr/bin/env bash
auth_file="$1"
auth_file="$(realpath $auth_file)"
source "$auth_file"
pushd .
mkdir -p '~/.marii_conf'
cd '~/.marii_conf'
sudo apt update
sudo apt install -y git 
git config -g "user.name=marii"
git config -g "user.email=marii@marii.moe"
git clone "https://github.com/marii-moe/startup-scripts.git"
cd 'startup-scripts'
cp "$auth_file" ".auth"
chmod 755 'setup.sh'
cp 'setup.sh' '~/bin'
popd
