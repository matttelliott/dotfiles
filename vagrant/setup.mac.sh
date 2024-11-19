#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vagrant/README.md
brew install vagrant || true
stow --no-folding vagrant
