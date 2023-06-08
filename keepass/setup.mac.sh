#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat keepass/README.md
stow --no-folding keepass
brew install keepassxc
