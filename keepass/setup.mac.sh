#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat keepass/README.md
stow --no-folding keepass
brew install keepassxc
