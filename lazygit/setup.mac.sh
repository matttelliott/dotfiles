#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lazygit/README.md
brew install lazygit
stow --no-folding lazygit
