#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat aws/README.md
stow aws
brew install awscli
