#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat mac/README.md
stow mac
cd $HOME
bash .macos
