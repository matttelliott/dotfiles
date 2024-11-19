#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat opera/README.md
stow --no-folding opera
brew install opera
