#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat jq/README.md
stow --no-folding jq
brew install jq
