#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install gitui
stow --no-folding gitui
