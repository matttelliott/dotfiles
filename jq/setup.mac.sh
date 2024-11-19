#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat jq/README.md
stow --no-folding jq
brew install jq
exit 0
