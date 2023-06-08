#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat mac/README.md
stow --no-folding mac
cd $HOME
bash .macos
