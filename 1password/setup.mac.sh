#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat 1password/README.md
stow --no-folding 1password
brew install 1password
