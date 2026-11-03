#!/bin/bash

# Root check / get root
if [[ $EUID -ne 0 ]]; then
   sudo bash "$0" "$@"
   exit 1
fi

echo "Installing standard packages..."

packages=(
    net-tools, 
    git,
    curl
)

apt install -y "${packages[@]}"

