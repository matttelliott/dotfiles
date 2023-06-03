#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat gitui/README.md
stow gitui
cargo install gitui
