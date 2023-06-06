#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat git/README.md
sudo apt install git -y
stow git
