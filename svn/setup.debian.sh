#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat svn/README.md
stow --no-folding svn
sudo apt install -y subversion
