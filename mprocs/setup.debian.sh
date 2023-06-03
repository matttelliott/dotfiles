#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install mprocs
stow mprocs
cat mprocs/README.md
