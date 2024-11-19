#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat neofetch/README.md
stow --no-folding neofetch
brew install neofetch
exit 0
