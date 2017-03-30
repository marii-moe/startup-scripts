#!/usr/bin/env bash
repo_path="~/.marii_conf/startup-scripts"
source "$repo_path/basic_tools.sh"
source "$repo_path/docker-setup.sh"
chmod 755 "$repo_path/root_connect"
cp "$repo_path/root_connect" "~/bin"
