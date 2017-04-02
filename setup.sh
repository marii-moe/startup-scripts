#!/usr/bin/env bash
repo_path="/opt/startup-scripts"
bash "$repo_path/add-repositories.sh"
bash "$repo_path/basic_tools.sh"
bash "$repo_path/docker-setup.sh"
sudo cp "$repo_path/root_connect" "/usr/bin"
chmod 755 "/usr/bin/root_connect"
