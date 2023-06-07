#!/usr/bin/env bash
cd "$HOME/dotfiles"

echo "Install Docker and docker-compose"
sudo apt install -y docker.io docker-compose 
sudo apt install -y virtualbox
sudo groupadd docker
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker
sudo systemctl start docker
