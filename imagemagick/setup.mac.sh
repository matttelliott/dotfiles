#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat imagemagick/README.md
stow --no-folding imagemagick
brew install imagemagick
