#!/usr/bin/env bash
cd "$HOME/dotfiles"
sudo apt install chromium -y
stow --no-folding chromium
