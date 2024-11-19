#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat shfmt/README.md
stow --no-folding shfmt
brew install shfmt
