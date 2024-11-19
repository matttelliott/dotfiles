#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat zoxide/README.md
brew install zoxide || true
stow --no-folding zoxide
