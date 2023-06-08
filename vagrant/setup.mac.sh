#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat vagrant/README.md
brew install vagrant
stow --no-folding vagrant
