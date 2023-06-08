#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install w3m -y
stow --no-folding w3m
