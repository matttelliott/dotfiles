#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install htop -y
stow --no-folding htop
