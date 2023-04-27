#!/usr/bin/env bash
cd "$HOME/dotfiles"
batcat git/README.md
sudo apt install git
stow git