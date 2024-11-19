#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat tmux/README.md
stow --no-folding tmux
brew install tmux || true
