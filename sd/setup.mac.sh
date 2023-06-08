#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat fd/README.md
stow --no-folding fd
brew install fd
