#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat virtualbox/README.md
brew install virtualbox
stow --no-folding virtualbox
