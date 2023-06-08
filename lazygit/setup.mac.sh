#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lazygit/README.md
stow --no-folding lazygit
brew install lazygit
