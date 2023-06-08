#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install -y install wget
stow --no-folding wget
