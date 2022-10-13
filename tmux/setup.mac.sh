#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Tmux********************"
bat tmux/README.md
stow tmux
brew install tmux
