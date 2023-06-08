#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat vim/README.md
stow --no-folding vim
brew install vim


