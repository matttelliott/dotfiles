#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat neofetch/README.md
stow --no-folding neofetch
brew install neofetch
