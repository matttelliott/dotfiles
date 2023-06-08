#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat exa/README.md
stow --no-folding exa
brew install exa
