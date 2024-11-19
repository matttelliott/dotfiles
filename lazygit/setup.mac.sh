#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lazygit/README.md
brew install lazygit || true
stow --no-folding lazygit
