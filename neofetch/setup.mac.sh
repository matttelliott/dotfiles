#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat neofetch/README.md
brew install neofetch || true
stow --no-folding neofetch
