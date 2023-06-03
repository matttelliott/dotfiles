#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat nushell/README.md
cargo install nu
stow nushell
