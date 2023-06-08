#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat wget/README.md
stow --no-folding wget
brew install wget
