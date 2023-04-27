#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat svn/README.md
stow svn
sudo apt install -y subversion
