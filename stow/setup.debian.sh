#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat stow/README.md
sudo apt install -y stow
stow stow
