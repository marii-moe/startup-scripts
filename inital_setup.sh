#!/usr/bin/env bash
function git_install {
    pushd .    
    sudo apt update
    sudo apt install -y git 
    git config --global "user.name" "marii"
    git config --global "user.email" "marii@marii.moe"
    git config --global push.default "simple"
    cd /opt
    sudo mkdir projects
    sudo chown ubuntu:ubuntu -R projects
    cd projects
    if [ ! -d 'startup-scripts' ]; then
	git clone "ssh://git@github.com/marii-moe/startup-scripts.git"
    fi
    popd
}

auth_file="$1"
auth_file="$(realpath $auth_file)"
home_directory="$(realpath ~)"
source "$auth_file"
pushd .
mkdir -p "$home_directory/.marii_conf/auth"
cp "$auth_file" "$home_directory/.marii_conf/auth/marii_auth"
git_install
bash '/opt/projects/startup-scripts/setup.sh'
popd
