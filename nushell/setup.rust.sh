#!/usr/bin/env bash
cat nushell/README.md
cd "$HOME/dotfiles"
cargo install nu
stow nushell
