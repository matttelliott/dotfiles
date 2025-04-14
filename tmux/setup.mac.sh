#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat tmux/README.md
brew install tmux
stow --no-folding tmux
