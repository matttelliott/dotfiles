#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ripgrep/README.md
brew install ripgrep
stow --no-folding ripgrep
exit 0
