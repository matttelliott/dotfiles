#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install bat || true
alias cat=bat
stow --no-folding bat
