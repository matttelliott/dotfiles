#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat golang/README.md
stow --no-folding golang
sudo apt install golang
