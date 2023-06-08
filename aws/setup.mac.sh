#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat aws/README.md
stow --no-folding aws
brew install awscli
