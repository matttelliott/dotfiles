#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat shfmt/README.md
stow --no-folding shfmt
brew install shfmt
