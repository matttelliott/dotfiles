#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat imagemagick/README.md
brew install imagemagick || true
stow --no-folding imagemagick
