#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat utm/README.md
brew install utm
stow --no-folding utm
