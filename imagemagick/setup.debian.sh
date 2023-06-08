#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install -y imagemagick
stow --no-folding imagemagick
