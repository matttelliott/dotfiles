#!/usr/bin/env bash
cat mprocs/README.md
cd "$HOME/dotfiles"
cargo install mprocs
stow mprocs
