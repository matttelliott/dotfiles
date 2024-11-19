#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat opera/README.md
brew install opera || true
stow --no-folding opera
