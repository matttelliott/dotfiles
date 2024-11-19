#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat jq/README.md
brew install jq || true
stow --no-folding jq
