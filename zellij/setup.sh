#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install zellij
stow --no-folding zellij
