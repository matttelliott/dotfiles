#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat fd/README.md
brew install fd
stow --no-folding fd
exit 0
