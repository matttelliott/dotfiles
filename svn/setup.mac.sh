#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat svn/README.md
stow --no-folding svn
brew install svn
exit 0
