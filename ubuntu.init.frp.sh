#!/usr/bin/env bash

# bash <(curl -sL http://t.cn/A6UyO55v)

sudo mkdir -p /root/.ssh
sudo cp ~/.ssh/authorized_keys /root/.ssh/authorized_keys
sudo chown -R root:root /root/.ssh
sudo apt-get update
curl -fsSL https://get.docker.com | sudo bash -s docker --mirror Aliyun
sudo systemctl start docker
sudo systemctl enable docker
sudo apt-get install -y tmux python3-pip openssh-server supervisor
sudo ln -s /usr/bin/pip3 /usr/bin/pip
