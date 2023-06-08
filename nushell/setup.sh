#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install nu
stow --no-folding nushell
