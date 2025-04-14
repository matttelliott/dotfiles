#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat neofetch/README.md
brew install neofetch
stow --no-folding neofetch
