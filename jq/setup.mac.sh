#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup jq********************"
bat jq/README.md
stow jq
brew install jq
