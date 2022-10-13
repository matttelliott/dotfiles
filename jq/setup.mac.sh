#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat jq/README.md
stow jq
brew install jq
