#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat stow/README.md
sudo apt install -y stow
stow stow
