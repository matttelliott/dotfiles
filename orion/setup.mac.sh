#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat orion/README.md
brew install orion
stow --no-folding orion
