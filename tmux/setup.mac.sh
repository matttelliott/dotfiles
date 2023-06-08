#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat tmux/README.md
stow --no-folding tmux
brew install tmux
