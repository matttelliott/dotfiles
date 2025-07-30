#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat ast-grep/README.md
brew install ast-grep
stow --no-folding ast-grep
