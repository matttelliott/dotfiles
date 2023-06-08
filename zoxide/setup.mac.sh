#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat zoxide/README.md
stow --no-folding zoxide
brew install zoxide
