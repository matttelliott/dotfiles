#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat imagemagick/README.md
stow --no-folding imagemagick
brew install imagemagick
