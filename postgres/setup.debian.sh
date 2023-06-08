#!/usr/bin/env bash
cd "$HOME/dotfiles"

sudo apt install postgresql@14 -y
stow --no-folding postgres