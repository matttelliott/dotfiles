#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vagrant/README.md
brew install vagrant
stow --no-folding vagrant
exit 0
