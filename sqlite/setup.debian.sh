#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install sqlite3 -y
stow --no-folding sqlite
