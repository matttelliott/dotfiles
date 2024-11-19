#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vivaldi/README.md
stow --no-folding vivaldi
brew install vivaldi
