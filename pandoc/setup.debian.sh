#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install pandoc -y
stow --no-folding pandoc
