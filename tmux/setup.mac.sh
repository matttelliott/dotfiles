#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat tmux/README.md
brew install tmux || true
stow --no-folding tmux
