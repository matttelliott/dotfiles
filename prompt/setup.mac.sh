#!/usr/bin/env bash cd "$HOME/dotfiles"
cat prompt/README.md
brew install starship || true
stow --no-folding prompt
