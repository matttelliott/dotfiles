#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat jq/README.md
brew install jq
stow --no-folding jq
