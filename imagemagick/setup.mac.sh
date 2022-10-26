#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat imagemagick/README.md
stow imagemagick
brew install imagemagick
