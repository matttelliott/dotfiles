#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fd/README.md
brew install fd || true
stow --no-folding fd
