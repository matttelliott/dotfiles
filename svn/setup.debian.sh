#!/usr/bin/env bash
cd "$HOME/dotfiles"
batcat svn/README.md
stow svn
sudo apt install -y subversion
