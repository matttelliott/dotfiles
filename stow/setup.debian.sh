#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install stow -y
stow --no-folding stow
