#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lazygit/README.md
stow --no-folding lazygit
brew install lazygit
exit 0
