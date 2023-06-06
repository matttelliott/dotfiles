#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat svn/README.md
stow svn
sudo apt install -y subversion
