#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vivaldi/README.md
brew install vivaldi || true
stow --no-folding vivaldi
