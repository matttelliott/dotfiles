#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat opera/README.md
brew install opera
stow --no-folding opera
