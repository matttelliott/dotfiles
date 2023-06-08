#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat opera/README.md
stow --no-folding opera
brew install opera
