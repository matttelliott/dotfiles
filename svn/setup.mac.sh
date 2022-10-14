#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat svn/README.md
stow svn
brew install svn
