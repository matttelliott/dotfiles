#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install zellij
stow zellij
cat zellij/README.md
