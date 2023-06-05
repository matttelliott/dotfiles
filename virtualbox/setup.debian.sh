#!/usr/bin/env bash
cd "$HOME/dotfiles"

cat virtualbox/README.md
sudo apt install virtualbox
# sudo apt install virtualbox-ext-pack # optional, proprietary
stow virtualbox
