#!/usr/bin/env bash

# bash <(curl -s )


sudo mkdir -p /root/.ssh
sudo cp ~/.ssh/authorized_keys /root/.ssh/authorized_keys
sudo chown -R root:root /root/.ssh
sudo apt-get update

