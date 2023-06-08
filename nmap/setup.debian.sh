#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install nmap -y
stow --no-folding nmap
