#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat bin/README.md
stow --no-folding bin
