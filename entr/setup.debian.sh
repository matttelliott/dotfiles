#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install entr -y
stow --no-folding entr
