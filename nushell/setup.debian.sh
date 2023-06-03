#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install --git https://github.com/nushell/nushell nu
stow nushell
cat nushell/README.md
