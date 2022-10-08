#!/usr/bin/env bash
echo "********************Setup jq********************"
cd "$HOME/dotfiles"
stow jq
brew install jq
