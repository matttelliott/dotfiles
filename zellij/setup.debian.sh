#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install zellij
stow zellij
bat zellij/README.md
