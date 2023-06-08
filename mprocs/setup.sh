#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install mprocs
stow --no-folding mprocs
