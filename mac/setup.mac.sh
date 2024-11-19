#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat mac/README.md
stow --no-folding mac
cd $HOME
bash .macos
