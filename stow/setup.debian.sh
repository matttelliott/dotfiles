#!/usr/bin/env bash
cd "$HOME/dotfiles"
batcat stow/README.md
sudo apt install -y stow
stow stow
