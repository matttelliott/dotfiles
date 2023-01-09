#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat keepass/README.md
stow keepass
brew install keepassxc
