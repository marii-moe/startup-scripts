#!/usr/bin/env bash
auth_file="$1"
auth_file="$(realpath $auth_file)"
source "$auth_file"
pushd .
mkdir -p '~/.marii_conf/auth'
cp "$auth_file" '~/.marii_conf/auth'
git_install
cp '/opt/startup-scripts/setup.sh' '~/bin'
chmod 755 '~/bin/setup.sh'
popd

function git_install {
    pushd .    
    sudo apt update
    sudo apt install -y git 
    git config -g "user.name=marii"
    git config -g "user.email=marii@marii.moe"
    git config -g push.default simple
    cd /opt
    sudo git clone "https://github.com/marii-moe/startup-scripts.git"
    chown ubuntu:ubuntu -R startup-scripts
    popd
}
