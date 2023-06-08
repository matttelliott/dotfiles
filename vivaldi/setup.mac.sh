#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat vivaldi/README.md
stow --no-folding vivaldi
brew install vivaldi
