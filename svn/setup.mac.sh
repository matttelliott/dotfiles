#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat svn/README.md
brew install svn || true
stow --no-folding svn
