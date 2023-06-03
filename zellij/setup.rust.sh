#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat zellij/README.md
cargo install zellij
stow zellij
