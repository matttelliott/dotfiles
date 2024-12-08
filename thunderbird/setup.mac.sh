#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat thunderbird/README.md
brew install thunderbird || true
stow --no-folding thunderbird
