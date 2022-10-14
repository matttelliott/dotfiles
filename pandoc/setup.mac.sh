#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat pandoc/README.md
stow pandoc
brew install pandoc
