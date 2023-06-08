#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install git -y
stow --no-folding git
