#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat 1password/README.md
brew install 1password || true
stow --no-folding 1password
