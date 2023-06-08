#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install watch -y
stow --no-folding watch
