#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat imagemagick/README.md
brew install imagemagick
stow --no-folding imagemagick
