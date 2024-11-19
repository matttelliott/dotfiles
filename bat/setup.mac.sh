#!/usr/bin/env bash
cd "$HOME/dotfiles"
brew install bat
alias cat=bat
stow --no-folding bat
exit 0
